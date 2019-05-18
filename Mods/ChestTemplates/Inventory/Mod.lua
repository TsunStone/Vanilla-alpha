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
	else
		alert("Closing inventory")
	end
end)
--
