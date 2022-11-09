# Set default values
set -q COLCON_ABBR_USE_SYMLINK || set -U COLCON_ABBR_USE_SYMLINK true
set -q COLCON_ABBR_CMAKE_ARGS || set -U COLCON_ABBR_CMAKE_ARGS "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
set -q COLCON_ABBR_TEST_OPTIONS || set -U COLCON_ABBR_TEST_OPTIONS "--event-handlers console_cohesion+"

# Register abbreviations
colcon_abbr_register

