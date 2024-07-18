# Vehicle Max Speed Script for FiveM

This script for FiveM allows you to change the maximum speed limit of vehicles based on a command in the game.

## Features

- **Command to Set Max Speed**: Users can specify a new maximum speed (in km/h) for the vehicle they are in.
- **Automatic Conversion to m/s**: The script converts the specified speed from kilometers per hour to meters per second, as FiveM's `SetVehicleMaxSpeed` function requires speed in meters per second.
- **Error Handling**: Provides appropriate error messages if the user is not in a vehicle or if the specified speed is invalid.
- **Disable cruise control**: It's possible to deactivate cruise control for your vehicle using `/cc 0`.
- **Disable max speed**: Due to the disabling feature some vehicles may be restricted to a specific speed. You can adjust this setting in the configuration under `Config.MaxSpeedWhenDisabled`.

## Installation

1. Download and add the script to your FiveM resources.
2. Add the following line to your `server.cfg` to enable the script:
   `ensure kr_cc`

## Usage

1. Start FiveM and connect to your server.
2. When in a vehicle, type `/cc [speed]` in the chat to set the vehicle's maximum speed.
- Example: `/cc 60` will set the maximum speed to 60 km/h.
3. When wanting to disable use `/cc 0` to disable.

## Notes

- The script utilizes FiveM's native functions to modify vehicle speed properties.
- Customize the configuration (`Config.Messages.success`, `Config.Messages.invalidSpeed`, etc.) to suit your needs and localization requirements.

## GitHub: https://github.com/Krilleren/kr_cc
