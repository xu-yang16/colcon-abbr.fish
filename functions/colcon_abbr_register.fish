function colcon_abbr_register
    register_colcon_build
    register_colcon_test
end

function register_colcon_build
    $COLCON_ABBR_USE_SYMLINK && set symlink " --symlink-install" || set symlink ""
    set -q COLCON_ABBR_ADDITIONAL_OPTIONS && set additional_options " $COLCON_ABBR_ADDITIONAL_OPTIONS" || set additional_options ""
    set -q COLCON_ABBR_CMAKE_ARGS && set cmake_args " $COLCON_ABBR_CMAKE_ARGS" || set cmake_args ""

    set -l cb "colcon build"

    # colcon build
    abbr -a cb "$cb"

    # colcon build --packages-select
    abbr -a cbps "$cb --packages-select"

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
end

function register_colcon_test
    set -q COLCON_ABBR_TEST_OPTIONS && set test_options " $COLCON_ABBR_TEST_OPTIONS" || set test_options ""

    set -l ct "colcon test$test_options"

    abbr -a ct "$ct"
    abbr -a ctp "$ct --packages-up-to"
    abbr -a ctps "$ct --packages-select"
end
