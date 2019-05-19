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
		alert("Opening inventory")
		TsunStone_Vanilla_ChestTemplates_Inventory.panel = newPanel{
			width  = 0.75,
			height = 0.75,
		}
	else
		alert("Closing inventory")
		destroyPanel(TsunStone_Vanilla_ChestTemplates_Inventory.panel)
		TsunStone_Vanilla_ChestTemplates_Inventory.panel = nil
	end
end)
