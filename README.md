# Nullgate's Unit Toggles - Forever

[![Interface](https://img.shields.io/badge/Interface-16001%20(WoW%20Forever)-0078D7.svg?style=flat-square)](https://github.com/nullgatestudios/NullgatesUnitToggles-Forever)
[![Release](https://img.shields.io/badge/Release-v1.1.1-ffd100.svg?style=flat-square)](https://github.com/nullgatestudios/NullgatesUnitToggles-Forever/releases)
[![License](https://img.shields.io/badge/License-Source--Available-crimson.svg?style=flat-square)](LICENSE.md)
[![Dependencies](https://img.shields.io/badge/Dependencies-None-2ea44f.svg?style=flat-square)](https://github.com/nullgatestudios/NullgatesUnitToggles-Forever)

**Nullgate's Unit Toggles** puts every overhead name and title setting in **World of Warcraft: Forever** into one simple window, so you can declutter your screen without typing `/console` commands or digging through the game's menus.

Turn names on or off for players, pets, minions, guardians, totems, NPCs, critters, guild names and titles: 20 toggles in all, with one-click presets for the common setups.

Works on its own with **no other addons or libraries needed**, and appears inside **Nullgate's Addon Config** automatically when you have it installed.

---

## Key Highlights

- **20 Toggles in One Place**: Separate switches for friendly and enemy players, pets, minions, guardians and totems, plus NPCs, critters, your own name, guild names, guild titles, PvP titles and minor mobs.
- **One-Click Presets**:
  - **Enable All**: every name and title on (20/20).
  - **Disable All**: every name off, for a clean screen (0/20).
  - **PvP Preset**: names for enemy players and their pets, minions, guardians and totems, hostile NPCs, friendly players and key friendly NPCs. Ambient names, titles and friendly pets are turned off.
  - **Blizzard Def**: back to the game's own defaults (16/20).
  - **Sync Live**: saves whatever the game is using right now into your profile.
- **Always in Sync**: change a setting through chat or the game's own options and the addon picks it up straight away, including an open window.
- **Live Count**: the window shows how many toggles are on, for example `Active: 16 / 20 toggles enabled`.
- **Profiles**: keep different setups and switch between them.
- **Blizzard Defaults Built In**: every toggle knows the game's default, so resetting is one click.

---

## All 20 Toggles

### Friendly Units
| Toggle | Game Setting | Default | Shows names for |
| :--- | :--- | :---: | :--- |
| **Friendly Players** | `UnitNameFriendlyPlayerName` | On | Friendly player characters |
| **Friendly Pets** | `UnitNameFriendlyPetName` | On | Friendly players' pets |
| **Friendly Minions** | `UnitNameFriendlyMinionName` | On | Friendly summoned minions |
| **Friendly Guardians** | `UnitNameFriendlyGuardianName` | On | Friendly guardians |
| **Friendly Totems** | `UnitNameFriendlyTotemName` | On | Friendly totems |
| **Friendly Special NPCs** | `UnitNameFriendlySpecialNPCName` | On | Quest givers, vendors, flight masters and other key NPCs |

### NPCs & World
| Toggle | Game Setting | Default | Shows names for |
| :--- | :--- | :---: | :--- |
| **My Own Name** | `UnitNameOwn` | Off | Your own character |
| **All NPCs** | `UnitNameNPC` | Off | Every neutral and friendly NPC |
| **Interactive NPCs** | `UnitNameInteractiveNPC` | On | Bankers, flight masters and other NPCs you can talk to |
| **Critters & Companions** | `UnitNameNonCombatCreatureName` | Off | Critters and non-combat pets |

### Enemy Units
| Toggle | Game Setting | Default | Shows names for |
| :--- | :--- | :---: | :--- |
| **Enemy Players** | `UnitNameEnemyPlayerName` | On | Enemy players |
| **Enemy Pets** | `UnitNameEnemyPetName` | On | Enemy pets |
| **Enemy Minions** | `UnitNameEnemyMinionName` | On | Enemy summoned minions |
| **Enemy Guardians** | `UnitNameEnemyGuardianName` | On | Enemy guardians |
| **Enemy Totems** | `UnitNameEnemyTotemName` | On | Enemy totems |
| **Hostile NPCs** | `UnitNameHostleNPC` | On | Hostile monsters and NPCs |

### Guild & Titles
| Toggle | Game Setting | Default | Shows |
| :--- | :--- | :---: | :--- |
| **Player Guild Names** | `UnitNamePlayerGuild` | On | Guild names under player names |
| **Player Guild Titles** | `UnitNameGuildTitle` | On | Guild ranks and titles |
| **Player PvP Titles** | `UnitNamePlayerPVPTitle` | On | PvP titles and ranks |
| **Force Hide Minor Units** | `UnitNameForceHideMinus` | Off | Hides names of minor and trivial mobs when on |

---

## Slash Commands

| Command | Action |
| :--- | :--- |
| `/nut` or `/unittoggles` | Open the settings (inside Nullgate's Addon Config if installed, otherwise its own window). |
| `/nut standalone` | Open its own window, even with Nullgate's Addon Config installed. |
| `/nut list` (or `/nut status`) | Show every toggle and whether it's on, in chat. |
| `/nut all on` / `/nut all off` | Turn every toggle on or off. |
| `/nut pvp` | Apply the PvP preset. |
| `/nut reset` | Reset your current profile to the defaults. |
| `/nut check` | Test the addon in this client and open a bug report window to copy into the report form at nullgatestudios.com/report. |
| `/nut <setting> [on\|off]` | Turn one toggle on or off, for example `/nut UnitNameEnemyTotemName on`. Leave out `on`/`off` to flip it. |

---

---

## Files

```
NullgatesUnitToggles-Forever/
├── NullgatesUnitToggles-Forever.toc   # Addon metadata and SavedVariables (NullgatesUnitTogglesDB)
├── Config.lua                         # The 20 settings, presets, profiles, slash commands, Addon Config registration
├── Core.lua                           # Applies settings and listens for changes made elsewhere
└── UI.lua                             # The settings window and preset buttons
```

No third-party libraries are bundled.

---

## Installation

1. Download the latest release from CurseForge or the [GitHub releases](https://github.com/nullgatestudios/NullgatesUnitToggles-Forever/releases) page.
2. Extract the `NullgatesUnitToggles-Forever` folder into the `Interface\AddOns` folder of your World of Warcraft: Forever installation.
3. Log in and type `/nut`.

---

## License & Support

- **License**: Restricted - Source-Available (All Rights Reserved, No Derivatives). See [LICENSE.md](LICENSE.md) for the full terms.
- **Issues & feedback**: open an issue on the [GitHub issue tracker](https://github.com/nullgatestudios/NullgatesUnitToggles-Forever/issues).
- **Author**: Nullgate Studios
