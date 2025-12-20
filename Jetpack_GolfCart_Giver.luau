-- Server-Side --

local Jetpack = Instance.new("Tool"); Jetpack.Name = "Jetpack" Jetpack.TextureId = "rbxassetid://15229271552"; Jetpack:AddTag("JetpackEquipTool"); Jetpack.Parent = game.Players.LocalPlayer.Backpack;
local GolfCart = Instance.new("Tool"); GolfCart.Name = "GolfCart" GolfCart.TextureId = "rbxassetid://15228989746"; Jetpack:AddTag("CarSpawnTool"); GolfCart:SetAttribute("CarKind", "GolfCart") GolfCart.Parent = game.Players.LocalPlayer.Backpack;
