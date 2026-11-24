--[[
    Nullgate's Unit Toggles - Check.lua
    /nut check: a short self test. Its report opens in the report window every Nullgate addon
    shares (NullgateReport.lua), ready to copy and paste into the report form on our website.
]]

local _, BUT = ...

local Check = {}
BUT.Check = Check

local SLUG = "unit-toggles"
local log = {}

local function Log(text)
    log[#log + 1] = tostring(text)
    if NullgateReport then NullgateReport.Update(SLUG) end
end

function Check.ShowReport()
    return NullgateReport.Show({
        slug = SLUG, name = "Nullgate's Unit Toggles", addon = "NullgatesUnitToggles-Forever", command = "/nut check",
        lines = log,
        title = "Bug report", selectAll = "Select all", selectLink = "Select link",
        help = "Press Ctrl+C to copy this report, then paste it into a new report at the link below, with a few words on what happened.",
    })
end

function Check.Run()
    for i = #log, 1, -1 do log[i] = nil end
    local client, build, _, interface = "?", "?", nil, "?"
    if GetBuildInfo then client, build, _, interface = GetBuildInfo() end
    Log(string.format("client %s, build %s, interface %s", tostring(client), tostring(build), tostring(interface)))

    local Config = BUT.Config
    local ok, profile = pcall(Config.GetActiveProfile, Config)
    Log("profile " .. tostring(ok and profile or "?"))

    -- Each managed CVar: what the game reports (missing if the client doesn't have it) and what the addon sees.
    local raw = (C_CVar and C_CVar.GetCVar) or GetCVar
    for _, def in ipairs(Config.CVAR_DEFINITIONS) do
        local okRaw, value = pcall(raw, def.cvar)
        local okSeen, seen = pcall(Config.GetCVar, Config, def.cvar)
        Log(string.format("%s: game %s, addon %s", def.cvar, okRaw and value ~= nil and tostring(value) or "missing",
            okSeen and tostring(seen) or "error"))
    end
    Check.ShowReport()
end
