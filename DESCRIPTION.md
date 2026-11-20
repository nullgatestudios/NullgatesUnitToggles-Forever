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
| `/nut <setting> [on\|off]` | Turn one toggle on or off, for example `/nut UnitNameEnemyTotemName on`. Leave out `on`/`off` to flip it. |

---

## Installation

1. Download the latest release.
2. Extract the `NullgatesUnitToggles-Forever` folder into the `Interface\AddOns` folder of your World of Warcraft: Forever installation.
3. Log in and type `/nut`.

---

## Part of the Nullgate Addon Suite

- **Nullgate's Addon Config**: one settings hub and profile manager for the whole suite.
- **Nullgate's Action Bars**: a standalone action bar addon.
- **Nullgate's Bags**: all-in-one bags and bank.
- **Nullgate's Chat**: a lightweight chat upgrade.
- **Nullgate's Maps**: minimap and world map improvements.
- **Nullgate's Quest Tracker**: a standalone quest tracker with Wayfinder navigation.
- **Nullgate's Blacklist**: a personal blocklist with optional community reports.
- **Nullgate's Unit Toggles**: overhead names and titles, made simple.
