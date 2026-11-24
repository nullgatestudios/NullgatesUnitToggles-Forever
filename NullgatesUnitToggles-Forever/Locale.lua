--[[
    Nullgate's Unit Toggles - Locale.lua
    Text lookup: every user-facing string goes through BUT.L["English text"]. Each language pack in
    Locales\<code>.lua registers a table keyed by the English text. The game client's language picks
    the pack (Mexican Spanish uses Spanish, British English uses English); a missing key falls back
    to English.
]]

local _, BUT = ...

local packs = {}
local active

BUT.LANGUAGES = { "enUS" }

function BUT.RegisterLanguagePack(code, name, strings)
    if not packs[code] then BUT.LANGUAGES[#BUT.LANGUAGES + 1] = code end
    packs[code] = strings
end

local function Active()
    if not active then
        local locale = (GetLocale and GetLocale()) or "enUS"
        if locale == "esMX" then locale = "esES" end
        active = packs[locale] or {}
    end
    return active
end

BUT.L = setmetatable({}, {
    __index = function(_, key)
        local value = Active()[key]
        if type(value) ~= "string" or value == "" then return key end
        return value
    end,
})
