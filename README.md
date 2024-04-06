# Path of Exile AutoHotkey Script

This AutoHotkey script is designed to automate certain actions in the game Path of Exile.

## Features
- **Macro Toggling:** Pressing Shift + `/` toggles the macro on or off. When the macro is active, a tooltip displays "Macro ON"; otherwise, it displays "Macro OFF".
- **Hotkey for Exiting:** Pressing `F7` exits the script, terminating the macro and script execution.
- **Dynamic Behavior:** The script allows for dynamic control using the `breakFlag` variable, which enables immediate termination of the macro when triggered.
- **Configurable Parameters:** Screen coordinates, sleep delay, and other parameters can be adjusted based on user preferences or specific game requirements.

## Usage
1. Ensure that AutoHotkey is installed on your system.
2. Copy the script into a new text file and save it with a `.ahk` extension.
3. Double-click the `.ahk` file to run the script.
4. Launch Path of Exile.
5. Press Shift + `/` to toggle the macro on or off. When the macro is active, the tooltip displays "Macro ON"; otherwise, it displays "Macro OFF".
6. Press Shift + F12 to activate the macro.
7. Press `F7` to exit the script and terminate the macro.

## Script Details
- **BreakFlag:** The `breakFlag` variable allows for immediate termination of the macro when set to true.
- **Tooltip:** A tooltip is displayed to indicate the current status of the macro (ON or OFF).
- **CtrlClick Function:** The `CtrlClick` function simulates a Ctrl + Click action at specified coordinates.
- **Sleep Delay:** A random sleep delay is introduced to avoid detection and ensure smooth execution.

## Notes
- Make sure to run the script as an administrator to ensure proper functioning, especially if Path of Exile is running with elevated privileges.
- Customize screen coordinates, sleep delay, and other parameters as needed for your specific game setup.
- Use the macro responsibly and in accordance with the game's terms of service to avoid potential penalties or bans.

