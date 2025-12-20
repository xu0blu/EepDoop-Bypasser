-- Wings Copyier --

local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_Terrain_0 = game.Workspace:WaitForChild("Terrain");

local SEWings = nil;
local WingsController = nil;
local WingsSpawner = nil;
local FlyingVfx = nil;
local VfxAttachments = {};

local CopyedWingsAssets = Instance.new("Folder");
CopyedWingsAssets.Name = game:GetService("HttpService"):GenerateGUID(false);
CopyedWingsAssets.Parent = l_ReplicatedStorage_0;

function GetWingsAssets(l_LocalPlayer_0)
	local l_Character_0 = l_LocalPlayer_0.Character;
	if not l_Character_0 then
		return;
	end;
	
	if l_Character_0:FindFirstChild("SEWings") then
		SEWings = l_Character_0:FindFirstChild("SEWings");	
	end;
	
	if l_Character_0:FindFirstChild("WingsController") then
		WingsController = l_Character_0:FindFirstChild("WingsController");
	end;
	local _Wings = l_LocalPlayer_0.Backpack:FindFirstChild("WingsSpawner") or l_LocalPlayer_0.Backpack:FindFirstChild("EndowmentWings");
	if l_Character_0:FindFirstChild("WingsController") then
		WingsController = l_Character_0:FindFirstChild("WingsController");
	end;
	if _Wings then
		WingsSpawner = _Wings;
	end;
	if workspace.Map:FindFirstChild("FlyingVfx") then
		FlyingVfx = workspace.Map:FindFirstChild("FlyingVfx");
	end;
end;

for _, Player in pairs(l_Players_0:GetPlayers()) do
	GetWingsAssets(Player);
end;

function Loader()
	if SEWings then
		SEWings.Parent = CopyedWingsAssets;
	end;
	if WingsController then
		WingsController.Parent = CopyedWingsAssets;
	end;
	if WingsSpawner then
		WingsSpawner.Parent = CopyedWingsAssets;
	end;
	if FlyingVfx then
		FlyingVfx.Parent = CopyedWingsAssets;
	end;
end;

Loader()
