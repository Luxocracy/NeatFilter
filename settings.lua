local font = "Fonts\\FRIZQT__.ttf"
local wowversion, wowbuild, wowdate, wowtocversion = GetBuildInfo()
if wowtocversion and wowtocversion > 90000 then
	NeatFilterBackdrop = "BackdropTemplate"
end

local function ToggleEditMode(self)
  -- Backwards because we haven't yet changed the option
  if NeatFilter.settings.configmode then
    self:SetText("Enable Config Mode")
    if NeatFilterInterfacePanel.SpellRow.visible then NeatFilter.UpdateSpellEntry(NeatFilterInterfacePanel.SpellRow) end -- Store upon exiting Config Mode
  else
    self:SetText("Disable Config Mode")
    print("|cFFFF6906NeatFilter: |cFF3782D1Config Mode Enabled(|cFFFFFFFFLeft-Click|cFF3782D1 to edit, hold to move frame. |cFFFFFFFFRight-Click|cFF3782D1 to |cFFFFFFFFEnable/Disable|cFF3782D1 Aura. Hold down |cFFFFFFFFShift|cFF3782D1 or |cFFFFFFFFAlt|cFF3782D1 and |cFFFFFFFFLeft-Click|cFF3782D1 to reset to previous position.)")
  end
  NeatFilter.settings.configmode = not NeatFilter.settings.configmode
  NeatFilter.UpdateEditMode()
  NeatFilterInterfacePanel:ToggleOpen()
end

-- Frame Creation Utility
local function CreatePanelFrame(reference, listname, title, backdrop)
  local panelframe = CreateFrame( "Frame", reference, UIParent, backdrop);
  panelframe.name = listname
  panelframe.Label = panelframe:CreateFontString(nil, 'ARTWORK', 'GameFontNormalLarge')
  panelframe.Label:SetPoint("TOPLEFT", panelframe, "TOPLEFT", 16, -16)
  panelframe.Label:SetHeight(15)
  panelframe.Label:SetWidth(350)
  panelframe.Label:SetJustifyH("LEFT")
  panelframe.Label:SetJustifyV("TOP")
  panelframe.Label:SetText(title or listname)
  return panelframe
end

local function CreateCheckButton(reference, parent, id)
  local checkbutton = CreateFrame( "CheckButton", reference, parent, "UICheckButtonTemplate")
  checkbutton.id = id
  checkbutton.Label = _G[reference.."Text"]
  checkbutton.GetValue = function() if checkbutton:GetChecked() then return true else return false end end
  checkbutton.SetValue = checkbutton.SetChecked
  checkbutton:SetScript("OnClick", function(self) NeatFilter.UpdateSpellEntry(self:GetParent().SpellRow) end)

  return checkbutton
end

local function CreateEditBox(reference, parent, id)
  local editbox = CreateFrame("EditBox", reference, parent, "InputBoxTemplate")
  editbox.id = id
  editbox:SetWidth(32)
  editbox:SetHeight(25)
  editbox:SetAutoFocus(false)
  editbox:SetFont("Fonts\\FRIZQT__.TTF", 11, "NONE")
  editbox:SetFrameStrata("DIALOG")
  editbox:SetScript("OnEditFocusGained", function(self) self:HighlightText() end)
  editbox:SetScript("OnEditFocusLost", function(self) self:HighlightText(0, 0) end)
  editbox:SetScript("OnEnterPressed", function(self)
    self:ClearFocus()
    NeatFilter.UpdateSpellEntry(self:GetParent().SpellRow)
  end)

  editbox.Label = editbox:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
  editbox.Label:SetPoint("BOTTOMLEFT", editbox, "TOPLEFT", -4, 0)
  editbox.Label:SetWidth(170)
  editbox.Label:SetJustifyH("LEFT")

  return editbox
end

local function BuildInterfacePanel(panel)
  local _panel = panel

  panel:Hide()

  panel:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", insets = { left = 2, right = 2, top = 2, bottom = 2 },})
  panel:SetBackdropColor(0.06, 0.06, 0.06, .7)
  panel:SetWidth(532)
  panel:SetHeight(400)
  panel:SetPoint("CENTER", UIParent, "CENTER", 0, 0 )

  panel:SetMovable(true)
  panel:EnableMouse(true)
  panel:RegisterForDrag("LeftButton", "RightButton")
  panel:SetScript("OnMouseDown", function(self,arg1)
    self:StartMoving()
  end)
  panel:SetScript("OnMouseUp", function(self,arg1)
    self:StopMovingOrSizing()
  end)


  panel.Label:SetFont(font, 18)
  panel.Label:SetPoint("TOPLEFT", panel, "TOPLEFT", 16+6, -16-4)
  panel.Label:SetTextColor(255/255, 105/255, 6/255)

  panel.DividerLine = panel:CreateTexture(nil, 'ARTWORK')
  panel.DividerLine:SetTexture("Interface\\COMMON\\UI-TooltipDivider-Transparent.PNG")
  panel.DividerLine:SetSize( 500, 12)
  panel.DividerLine:SetPoint("TOPLEFT", panel.Label, "BOTTOMLEFT", -6, -8)

  panel.EditMode = CreateFrame("Button", "NeatFilterOptions_EditMode", panel, "UIPanelCloseButton")
  panel.EditMode:SetPoint("TOPRIGHT", 0, 0)
  --panel.EditMode:SetWidth(145)
  --panel.EditMode:SetText("Enable Config Mode")
  panel.EditMode:SetScript("OnClick", ToggleEditMode)

  -- Reset
  panel.ResetButton = CreateFrame("Button", "NeatFilterOptions_ResetButton", panel, "UIPanelButtonTemplate")
  panel.ResetButton:SetPoint("BOTTOMRIGHT", panel.DividerLine, "TOPRIGHT", -16, 0)
  panel.ResetButton:SetWidth(145)
  panel.ResetButton:SetText("Reset to Default")
  panel.ResetButton:SetScript("OnClick", function(self)
    StaticPopupDialogs["NeatFilter_Reset"] = {
      text = "Are you sure you want to reset the |cFF3782D1Spell List|cFFFFFFFF for this |cFF3782D1Class|cFFFFFFFF to default?",
      button1 = YES,
      button2 = NO,
      OnAccept = function()
        NeatFilter.ResetSpellEntries()
        print("|cFFFF6906NeatFilter: |cFF3782D1The Spell List was successfully reset to default.")
      end,
      timeout = 0,
      whileDead = true,
      hideOnEscape = true,
      preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
    }
    StaticPopup_Show("NeatFilter_Reset")
  end)

  -- Add Spell
  panel.AddSpell = CreateFrame("Button", "NeatFilterOptions_AddSpell", panel, "UIPanelButtonTemplate")
  panel.AddSpell:SetPoint("RIGHT", panel.ResetButton, "LEFT", -4, 0)
  panel.AddSpell:SetWidth(100)
  panel.AddSpell:SetText("Add Spell")
  panel.AddSpell:SetScript("OnClick", function() NeatFilter.AddSpellEntry() end)

  panel.SpellRow = {}

  _panel.ToggleOpen = function(self)
    if self:IsVisible() then
      self:Hide()
    else
      self:Show()
    end
  end

  _panel.okay = OnOkay
  _panel.refresh = OnRefresh

end

local function AddSpellRow(data, index)
  local panel = NeatFilterInterfacePanel
  local name = "NeatFilterOptions_SpellRow"
  local col = 1
  local rel = panel.DividerLine

  panel.SpellRow.index = index
  panel.SpellRow.visible = true

  -- Spell IDs
  panel.SpellRow[col] = panel.SpellRow[col] or CreateEditBox(name, panel, "spellId")
  panel.SpellRow[col].Label:SetText("Spell["..index.."]")
  panel.SpellRow[col]:SetWidth(160)
  panel.SpellRow[col]:SetPoint("TOPLEFT", rel, "BOTTOMLEFT", 4, -24)

  local spellIds = data.spellId[1]
  for j=2,#data.spellId do
    spellIds = spellIds..", "..data.spellId[j]
  end
  
  panel.SpellRow[col]:SetText(spellIds)
  panel.SpellRow[col]:SetCursorPosition(0)

  -- IsMine Status
  rel = panel.SpellRow[col]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateCheckButton(name.."_"..col, panel, "isMine")
  panel.SpellRow[col].Label:SetText("Only cast by me")
  panel.SpellRow[col]:SetWidth(18)
  panel.SpellRow[col]:SetHeight(18)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", -102, 17)
  panel.SpellRow[col]:SetValue(data.isMine)


  -- Icon Size
  rel = panel.SpellRow[col-1]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateEditBox(name.."_"..col, panel, "size")
  panel.SpellRow[col].Label:SetText("Size")
  panel.SpellRow[col]:SetWidth(32)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", 8, 0)
  panel.SpellRow[col]:SetText(data.size)
  panel.SpellRow[col]:SetCursorPosition(0)

  -- Unit Id
  rel = panel.SpellRow[col]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateEditBox(name.."_"..col, panel, "unitId")
  panel.SpellRow[col].Label:SetText("Unit")
  panel.SpellRow[col]:SetWidth(64)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", 8, 0)
  panel.SpellRow[col]:SetText(data.unitId)
  panel.SpellRow[col]:SetCursorPosition(0)

  -- Filter
  rel = panel.SpellRow[col]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateEditBox(name.."_"..col, panel, "filter")
  panel.SpellRow[col].Label:SetText("Filter")
  panel.SpellRow[col]:SetWidth(64)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", 8, 0)
  panel.SpellRow[col]:SetText(data.filter)
  panel.SpellRow[col]:SetCursorPosition(0)

  -- Coordinates (X)
  rel = panel.SpellRow[col]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateEditBox(name.."_"..col, panel, "x")
  panel.SpellRow[col].Label:SetText("X")
  panel.SpellRow[col]:SetWidth(32)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", 8, 0)
  panel.SpellRow[col]:SetText(data.setPoint[4])
  panel.SpellRow[col]:SetCursorPosition(0)

  -- Coordinates (Y)
  rel = panel.SpellRow[col]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateEditBox(name.."_"..col, panel, "y")
  panel.SpellRow[col].Label:SetText("Y")
  panel.SpellRow[col]:SetWidth(32)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", 8, 0)
  panel.SpellRow[col]:SetText(data.setPoint[5])
  panel.SpellRow[col]:SetCursorPosition(0)

  -- Delete button
  rel = panel.SpellRow[col]
  col = col+1

  panel.SpellRow[col] = panel.SpellRow[col] or CreateFrame("Button", name.."_"..col, panel, "UIPanelButtonTemplate")
  panel.SpellRow[col]:SetWidth(64)
  panel.SpellRow[col]:SetPoint("LEFT", rel, "RIGHT", 8, 0)
  panel.SpellRow[col]:SetText("Remove")
  panel.SpellRow[col]:SetScript("OnClick", function(self)
    for j=1, #panel.SpellRow do panel.SpellRow[j]:Hide() end
    panel.SpellRow.visible = false
    NeatFilter.RemoveSpellEntry(self:GetParent().SpellRow, true)
    NeatFilter.CreateSpellFrames()
  end)

  -- Display columns again incase they were hidden
  for j=1, #panel.SpellRow do panel.SpellRow[j]:Show() end
end

-- Create Interface Panel
local NeatFilterInterfacePanel = CreatePanelFrame("NeatFilterInterfacePanel", "NeatFilter", nil, NeatFilterBackdrop)
--InterfaceOptions_AddCategory(NeatFilterInterfacePanel)

BuildInterfacePanel(NeatFilterInterfacePanel)

local function OpenSettings(frame)
  AddSpellRow(frame.data, frame.index)
end

-- Slash Commands
SLASH_NeatFilterToggle1 = '/NeatFilter'
SLASH_NeatFilterToggle2 = '/nf'
SLASH_NeatFilterToggle3 = '/nft'
SlashCmdList['NeatFilterToggle'] = function() ToggleEditMode(NeatFilterInterfacePanel.EditMode) end

NeatFilter.AddSpellRow = AddSpellRow
NeatFilter.OpenSettings = OpenSettings