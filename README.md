# LogiFIX

Simple script that loads the xboxdrv in place of the xpad module. Useful for games ported from Windows onto Linux who require Xinput for their gamepad.

## Requirements
xboxdrv </br>
pkexec

## Usage
Add the following command string to your game's **Steam** launcher:
`<pathtoscript>/logifix.sh start && %command% ; <pathtoscript>/logifix.sh stop`

The script will prompt you to enter your password, which is needed to load the xboxdrv module instead of xpad.
