# Changelog

## [1.1.2] - 2026-11-24

### New

- **New `/nut check` command.** It runs a short self test of the addon in this client and opens a bug report window with the results.
- Press Ctrl+C to copy the report, then paste it into the report form at nullgatestudios.com/report?addon=unit-toggles, which opens with this addon already picked. You can report without an account.
- Every Nullgate addon now uses the same report window.
- **9 more languages:** Deutsch, Español, Français, Italiano, Português do Brasil, Русский, 한국어, 简体中文 and 繁體中文. The addon uses your game's language automatically, and Mexican Spanish clients get Spanish.
- Preset buttons now grow to fit their text, so **Blizzard Defaults** is no longer shortened.

### Good to know

- The game doesn't let addons open a web browser, so type or copy the link into your browser yourself. The **Select link** button selects it for copying.

## [1.1.1] - 2026-11-20

### Fixed
- `/nut help` now says there are 20 toggles to list, not 19.

### Changed
- Rewritten description: clearer wording, the current `/nut` commands, and a PvP preset description that matches what it actually does.

## [1.1.0] - 2026-10-23: Bleakfiber's Unit Toggles is now Nullgate's Unit Toggles

### Changed
- **New name**: Bleakfiber's Unit Toggles is now **Nullgate's Unit Toggles**, from **Nullgate Studios**. It is the same addon on the same CurseForge page.
- **A fresh start for the WoW Forever launch**: the addon now lives in the `NullgatesUnitToggles-Forever` folder. Settings from the beta are not carried over, so set the addon up again.
- **Remove the old version**: if you copied your old `Interface` folder over, delete the `BleakfibersUnitToggles-Forever` folder from `Interface\AddOns`. If the old version is still installed, a message offers to disable it.
- **New slash commands**: `/nut` (or `/unittoggles`) opens the settings. The old `/but` and `/bleakunit` commands no longer exist, so please update any macros that use them.

## [1.0.6] - 2026-10-08

### Changed
- Maintenance and update.

## [1.0.5] - 2026-10-08

### Changed
- Non-destructive profile synchronization with BleakfibersAddonConfig: capture current settings on new profile and never overwrite existing profiles.

All notable changes to Bleakfiber's Unit Toggles will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.04] - 2026-10-08

### Added
- **20-CVar Expansion**: Added `UnitNameEnemyGuardianName` and `UnitNamePlayerPVPTitle` to complete the full native unit overhead management catalog.
- **Blizzard Engine Default Alignment**: Updated default settings to strictly match official World of Warcraft defaults (16 active / 4 suppressed by default).
- **Balanced 10/10 Column Layout**: Reorganized UI into perfectly balanced columns (10 checkboxes under Friendly Units & World on the left; 10 checkboxes under Enemy Units & Titles on the right).
- **CurseForge Documentation**: Created `DESCRIPTION.md` with complete catalog documentation, presets, and slash commands.

## [1.0.03] - 2026-10-07

### Fixed
- **Standalone Window Drag Error**: Resolved `Frame:StartMoving(): Frame is not movable` error by wrapping `StartMoving` and `StopMovingOrSizing` in proper closure callbacks on the title bar drag handle so the movable parent window is passed as `self`.

## [1.0.02] - 2026-10-07

### Added
- **Real-Time Toggle Status Readout**: Added a live feedback indicator directly underneath the preset toolbar displaying the active count of enabled CVars (e.g., `Active: 12 / 19 toggles enabled`).
- **Dynamic Preset Feedback Badges**: Presets now provide instant color-coded visual confirmation when activated:
  - `Preset: All Enabled (19/19)` (Green)
  - `Preset: All Disabled (0/19)` (Red)
  - `Preset: PvP Configuration Applied` (Gold)
  - `Preset: Blizzard Defaults Restored` (Blue)
  - `Synchronized with live game engine` (Gold)

### Fixed
- **Instant Checkbox Synchronization**: Fixed an issue where clicking presets or switching tabs did not update checkbox checkmarks when embedded inside `BleakfibersAddonConfig-Forever`.
- **Direct Checkbox Registration**: Checkbox frame references are now persistently indexed in `UI.checkboxes`, allowing instantaneous visual updates on all 19 toggles simultaneously.
- **Live Counter Updates**: Toggling any individual CVar checkbox now dynamically updates the active enabled count in real time.

## [1.0.01] - 2026-10-07

### Added
- Initial release of Bleakfiber's Unit Toggles for World of Warcraft Forever (Interface 16001).
- Native management of all 19 unit overhead name and title CVars:
  - Friendly Players, Pets, Minions, Guardians, Totems, and Special NPCs.
  - Enemy Players, Pets, Minions, Totems, and Hostile NPCs.
  - All NPCs, Interactive NPCs, and Critters/Companions.
  - Player Name, Guild Names, Guild Titles, Focused Target Name, and Minor Unit suppression.
- Standalone Dark Slate & Gold UI window (`#141A21` / `#D1AE47`).
- Seamless integration with Bleakfiber's Master Addon Hub (`BleakfibersAddonConfig-Forever`).
- Profile synchronization and local profile storage (`Default`, custom profiles, clone, copy, reset).
- Slash commands `/but`, `/unittoggles`, `/bleakunit` with live status reporting and quick toggles.
- Preset actions: Enable All, Disable All, PvP Preset, and Blizzard Defaults.
