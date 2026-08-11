# Devcontainer Notes

This setup uses the public ROS 2 Humble image and keeps credentials out of the image and repo.

```
apt-get update && apt-get install -y \
ros-jazzy-ros-gz \
ros-jazzy-ardupilot-gazebo \
python3-colcon-common-extensions \
git
```

If you need Git access to private remotes from inside the container, use one of these host-side approaches:

- forward your SSH agent into the container
- mount your existing `~/.gitconfig`
- rely on the host credential helper rather than hardcoding tokens

This devcontainer is set up to do the first two automatically on macOS:

- `SSH_AUTH_SOCK` is forwarded into the container
- your host `~/.gitconfig` is mounted at `/root/.gitconfig`

Before opening the container, make sure your Mac has an SSH key loaded into the agent and that GitHub or your Git host trusts that key.

Do not store personal access tokens or passwords in this repository.
