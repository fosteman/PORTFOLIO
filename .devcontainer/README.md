# Devcontainer Notes

This setup uses the public ROS 2 Humble image and keeps credentials out of the image and repo.

If you need Git access to private remotes from inside the container, use one of these host-side approaches:

- forward your SSH agent into the container
- mount your existing `~/.gitconfig`
- rely on the host credential helper rather than hardcoding tokens

Do not store personal access tokens or passwords in this repository.
