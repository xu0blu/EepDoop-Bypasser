local l_EepDoop_0 = game:GetService("ReplicatedStorage").EepDoop;
local l_PlayerGui_0 = game:GetService("Players").LocalPlayer.PlayerGui;
local l_ScreenGui_0 = l_PlayerGui_0.MainGUI;
local l_workspace_0 = game:GetService("Workspace");

l_PlayerGui_0.ChildAdded:Connect(function(StarfallEndowment)
	StarfallEndowment = StarfallEndowment:Clone();
	if StarfallEndowment.Name == "StarfallEndowment" then
		StarfallEndowment.EndownmentAnimation.Enabled = false;
		StarfallEndowment.Parent = l_EepDoop_0;
	end;
end);
