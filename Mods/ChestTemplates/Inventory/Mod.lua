TsunStone_Vanilla_ChestTemplates_Inventory = {}

addChestTemplate{
	name          = "Inventory",
	width         = 9,
	height        = 4,
	playerPrivate = true,
	portable      = true,
}

TsunStone_Vanilla_ChestTemplates_Inventory.isOpen = false
implement("ToggleInventory", function()
	local isNowOpen = not TsunStone_Vanilla_ChestTemplates_Inventory.isOpen
	TsunStone_Vanilla_ChestTemplates_Inventory.isOpen = isNowOpen
	if (isNowOpen) then
		TsunStone_Vanilla_ChestTemplates_Inventory.panel = newPanel{
			width  = 0.75,
			height = 0.75,
			bg     = "#dfdfdf",
			fg     = "#ff0000",
			text   = "test",
		}
	else
		destroyPanel(TsunStone_Vanilla_ChestTemplates_Inventory.panel)
		TsunStone_Vanilla_ChestTemplates_Inventory.panel = nil
	end
end)
