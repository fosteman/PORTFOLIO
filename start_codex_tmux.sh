#!/usr/bin/env bash
set -euo pipefail

WORKDIR="${CODEX_WORKDIR:-/home/tim/WebstormProjects/osd}"
SESSION="${CODEX_TMUX_SESSION:-codex}"
WINDOW="${CODEX_TMUX_WINDOW:-codex}"

MODEL="${CODEX_MODEL:-gpt-5.4-mini}"
SANDBOX_MODE="${CODEX_SANDBOX_MODE:-danger-full-access}"
APPROVAL_POLICY="${CODEX_APPROVAL_POLICY:-never}"
ENABLE_SEARCH="${CODEX_ENABLE_SEARCH:-0}"
BYPASS_SANDBOX_AND_APPROVALS="${CODEX_BYPASS_SANDBOX_AND_APPROVALS:-1}"

if ! command -v tmux >/dev/null 2>&1; then
  echo "tmux not found (install tmux first)." >&2
  exit 127
fi

if ! command -v codex >/dev/null 2>&1; then
  echo "codex not found in PATH." >&2
  exit 127
fi

codex_cmd=(codex -C "$WORKDIR" -m "$MODEL")
if [[ "$ENABLE_SEARCH" == "1" ]]; then
  codex_cmd+=(--search)
fi
if [[ "$BYPASS_SANDBOX_AND_APPROVALS" == "1" ]]; then
  codex_cmd+=(--dangerously-bypass-approvals-and-sandbox)
else
  codex_cmd+=(-s "$SANDBOX_MODE" -a "$APPROVAL_POLICY")
fi

window_exists() {
  tmux list-windows -t "$SESSION" -F '#{window_name}' 2>/dev/null | grep -Fxq "$WINDOW"
}

pane_running_codex() {
  [[ "$(tmux display-message -p -t "$SESSION:$WINDOW".0 '#{pane_current_command}' 2>/dev/null || true)" == "codex" ]]
}

if tmux has-session -t "$SESSION" 2>/dev/null; then
  if ! window_exists; then
    tmux new-window -t "$SESSION" -n "$WINDOW" -c "$WORKDIR"
  fi

  if ! pane_running_codex; then
    tmux send-keys -t "$SESSION:$WINDOW".0 "cd \"$WORKDIR\" && ${codex_cmd[*]}" C-m
  fi
else
  tmux new-session -d -s "$SESSION" -n "$WINDOW" -c "$WORKDIR" "${codex_cmd[@]}"
fi

if [[ -n "${TMUX:-}" ]]; then
  tmux switch-client -t "$SESSION" 2>/dev/null || true
  tmux select-window -t "$SESSION:$WINDOW" 2>/dev/null || true
else
  exec tmux attach -t "$SESSION"
fi
