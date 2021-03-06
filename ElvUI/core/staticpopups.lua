------------------------------------------------------------------------
--	Popups
------------------------------------------------------------------------
local elvuilocal = elvuilocal

StaticPopupDialogs["DISABLE_UI"] = {
	text = elvuilocal.popup_disableui,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = DisableElvui,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["INSTALL_UI"] = {
	text = elvuilocal.popup_install,
	button1 = ACCEPT,
	button2 = CANCEL,
    OnAccept = ElvDB.Install,
	OnCancel = function() ElvuiMinimal = true end,
    timeout = 0,
    whileDead = 1,
}

StaticPopupDialogs["DISABLE_RAID"] = {
	text = elvuilocal.popup_2raidactive,
	button1 = "DPS - TANK",
	button2 = "HEAL",
	OnAccept = function() DisableAddOn("ElvUI_Heal_Layout") EnableAddOn("ElvUI_Dps_Layout") ReloadUI() end,
	OnCancel = function() EnableAddOn("ElvUI_Heal_Layout") DisableAddOn("ElvUI_Dps_Layout") ReloadUI() end,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["CHAT_WARN"] = {
	text = elvuilocal.popup_rightchatwarn,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ElvDB.Install,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["DISBAND_RAID"] = {
	text = "Are you sure you want to disband the group?",
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = DisbandRaidGroup,
	timeout = 0,
	whileDead = 1,
}