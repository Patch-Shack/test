local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patch-Shack/test/master/scripts/runker51/ui_lib.lua"))();
local Main = library:CreateSection("Teleports")
local Misc = library:CreateSection("Misc")

Main:Button("Give Guns", function()
	givegasmask = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringPAI31vPWjiJc", true))()
end)

Main:Button("Semi God Mode [Auto Heal, 5 Runkoin per Heal]", function()
	while wait() do
   if workspace[game.Players.LocalPlayer.Name].Humanoid.Health < 62 then
       local args = {
       [1] = "Medkit"
       }

       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CurrencyService.RequestBuy:InvokeServer(unpack(args))

wait(0.1)
local Name = game.Players.LocalPlayer.Name

local Character = game.Players[Name].Character

local Backpack = game.Players[Name].Backpack

local Tool = "Medkit" -- Tool name in your backpack.
Character.Humanoid:EquipTool(Backpack[Tool])

wait(0.1)
       local args = {
       [1] = game:GetService("Players").LocalPlayer.Character
       }

       game:GetService("ReplicatedStorage").Remotes.Heal:FireServer(unpack(args)) -- use the jetpack thing sex
   end
end
end)

Misc:Button("Reset", function()
	game.Players.LocalPlayer.Character:BreakJoints()
end)

Misc:Button("Infinite Yield", function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/i4gJFss1'),true))();
end)

Misc:Button("16 WalkSpeed (Default)", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Misc:Button("32 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
end)

Misc:Button("50 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Misc:Button("100 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

Misc:Button("200 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
end)

library:Ready()

local Ped = game.CoreGui:WaitForChild("RUNCON")

game:GetService("UserInputService").InputBegan:Connect(function(Key,IsChat)
	if IsChat then return end
	if Key.KeyCode == Enum.KeyCode.RightAlt then
		Ped.Enabled = (not Ped.Enabled)
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Toggle UI",
	Text = "RightAlt",
	Duration = 3,
})

spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Patch-Shack/newLoad/master/Never%20Get%20Kicked%20for%20Being%20AFK"))();
end)
