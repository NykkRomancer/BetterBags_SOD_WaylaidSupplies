---@class BetterBags: AceAddon
local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
assert(BetterBags, "BetterBags_WaylaidSupplies requires BetterBags")

---@class Categories: AceModule
local categories = BetterBags:GetModule("Categories")

for supplyboxID, details in pairs(NykkRomancer.SOD_WaylaidSupplies) do
    categories:AddItemToCategory(supplyboxID, "Waylaid Supplies Boxes")
    categories:AddItemToCategory(details.Item.ID, "Waylaid Supplies")
end
