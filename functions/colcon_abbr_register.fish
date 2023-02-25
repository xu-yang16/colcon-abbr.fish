function colcon_abbr_register
    register_colcon_build
end

function register_colcon_build
    # $COLCON_ABBR_USE_SYMLINK && set symlink " --symlink-install" || set symlink ""
    # set -q COLCON_ABBR_ADDITIONAL_OPTIONS && set additional_options " $COLCON_ABBR_ADDITIONAL_OPTIONS" || set additional_options ""
    # set -q COLCON_ABBR_CMAKE_ARGS && set cmake_args " $COLCON_ABBR_CMAKE_ARGS" || set cmake_args ""
    
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
    abbr -a bs1 "bass source /opt/ros/noetic/setup.bash"
    abbr -a bs2 "bass source /opt/ros/foxy/setup.bash"
    
    # git operation
    abbr -a ga "git add"
    abbr -a gaa "git add ."
    abbr -a gc "git commit -m"

    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'build' -d "Changes that affect the build system or \r\ntexternal dependencies (example scopes: gulp, broccoli, npm)"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'ci' -d "Changes to our CI configuration files and scripts (example scopes: Circle, BrowserStack, SauceLabs)"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'docs' -d "Documentation only changes"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'feat' -d "A new feature"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'fix' -d "A bug fix"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'perf' -d "A code change that improves performance"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'refactor' -d "A code change that neither fixes a bug nor adds a feature"
    complete -k -f -c git -n '__fish_seen_subcommand_from commit; and __fish_seen_argument -s m -l message' -a 'test' -d "Adding missing tests or correcting existing tests"
    
    abbr -a gp "git push"
    abbr -a gs "git status"
    abbr -a gpl "git pull"
    abbr -a grth "git reset --hard"
    
    # sudo apt 
    abbr -a sap "sudo apt update"
    abbr -a sag "sudo apt upgrade"
    abbr -a sai "sudo apt install"
    abbr -a saa "sudo apt autoremove"
    
end
