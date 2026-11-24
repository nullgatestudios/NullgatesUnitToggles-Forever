--[[
    Nullgate's Unit Toggles - Core.lua
    Core Framework: Addon Lifecycle, Engine CVar Synchronization & Event Handling
]]

local addonName, BUT = ...
BUT = BUT or {}
_G["NullgatesUnitToggles"] = BUT
local L = BUT.L

local Core = CreateFrame("Frame", "NullgatesUnitTogglesCore")
BUT.Core = Core
_G["NullgatesUnitTogglesCore"] = Core

local Config = setmetatable({}, {
    __index = function(_, k)
        local c = BUT.Config or _G["NullgatesUnitTogglesConfig"]
        if c then return c[k] end
    end,
})

--[[-----------------------------------------------------------------------------
    CVar Engine Synchronization Methods
-------------------------------------------------------------------------------]]
function Core:ApplyAllCVars()
    if not Config.CVAR_DEFINITIONS then return end
    for _, def in ipairs(Config.CVAR_DEFINITIONS) do
        local val = Config:GetCVar(def.cvar)
        SetCVar(def.cvar, val and "1" or "0")
    end
end

function Core:ApplyCVar(cvar, value)
    if value == nil then
        value = Config:GetCVar(cvar)
    end
    SetCVar(cvar, value and "1" or "0")
end

function Core:SyncFromEngine()
    if not Config.CVAR_DEFINITIONS then return end
    Config:InitDB()
    local cur = NullgatesUnitTogglesDB.profiles[NullgatesUnitTogglesDB.activeProfile]
    if not cur or not cur.cvars then return end

    for _, def in ipairs(Config.CVAR_DEFINITIONS) do
        local engineVal = GetCVarBool(def.cvar)
        if engineVal ~= nil then
            cur.cvars[def.cvar] = engineVal
        end
    end

    if BUT.UI and BUT.UI.Refresh then
        BUT.UI:Refresh()
    end
end

--[[-----------------------------------------------------------------------------
    Event Handling & Lifecycle
-------------------------------------------------------------------------------]]
Core:RegisterEvent("ADDON_LOADED")
Core:RegisterEvent("PLAYER_LOGIN")
Core:RegisterEvent("PLAYER_ENTERING_WORLD")
Core:RegisterEvent("CVAR_UPDATE")

Core:SetScript("OnEvent", function(self, event, arg1, arg2)
    if event == "ADDON_LOADED" then
        if arg1 == addonName then
            Config:InitDB()
        end
    elseif event == "PLAYER_LOGIN" then
        Config:InitDB()
        self:ApplyAllCVars()
    elseif event == "PLAYER_ENTERING_WORLD" then
        self:ApplyAllCVars()
    elseif event == "CVAR_UPDATE" then
        local cvarName = arg1
        if cvarName and Config.CVAR_LOOKUP and Config.CVAR_LOOKUP[cvarName] then
            -- Sync live value to active profile
            local def = Config.CVAR_LOOKUP[cvarName]
            local cur = NullgatesUnitTogglesDB and NullgatesUnitTogglesDB.profiles and NullgatesUnitTogglesDB.profiles[Config:GetActiveProfile()]
            if cur and cur.cvars then
                local engineVal = GetCVarBool(def.cvar)
                if engineVal ~= nil and cur.cvars[def.cvar] ~= engineVal then
                    cur.cvars[def.cvar] = engineVal
                    if BUT.UI and BUT.UI.Refresh then
                        BUT.UI:Refresh()
                    end
                end
            end
        end
    end
end)

-- ---------------------------------------------------------------------------
-- Pre-rebrand version still installed (e.g. a copied Interface folder) would run twice
-- ---------------------------------------------------------------------------
do
    local OLD_ADDON = "BleakfibersUnitToggles-Forever"
    local IsAddOnLoaded = (C_AddOns and C_AddOns.IsAddOnLoaded) or IsAddOnLoaded
    local DisableAddOn = (C_AddOns and C_AddOns.DisableAddOn) or DisableAddOn

    StaticPopupDialogs["NULLGATES_UNITTOGGLES_OLD_ADDON"] = {
        text = L["Bleakfiber's Unit Toggles is now Nullgate's Unit Toggles, and the old version is still installed. Running both loads it twice. Disable the old one now, then delete the BleakfibersUnitToggles-Forever folder from Interface\\AddOns."],
        button1 = L["Disable and Reload"],
        button2 = CANCEL,
        OnAccept = function()
            DisableAddOn(OLD_ADDON)
            ReloadUI()
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    local guard = CreateFrame("Frame")
    guard:RegisterEvent("PLAYER_LOGIN")
    guard:SetScript("OnEvent", function(self)
        self:UnregisterAllEvents()
        C_Timer.After(4, function()
            if IsAddOnLoaded and IsAddOnLoaded(OLD_ADDON) then
                StaticPopup_Show("NULLGATES_UNITTOGGLES_OLD_ADDON")
            end
        end)
    end)
end
