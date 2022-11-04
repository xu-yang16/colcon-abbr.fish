# colcon-abbr.fish

colcon abbreviations for fish-shell

## Installation
### Install [argcomplete]((https://github.com/kislyuk/argcomplete))

```sh
pip3 install argcomplete
activate-global-python-argcomplete
```
### Using fisher (recommended)

```sh
fisher install xu-yang16/colcon-abbr.fish
```

## Usage

This plugin registers fish abbreviations related to colcon. For example,

```sh
# Input
$ cbps<Space>

# Expanded Result
$ colcon build --packages-select
```

## Tips

### Adding options

If you'd like to add options, please define `$COLCON_ABBR_ADDITIONAL_OPTIONS`.

```sh
set -U COLCON_ABBR_ADDITIONAL_OPTIONS "--catkin-skip-building-tests"
```

### Unregister abbreviations

If you'd like to unregister all abbreviations, please use `colcon_abbr_unregister`.  
As it just deletes all abbreviations starting from `cb`, you can manually remove registered abbreviations if you mind that deleting unrelated ones.

```sh
$ colcon_abbr_unregister
[colcon-abbr] unregister cb
$ fisher add xu-yang16/colcon-abbr.fish
```
