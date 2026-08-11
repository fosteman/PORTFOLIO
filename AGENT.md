# OSD Portfolio Agent Guide

This directory documents a 6-month home-lab portfolio strategy for subsea robotics.

The ultimate goal is to help you land a job.

The way to get there is not to build a large demo. The way to get there is to produce a small set of repos that look like real field work: sensor integration, mission execution, data processing, reliability, and deployment discipline.

## Source Of Truth

- [plan.md](./plan.md) is the current portfolio plan.
- The target job signals are:
  - `ROV Junior / Assistant Technician`
  - `Hydrographic Survey Technician / Data Processor`
  - `AUV Field Operations Specialist`
  - `Marine Robotics Deployment & Integration Specialist`
  - `Offshore Field Engineer (Subsea / Sensing)`

## Portfolio Structure

Use multiple small repos, not one large monorepo.

Recommended repo set:

1. `inspection-stack`
   - BlueROV2 or bench-based camera + light + depth workflow
   - ROS 2 bringup, telemetry, logging, replay
   - Best signal for ROV technician and field-engineering work

2. `sonar-survey-demo`
   - Ping360 integration, sonar replay, map/occupancy export
   - Best signal for hydrographic survey and data processing work

3. `navigation-rig`
   - DVL / IMU / depth fusion, mission execution, station keeping
   - Best signal for AUV field operations work

4. `underwater-perception`
   - Open3D cleanup, underwater image enhancement, reconstruction
   - Best signal for perception and post-processing work

5. `thruster-test-stand`
   - Thruster characterization, control tuning, fault handling
   - Best signal for deployment and integration work

## Deliverable 1: Budget And Purchase Plan

Create a purchase plan that is sorted by value and dependency, not by cost alone.

Recommended structure:

- Phase 1: low-cost, high-signal items
  - camera
  - light
  - Bar30
  - SBC or mini PC
- Phase 2: survey and inspection sensor
  - Ping360
- Phase 3: vehicle platform
  - BlueROV2
- Phase 4: navigation hardware
  - DVL A50
- Phase 5: control test gear
  - T200s, power supply, fixtures, mounts

Rules:

- Keep the first phase runnable without waiting for the expensive items.
- Use each purchase to unlock at least one GitHub case study.
- If a hardware item is expensive, justify it by the job title it supports.

Expected output:

- a month-by-month purchase schedule
- an estimated spend range per phase
- a one-line reason for each purchase
- a dependency note showing what the item unlocks

## Deliverable 2: Repo-By-Repo Execution Checklist

Create a checklist that an engineer could use to build each repo without guessing.

For each repo, include:

- objective
- hardware used
- ROS 2 packages or nodes
- data flow
- startup and shutdown steps
- demo artifact
- failure cases to test
- acceptance criteria

Suggested acceptance criteria:

- fresh clone builds
- Docker starts cleanly
- demo runs without manual tweaking
- logs or bag replay can reproduce the result
- README explains wiring and runtime steps

Suggested milestone order:

1. hardware wiring and bringup
2. ROS 2 integration
3. logging and replay
4. documentation and demo capture
5. reliability hardening
6. final case-study writeup

## Deliverable 3: GitHub Profile Narrative

Write the profile so it reads like a field-robotics engineer, not a generic software engineer.

Use this structure:

- headline: subsea robotics, ROS 2, and field integration
- about section: mention sensor integration, mission execution, and reproducible deployment
- featured repos: show the most relevant repos first
- pinned order:
  1. `inspection-stack`
  2. `sonar-survey-demo`
  3. `navigation-rig`
  4. `underwater-perception`
  5. `thruster-test-stand`

Suggested narrative:

- I build small, reproducible subsea robotics systems.
- I focus on ROS 2 sensor integration, underwater perception, and mission-ready deployment.
- My repos show camera, sonar, DVL, and control workflows that can be run at home and explained clearly in a field context.

Avoid:

- generic full-stack software language
- UI-first framing
- vague "robotics enthusiast" wording
- claiming simulation alone is the core value

## 6-Month Roadmap

### Month 1

Build the inspection stack around camera + light + Bar30.

Target role:
- `ROV Junior / Assistant Technician`

### Month 2

Add replay, logging, and fault handling to the inspection stack.

Target role:
- `ROV Junior / Assistant Technician`
- `Offshore Field Engineer (Subsea / Sensing)`

### Month 3

Build the sonar survey demo around Ping360.

Target role:
- `Hydrographic Survey Technician / Data Processor`

### Month 4

Turn sonar output into a cleaned, documented processing pipeline.

Target role:
- `Hydrographic Survey Technician / Data Processor`

### Month 5

Build the navigation rig around DVL / IMU / depth fusion.

Target role:
- `AUV Field Operations Specialist`

### Month 6

Wrap everything into a deployment and integration capstone.

Target role:
- `Marine Robotics Deployment & Integration Specialist`
- `Offshore Field Engineer (Subsea / Sensing)`

## Writing Rules

- Keep each repo small and demonstrable.
- Show one clear workflow per repo.
- Prefer reproducibility over breadth.
- Treat documentation as part of the project, not an afterthought.
- Every repo should answer: what hardware, what software, what problem, what proof?

## Final Quality Bar

A strong portfolio from this plan should let a reviewer see:

- you can integrate field hardware
- you can ship a ROS 2 package cleanly
- you can process sensor data into a usable output
- you can document and troubleshoot like someone who belongs in the field
- you are credible for the job titles you are targeting, not just technically capable in isolation
