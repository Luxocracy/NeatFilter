local MyUnits = {
    player = true,
    vehicle = true,
    pet = true,
}

local SpellList = {}
local PlayerClass = select(2, UnitClass("player"))
local StoredFrames = {}

local copytable         -- Allows self-reference
copytable = function(original)
    local duplicate = {}
    for key, value in pairs(original) do
        if type(value) == "table" then duplicate[key] = copytable(value)
        else duplicate[key] = value end
    end
    return duplicate
end

function table.strsplit(str, regex)
    local match = {}
    for v in string.gmatch(str, regex) do
      tinsert(match, v)
    end
    return match
end

local function NeatFilter_CreateFrame(data, index)
    local spellName, _, spellIcon = GetSpellInfo(data.spellId[1])
    --local frame = CreateFrame("Frame", "NeatFilter_" .. data.unitId .. "_" .. data.spellId[1], UIParent)
    local frame = StoredFrames[index] or CreateFrame("Frame", "NeatFilter_SpellFrame"..index, UIParent)
    local setPoint = copytable(data.setPoint)
    setPoint[2] = _G[setPoint[2]] -- Convert relativeFrame from string to actual data

    frame.data = data
    frame.index = index

    if frame.count then frame.count:SetText("") end -- Prevents issues with duplicate text(somehow????)

    frame:SetWidth(data.size)
    frame:SetHeight(data.size)
    frame:ClearAllPoints()
    frame:SetPoint(unpack(setPoint))
    frame:RegisterEvent("UNIT_AURA")
    frame:RegisterEvent("PLAYER_TARGET_CHANGED")
    frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    frame:SetScript("OnEvent", function(self, event, ...)
        if(NeatFilter.settings.configmode) then return end
        if(not self.data.enabled) then self:SetAlpha(0); return end
        local unit = ...
        if(data.unitId==unit or event=="PLAYER_TARGET_CHANGED" or event=="PLAYER_ENTERING_WORLD") then
            self.found = false
            self:SetAlpha(1)
            for i=1, 40 do
                local name, icon, count, debuffType, duration, expirationTime, caster, isStealable = UnitAura(data.unitId, i, data.filter)
                local spellMatch = false

                for i=1,#data.spellId do
                    if name==GetSpellInfo(data.spellId[i]) then spellMatch = true end
                end

                if((not data.isMine or MyUnits[caster]) and spellMatch) then
                    self.found = true
                    self.icon:SetTexture(icon)
                    self.count:SetText(count>1 and count or "")
					if (duration) then
                    if(duration>=0) then
                        self.cooldown:Show()
                        CooldownFrame_Set(self.cooldown, expirationTime-duration, duration, 1)
                    else
                        self.cooldown:Hide()
                    end
				else
				self.cooldown:Hide()
				end
                    break
                end
            end

            if(not self.found) then
                self:SetAlpha(0)
                self.icon:SetTexture(spellIcon)
                self.count:SetText("")
                self.cooldown:Hide()
            end
        end
    end)

    frame.icon = frame.icon or frame:CreateTexture("$parentIcon", "BACKGROUND")
    frame.icon:SetAllPoints(frame)
    frame.icon:SetTexture(spellIcon)
    frame.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

    frame.count = frame:CreateFontString(nil, "OVERLAY")
    frame.count:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
    frame.count:SetTextColor(0.8, 0.8, 0.8)
    frame.count:SetPoint("BOTTOMRIGHT", -1, 1)
    frame.count:SetJustifyH("CENTER")

    frame.cooldown = frame.cooldown or CreateFrame("Cooldown", nil, frame, "CooldownFrameTemplate")
    frame.cooldown:SetReverse(true)
    frame.cooldown:SetAllPoints(frame.icon)

    local _, _, _, enabled = GetAddOnInfo("ElvUI")
    if enabled then
      local E = unpack(ElvUI);
      E:RegisterCooldown(frame.cooldown)
    end
    enabled = nil

    frame.overlay = frame:CreateTexture(nil, "OVERLAY")
    frame.overlay:SetTexture("Interface\\AddOns\\NeatFilter\\Textures\\gloss")
    frame.overlay:SetAllPoints(frame)

    frame.Clear = function(self)
        frame:SetAlpha(0)
        frame.count:SetText("")

        frame:SetMovable(false)
        frame:EnableMouse(false)
        frame:RegisterForDrag()
        frame:SetScript("OnEnter", nil)
        frame:SetScript("OnLeave", nil)
        frame:SetScript("OnMouseDown", nil)
        frame:SetScript("OnMouseUp", nil)
    end

    frame.Remove = function(self)
        self:Hide()
        self:Clear()
        self:SetScript("OnEvent", nil)
    end

    frame:Show()
    --if(NeatFilter.settings.configmode) then frame:SetAlpha(0); frame:SetAlpha(1) end

    if not StoredFrames[index] then table.insert(StoredFrames, frame) end
end

local function UpdateEditMode()
    for i=1,#StoredFrames do
        local frame = StoredFrames[i]
        local data = frame.data or {}
        local spellName, _, spellIcon = GetSpellInfo(data.spellId[1])

        if(NeatFilter.settings.configmode) then
            frame:SetAlpha(1)
            frame.count:SetText(9)
            frame.icon:SetTexture(spellIcon)
            if(frame.data.enabled) then frame.icon:SetDesaturated()
            else frame.icon:SetDesaturated(1) end

            frame:SetMovable(true)
            frame:EnableMouse(true)
            frame:RegisterForDrag("LeftButton", "RightButton")
            frame:SetScript("OnEnter", function(self)
                self.tooltipText = spellName or "|cFFFF1100Spell Not Found!"
                self.tooltipText = "Spell["..i.."]: "..self.tooltipText
                GameTooltip_AddNewbieTip(self, self.tooltipText, 1.0, 1.0, 1.0, self.newbieText)
            end)
            frame:SetScript("OnLeave", function()
                GameTooltip:Hide()
            end)
            frame:SetScript("OnMouseDown", function(self,arg1)
                if(arg1=="LeftButton") then
                    if(IsShiftKeyDown() or IsAltKeyDown()) then
                        SpellList[PlayerClass][i].setPoint = NeatFilterSettings[PlayerClass][i].setPoint
                        local setPoint = copytable(SpellList[PlayerClass][i].setPoint)
                        setPoint[2] = _G[setPoint[2]] -- Convert relativeFrame from string to actual data
                        self:ClearAllPoints()
                        self:SetPoint(unpack(setPoint))
                    else
                        self:StartMoving()
                    end
                else
                    -- Reset Position to previous
                    if(IsShiftKeyDown() or IsAltKeyDown()) then
                        -- Nothing for now
                    else
                        if(SpellList[PlayerClass][i].enabled) then
                            self.icon:SetDesaturated(1)
                            self.data.enabled = false
                            SpellList[PlayerClass][i].enabled = false
                        else
                            self.icon:SetDesaturated()
                            self.data.enabled = true
                            SpellList[PlayerClass][i].enabled = true
                        end
                    end
                end
            end)
            frame:SetScript("OnMouseUp", function(self,arg1)
                self:StopMovingOrSizing()
                if(arg1=="LeftButton") then
                    local point, relativeTo, relativePoint, xOffset, yOffset = self:GetPoint()
                    local setPoint = {point, "UIParent", point, floor(xOffset + 0.5), floor(yOffset + 0.5)}
                    SpellList[PlayerClass][i].setPoint = setPoint
                    NeatFilter.OpenSettings(frame)
                    --print(format("s|cFFFF8C00F|r|cFFFFFFFFfilter|r: setPoint for %s (%s): {\"%s\", UIParent, \"%s\", %s, %s}", data.spellId[1], spellName, point, relativePoint, floor(xOffset + 0.5), floor(yOffset + 0.5)))
                end
            end)
        else
            frame:Clear()
            --frame:SetAlpha(0)
            --frame.count:SetText("")

            --frame:SetMovable(false)
            --frame:EnableMouse(false)
            --frame:RegisterForDrag()
            --frame:SetScript("OnEnter", nil)
            --frame:SetScript("OnLeave", nil)
            --frame:SetScript("OnMouseDown", nil)
            --frame:SetScript("OnMouseUp", nil)
        end
    end
end

local function CreateSpellFrames()
    if not NeatFilterSettings[PlayerClass] then NeatFilterSettings[PlayerClass] = NeatFilter.defaults[PlayerClass] end -- Create defaults
    SpellList = copytable(NeatFilterSettings)


    if(SpellList and SpellList[PlayerClass]) then
        for i=1, #SpellList[PlayerClass], 1 do
            NeatFilter_CreateFrame(SpellList[PlayerClass][i], i)
        end
    end
end

local function AddSpellEntry()
    table.insert(NeatFilterSettings[PlayerClass],  {enabled = true, spellId = {0}, size = 32, unitId = "player", isMine = true, filter = "HARMFUL", setPoint = {"TOPLEFT", "UIParent", "CENTER", 0, 0}})
    CreateSpellFrames()
    UpdateEditMode()
    NeatFilter.OpenSettings(StoredFrames[#StoredFrames])
end

local function UpdateSpellEntry(row)
    local index = row.index

    for j=1, #row do
        local data = row[j]
        if data and data.id then
            if(data.id == "x") then
                SpellList[PlayerClass][index].setPoint[4] = data:GetText()
            elseif(data.id == "y") then
                SpellList[PlayerClass][index].setPoint[5] = data:GetText()
            elseif(data.id == "spellId") then
                SpellList[PlayerClass][index][data.id] = table.strsplit(data:GetText(), "[^, ]+")
            elseif(data.id == "isMine") then
                SpellList[PlayerClass][index][data.id] = data:GetValue()
            else
                SpellList[PlayerClass][index][data.id] = data:GetText()
            end
        end
    end

    StoredFrames[index].data = SpellList[PlayerClass][index]
    NeatFilterSettings[PlayerClass] = SpellList[PlayerClass]
    CreateSpellFrames()
end

local function RemoveSpellEntry(row)
    local index = row.index
    StoredFrames[index]:Remove()
    table.remove(SpellList[PlayerClass], index)

    NeatFilterSettings[PlayerClass] = SpellList[PlayerClass]
    CreateSpellFrames()
end

local function ResetSpellEntries()
    SpellList[PlayerClass] = NeatFilter.defaults[PlayerClass]
    NeatFilterSettings[PlayerClass] = SpellList[PlayerClass]

    ReloadUI()
end

-- Frame for intial setup
local SpellHandler = CreateFrame("Frame")
SpellHandler:SetScript("OnEvent", function(...)
    CreateSpellFrames()
    SpellHandler:UnregisterEvent("VARIABLES_LOADED")
end)
SpellHandler:RegisterEvent("VARIABLES_LOADED")


-- Assign Globals
NeatFilter.UpdateSpellEntry = UpdateSpellEntry
NeatFilter.RemoveSpellEntry = RemoveSpellEntry
NeatFilter.ResetSpellEntries = ResetSpellEntries
NeatFilter.UpdateEditMode = UpdateEditMode
NeatFilter.CreateSpellFrames = CreateSpellFrames
NeatFilter.AddSpellEntry = AddSpellEntry