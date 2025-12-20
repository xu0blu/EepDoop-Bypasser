local l_EepDoop_0 = game:GetService("ReplicatedStorage").EepDoop;
local l_PlayerGui_0 = game:GetService("Players").LocalPlayer.PlayerGui;
local l_ScreenGui_0 = l_PlayerGui_0.MainGUI;
local l_workspace_0 = game:GetService("Workspace");

l_PlayerGui_0.ChildAdded:Connect(function(v4)
	local l_v4_0 = v4:Clone();
	for _, v8 in pairs(l_v4_0:GetChildren()) do
		if v8:IsA("LocalScript") then
			v8.Enabled = false;
		end;
	end;
	if l_v4_0:FindFirstChild("EndowmentAnimation") then
		l_v4_0.EndowmentAnimation.Enabled = false;
		if l_EepDoop_0:FindFirstChild(l_v4_0.Name) then
			l_v4_0:Destroy();
			warn("ok")
		else
			l_v4_0.Parent = l_EepDoop_0;
		end;
	elseif l_v4_0:IsA("LocalScript") then
		l_v4_0.Enabled = false;
		if l_EepDoop_0:FindFirstChild(l_v4_0.Name) then
			l_v4_0:Destroy();
			warn("ok")
		else
			l_v4_0.Parent = l_EepDoop_0;
		end;
	end;
end);
