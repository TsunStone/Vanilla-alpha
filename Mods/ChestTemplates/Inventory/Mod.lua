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
			xAnchor = 0.5
			yAnchor = 0.5
			width   = 0.75 * 16/9
			height  = 0.75
		}
	else
		alert("Closing inventory")
		TsunStone_Vanilla_ChestTemplates_Inventory.panel.destroy()
	end
end)
