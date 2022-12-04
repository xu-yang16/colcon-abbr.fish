# colcon-abbr.fish

colcon abbreviations for fish-shell

## Installation
### Install [argcomplete]((https://github.com/kislyuk/argcomplete))

### Using omf (recommended)

```sh
# 
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install edc/bass
omf install https://github.com/xu-yang16/colcon-abbr.fish
```

## Usage

This plugin registers fish abbreviations related to colcon. For example,

```sh
# ros2 pkg create
abbr -a rpc_c "ros2 pkg create --build-type ament_cmake" 
abbr -a rpc_p "ros2 pkg create --build-type ament_python"

# colcon build
abbr -a cb "colcon build"

# colcon build --packages-select
abbr -a cbps "colcon build --packages-select"

# ros2 service call
abbr -a rsc "ros2 service call"
# ros2 run
abbr -a rr "ros2 run"
# ros2 topic hz
abbr -a rt_hz "ros2 topic hz"
# launch
abbr -a rl "ros2 launch"
# ros2 version
abbr -a ros_v "printenv ROS_DISTRO"

# clean
abbr -a cc "rm -r build install log"

# source
abbr -a bs "bass source install/setup.sh"

# git operation
abbr -a ga "git add"
abbr -a gaa "git add ."
abbr -a gc "git commit -m ''"
abbr -a gp "git push"
abbr -a gs "git status"
abbr -a gpl "git pull"
abbr -a grth "git reset --hard"

# sudo apt 
abbr -a sap "sudo apt update"
abbr -a sag "sudo apt upgrade"
abbr -a sai "sudo apt install"
abbr -a saa "sudo apt autoremove"
```
