--Mobile Energy 0.23 by B-Buck (Bbuck of Eredar)

MobileE = {
    mage = 1;
    warrior = 1;
    rogue = 1;
    hunter = 1;
    priest = 1;
    warlock = 1;
    deathknight = 1;
    paladin = 1;
    shaman = 1;
    druid = 1;
    barSize = 4;
    borderStyle = 1;
    alpha = 5;
    alphaSlider = 5;
    font = 0;
    lockFrame = 0;
    incombat = false;
}

local tempenergy = 2534;

function MobileEnergyStart(self)
    self:RegisterEvent("VARIABLES_LOADED")
    MobileEnergyOptions();
    SlashCmdList['MOBILEENERGY_SLASHCMD'] = MobileEnergy_SlashCommandHandler
    SLASH_MOBILEENERGY_SLASHCMD1 = "/mobileenergy"
end

function MobileEnergy_SlashCommandHandler(msg) --Handles the slash commands
    InterfaceOptionsFrame_OpenToCategory("Mobile Energy");
end

local MobileE_UpdateInterval = 1.0;
function MobileE_Main(self, elapsed) 
self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed;
    if (self.TimeSinceLastUpdate > MobileE_UpdateInterval) then
        local inLockdown = InCombatLockdown()
        if (MobileE.incombat == true) then 
            if(inLockdown == 1) then
                MobileEnergyFrame:Show()
            else
                MobileEnergyFrame:Hide()
            end
        end 
        self.TimeSinceLastUpdate = 0;
    end
end

local MobileE_BarUpdateInterval = 0.1;
function MobileE_BarOnUpdate(self, elapsed)
    self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed;
    if (self.TimeSinceLastUpdate > MobileE_BarUpdateInterval) then    
        local currentenergy = UnitPower("Player");
        local currentenergyMax = UnitPowerMax("Player");
        local energyType = UnitPowerType("Player");
        if (tempenergy ~= currentenergy) then
            if(UnitClass("Player") == 'Warrior') then
                if(MobileE.warrior == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(1.0,0,0)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();           
                end
            end
            if(UnitClass("Player") == 'Rogue') then
                if(MobileE.rogue == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(1.0,1.0,0)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Mage') then
                if(MobileE.mage == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(0,0,0.8)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Hunter') then
                if(MobileE.hunter == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(1,0.6,0.1)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Paladin') then
                if(MobileE.paladin == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(0,0,0.8)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Priest') then
                if(MobileE.priest == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(0,0,0.8)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Warlock') then
                if(MobileE.warlock == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(0,0,0.8)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Shaman') then
                if(MobileE.shaman == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(0,0,0.8)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Death Knight') then
                if(MobileE.deathKnight == 1) then
                    MobileEnergyFrame_Bar:SetStatusBarColor(0.2,1.0,1.0)
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
            if(UnitClass("Player") == 'Druid') then
                if(MobileE.druid == 1) then
                    if(energyType == 0) then
                        MobileEnergyFrame_Bar:SetStatusBarColor(0,0,0.8)
                    end
                    if(energyType == 1) then
                        MobileEnergyFrame_Bar:SetStatusBarColor(1.0,0,0)
                    end
                    if(energyType == 3) then
                        MobileEnergyFrame_Bar:SetStatusBarColor(1.0,1.0,0)
                    end
                    MobileEnergyFrame_Bar:SetMinMaxValues(0, currentenergyMax)
                    MobileEnergyFrame_Bar:SetValue(currentenergy);
                    MobileEnergyFrameText:SetText(currentenergy.." / "..currentenergyMax);
                    MobileEnergyFrame:Show();
                end
            end
        end
    tempenergy = currentenergy;
    self.TimeSinceLastUpdate = 0;
    end
end


function MobileEnergyOptions() --Options Frame
    local MobileEOptions = CreateFrame("FRAME", "MobileEOptions", InterfaceOptionsFrame)
    MobileEOptions.name = "Mobile Energy"
    InterfaceOptions_AddCategory(MobileEOptions)
    MobileEOptions:SetPoint("TOPLEFT", InterfaceOptionsFrame, "BOTTOMRIGHT", 0, 0)
end



function MEVariablesLoaded_OnEvent()
    if (MobileE.barSize == nil) then
        MobileEnergyOptionsFrame_ScaleSlider:SetValue(4)
    else
        MobileEnergyOptionsFrame_ScaleSlider:SetValue(MobileE.barSize)
    end
    if (MobileE.borderStyle == nil) then
        MobileEnergyOptionsFrame_BorderSlider:SetValue(1)
    else
        MobileEnergyOptionsFrame_BorderSlider:SetValue(MobileE.borderStyle)
    end
    if (MobileE.font == nil) then
        MobileEnergyOptionsFrame_FontSlider:SetValue(0)
    else
        MobileEnergyOptionsFrame_FontSlider:SetValue(MobileE.font)
    end
    if ((MobileE.alpha == nil) or (MobileE.alphaSlider == nil))then
        MobileEnergyOptionsFrame_AlphaSlider:SetValue(5)
        MobileE.alphaSlider = 5;
    else
        MobileEnergyOptionsFrame_AlphaSlider:SetValue(MobileE.alphaSlider)
    end
    if (MobileE.lockFrame == nil) then
        MobileEnergyOptionsFrame_LockCheck:SetChecked(0)
    else
        MobileEnergyOptionsFrame_LockCheck:SetChecked(MobileE.lockFrame)
    end
    if (MobileE.mage == nil) then
        MobileEnergyOptionsFrame_CheckMage:SetChecked(1);
        MobileE.mage = 1;
    else
        MobileEnergyOptionsFrame_CheckMage:SetChecked(MobileE.mage);
    end
    if (MobileE.warrior == nil) then
        MobileEnergyOptionsFrame_CheckWarrior:SetChecked(1);
        MobileE.warrior = 1;
    else
        MobileEnergyOptionsFrame_CheckWarrior:SetChecked(MobileE.warrior);
    end
    if (MobileE.rogue == nil) then
        MobileEnergyOptionsFrame_CheckRogue:SetChecked(1);
        MobileE.rogue = 1;
    else
        MobileEnergyOptionsFrame_CheckRogue:SetChecked(MobileE.rogue);
    end
    if (MobileE.paladin == nil) then
        MobileEnergyOptionsFrame_CheckPaladin:SetChecked(1);
        MobileE.paladin = 1;
    else
        MobileEnergyOptionsFrame_CheckPaladin:SetChecked(MobileE.paladin);
    end
    if (MobileE.warlock == nil) then
        MobileEnergyOptionsFrame_CheckWarlock:SetChecked(1);
        MobileE.warlock = 1;
    else
        MobileEnergyOptionsFrame_CheckWarlock:SetChecked(MobileE.warlock);
    end
    if (MobileE.priest == nil) then
        MobileEnergyOptionsFrame_CheckPriest:SetChecked(1);
        MobileE.priest = 1;
    else
        MobileEnergyOptionsFrame_CheckPriest:SetChecked(MobileE.priest);
    end
    if (MobileE.shaman == nil) then
        MobileEnergyOptionsFrame_CheckShaman:SetChecked(1);
        MobileE.shaman = 1;
    else
        MobileEnergyOptionsFrame_CheckShaman:SetChecked(MobileE.shaman);
    end
    if (MobileE.hunter == nil) then
        MobileEnergyOptionsFrame_CheckHunter:SetChecked(1);
        MobileE.hunter = 1;
    else
        MobileEnergyOptionsFrame_CheckHunter:SetChecked(MobileE.hunter);
    end
    if (MobileE.deathKnight == nil) then
        MobileEnergyOptionsFrame_CheckDeathKnight:SetChecked(1);
        MobileE.deathKnight = 1;
    else
        MobileEnergyOptionsFrame_CheckDeathKnight:SetChecked(MobileE.deathKnight);
    end
    if (MobileE.druid == nil) then
        MobileEnergyOptionsFrame_CheckDruid:SetChecked(1);
        MobileE.druid = 1;
    else
        MobileEnergyOptionsFrame_CheckDruid:SetChecked(MobileE.druid);
    end
    if (MobileE.incombat == nil) then
        MobileE.incombat = false;
    end
    if (MobileE.incombat == true) then    
        MobileEnergyOptionsFrame_CombatCheck:SetChecked(1);
    else
        MobileEnergyOptionsFrame_CombatCheck:SetChecked(0);
    end
    MobileEnergyFrame:Show()
end

---------------------------------Options-------------------------------
function MEMageToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckMage:GetChecked();
    if (isChecked == 1) then
        MobileE.mage = 1;
    else  
        MobileE.mage = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEWarriorToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckWarrior:GetChecked();
    if (isChecked == 1) then
        MobileE.warrior = 1;
    else  
        MobileE.warrior = 0;
        MobileEnergyFrame:Hide();
    end
end

function MERogueToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckRogue:GetChecked();
    if (isChecked == 1) then
        MobileE.rogue = 1;
    else  
        MobileE.rogue = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEPaladinToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckPaladin:GetChecked();
    if (isChecked == 1) then
        MobileE.paladin = 1;
    else  
        MobileE.paladin = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEDeathKnightToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckDeathKnight:GetChecked();
    if (isChecked == 1) then
        MobileE.deathKnight = 1;
    else  
        MobileE.deathKnight = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEDruidToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckDruid:GetChecked();
    if (isChecked == 1) then
        MobileE.druid = 1;
    else  
        MobileE.druid = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEShamanToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckShaman:GetChecked();
    if (isChecked == 1) then
        MobileE.shaman = 1;
    else  
        MobileE.shaman = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEWarlockToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckWarlock:GetChecked();
    if (isChecked == 1) then
        MobileE.warlock = 1;
    else  
        MobileE.warlock = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEPriestToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckPriest:GetChecked();
    if (isChecked == 1) then
        MobileE.priest = 1;
    else  
        MobileE.priest = 0;
        MobileEnergyFrame:Hide();
    end
end

function MEHunterToggle()
    local isChecked = MobileEnergyOptionsFrame_CheckHunter:GetChecked();
    if (isChecked == 1) then
        MobileE.hunter = 1;
    else  
        MobileE.hunter = 0;
        MobileEnergyFrame:Hide();
    end
end

function MELockToggle()
    local isChecked = MobileEnergyOptionsFrame_LockCheck:GetChecked();
    if(isChecked == 1) then
        MobileE.lockFrame = 1;
    else
        MobileE.lockFrame = 0;
    end
end

function MELockFrame(self)
    if(MobileE.lockFrame == 0) then
        self:StartMoving(); self.isMoving = true;
    end
end
function MobileEBarSize()
    local tempInt = MobileEnergyOptionsFrame_ScaleSlider:GetValue()
    if (tempInt == 0) then
        MobileEnergyFrame:SetScale(0.7);
        MobileE.barSize = 0;
    end
    if (tempInt == 1) then
        MobileEnergyFrame:SetScale(0.8);
        MobileE.barSize = 1;
    end
    if (tempInt == 2) then
        MobileEnergyFrame:SetScale(0.9);
        MobileE.barSize = 2;
    end
    if (tempInt == 3) then
        MobileEnergyFrame:SetScale(1.0);
        MobileE.barSize = 3;
    end
    if (tempInt == 4) then
        MobileEnergyFrame:SetScale(1.2);
        MobileE.barSize = 4;
    end
    if (tempInt == 5) then
        MobileEnergyFrame:SetScale(1.4);
        MobileE.barSize = 5;
    end
    if (tempInt == 6) then
        MobileEnergyFrame:SetScale(1.6);
        MobileE.barSize = 6;
    end
    if (tempInt == 7) then
        MobileEnergyFrame:SetScale(1.8);
        MobileE.barSize = 7;
    end
    if (tempInt == 8) then
        MobileEnergyFrame:SetScale(2.0);
        MobileE.barSize = 8;
    end
end


function MobileEBarBorder()
    local tempInt = MobileEnergyOptionsFrame_BorderSlider:GetValue()
    if (tempInt == 0) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
                                    edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
                                    tile = true, tileSize = 16, edgeSize = 6, 
                                    insets = { left = 1, right = 1, top = 1, bottom = 1 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.border = 0;
    end
    if (tempInt == 1) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
                                    edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
                                    tile = true, tileSize = 16, edgeSize = 10, 
                                    insets = { left = 1, right = 1, top = 1, bottom = 1 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.borderStyle = 1;
    end
    if (tempInt == 2) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                                    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
                                    tile = true, tileSize = 16, edgeSize = 6, 
                                    insets = { left = 1, right = 1, top = 1, bottom = 1 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.borderStyle = 2;
    end
    if (tempInt == 3) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                                    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
                                    tile = true, tileSize = 16, edgeSize = 10, 
                                    insets = { left = 1, right = 1, top = 1, bottom = 1 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.borderStyle = 3;
    end
    if (tempInt == 4) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                                    edgeFile = "Interface/DialogFrame/UI-DialogBox-Gold-Border",
                                    tile = true, tileSize = 16, edgeSize = 6, 
                                    insets = { left = 1, right = 1, top = 1, bottom = 1 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.borderStyle = 4;
    end
    if (tempInt == 5) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                                    edgeFile = "Interface/DialogFrame/UI-DialogBox-Gold-Border",
                                    tile = true, tileSize = 16, edgeSize = 10, 
                                    insets = { left = 1, right = 1, top = 1, bottom = 1 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.borderStyle = 5;
    end
    if (tempInt == 6) then
        MobileEnergyFrame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                                    tile = true, tileSize = 16, edgeSize = 8, 
                                    insets = { left = 0, right = 0, top = 0, bottom = 0 }});
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.borderStyle = 6;
    end
end

function MobileEBarAlpha()
    local tempInt = MobileEnergyOptionsFrame_AlphaSlider:GetValue()
    if (tempInt == 0) then
        MobileE.alpha = 0.0;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 0;
    end
    if (tempInt == 1) then
        MobileE.alpha = 0.1;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 1;
    end
    if (tempInt == 2) then
        MobileE.alpha = 0.2;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 2;
    end
    if (tempInt == 3) then
        MobileE.alpha = 0.3;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 3;
    end
    if (tempInt == 4) then
        MobileE.alpha = 0.4;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 4;
    end
    if (tempInt == 5) then
        MobileE.alpha = 0.5;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 5;
    end
    if (tempInt == 6) then
        MobileE.alpha = 0.6;
        MobileEnergyFrame:SetBackdropColor(0,0,0,MobileE.alpha)
        MobileE.alphaSlider = 6;
    end
end

function MobileEFontType()
    local tempInt = MobileEnergyOptionsFrame_FontSlider:GetValue()
    if (tempInt == 0) then
        MobileE.font = 0;
        MobileEnergyFrameText:SetFont("Fonts\\FRIZQT__.TTF", 8)
    end
    if (tempInt == 1) then
        MobileE.font = 1;
        MobileEnergyFrameText:SetFont("Fonts\\ARIALN.TTF", 9)
    end
    if (tempInt == 2) then
        MobileE.font = 2;
        MobileEnergyFrameText:SetFont("Fonts\\skurri.ttf", 9)
    end
    if (tempInt == 3) then
        MobileE.font = 3;
        MobileEnergyFrameText:SetFont("Fonts\\MORPHEUS.ttf", 9)
    end
    if (tempInt == 4) then
        MobileE.font = 4;
        MobileEnergyFrameText:SetFont("Fonts\\ARIALN.TTF", 8, "OUTLINE")
    end
    if (tempInt == 5) then
        MobileE.font = 5;
        MobileEnergyFrameText:SetFont("Fonts\\FRIZQT__.TTF", 8, "OUTLINE")
    end
    if (tempInt == 6) then
        MobileE.font = 6;
        MobileEnergyFrameText:SetFont("Fonts\\skurri.ttf", 9, "OUTLINE")
    end
end

function MEcombatToggle()
    local combatChecked = MobileEnergyOptionsFrame_CombatCheck:GetChecked();
    if (combatChecked == 1) then
        MobileE.incombat = true;
    else
        MobileE.incombat = false;
        MobileEnergyFrame:Show()
    end
end