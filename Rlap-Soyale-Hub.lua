    if not game:IsLoaded() then     
        game.Loaded:Wait()      
end

local Success, Response = pcall(function()
if game.CoreGui:FindFirstChild("CombatTab", 1) then   
         getgenv().Running = true
      else 
          getgenv().Running = false     
     end

    if getgenv().Running  then     
             
		error("Rlap Soyale Hub Was Running")		
		
  else
	_G.settingsTable = {
		Speed = 20.554494,
		Jump = 50.554494, 
}

local Time = tick()
    
	local userinputservice = game:GetService("UserInputService")
local LocalPlayer = game.Players.LocalPlayer.Name
Player = game.Players.LocalPlayer.Character.Name
local plr = game.Players.LocalPlayer

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Rlap Soyale Hub", "GrapeTheme")

    local namecall
    namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local Args = {...}
        if getnamecallmethod() == "FireServer" and tostring(self) == "WS" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS2" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
            return
        elseif getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
            return
        end
        return namecall(self, ...)
    end)

local Com = Window:NewTab("Combat")
local Cheat = Com:NewSection("Cheats")
-------------------------------------------------------------
local Misc = Window:NewTab("Misc")
local Item = Misc:NewSection("Items")
local Badge = Misc:NewSection("Badges")
-------------------------------------------------------------
local Game = Window:NewTab("Game")
local Client = Game:NewSection("Client")
local Map = Game:NewSection("Map")
-------------------------------------------------------------
local Tele = Window:NewTab("Teleports")
local Area = Tele:NewSection("Areas")
local Mode = Tele:NewSection("Modes")

Cheat:NewToggle("Slap Aura", "Slaps people near you!", function(bool)
          getgenv().Aura = bool
				while getgenv().Aura == true do
					task.wait()
					for _, L_1 in pairs(game.Players:GetPlayers()) do
						if L_1 ~= game.Players.LocalPlayer then
							if L_1.Character:FindFirstChild("HumanoidRootPart") ~= nil and L_1.Character:FindFirstChild("Humanoid") and not L_1.Character:FindFirstChild("Dead")  and not game.Players.LocalPlayer.Character:FindFirstChild("Dead")  then
								local magnitude =
								(L_1.Character.HumanoidRootPart.Position -
								game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if 20 >= magnitude  then
									game:GetService("ReplicatedStorage").Events.Slap:FireServer(L_1.Character.Torso)
								end
							end
						end
					end
          end
end)

Cheat:NewSlider("Set Walkspeed", "Set your speed when you walk!", 400, 20, function(JP)
          _G.settingsTable.Speed = JP
	
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.settingsTable.Speed + 0.554494
end)

Cheat:NewSlider("Set Jumppower", "Set your jumppower when you jump!", 350, 50, function(WS)
          _G.settingsTable.Jump = WS
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = _G.settingsTable.Jump
end)

Item:NewButton("Get All Items", "Get all items around the map!", function()
          local Lplr = game.Players.LocalPlayer
        if Lplr.Character.inMatch.Value and workspace:FindFirstChildWhichIsA("Tool") then
            for _, Items in ipairs(game.Workspace:GetDescendants()) do
                if Items:IsA("TouchTransmitter") and Items.Parent.Name == "Handle" then
                    Lplr.Character.Humanoid:EquipTool(Items.Parent.Parent)
                end
            end
            Lplr.Character.Humanoid:UnequipTools()           
            else             
                print("No Items Found!")
          end
end)

Item:NewButton("Use All Perm Items", "Use all perm items in your inventory!", function()
          for _, L_2 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if
                    L_2:IsA("Tool") and L_2.Name == "Potion of Strength" or L_2.Name == "Bull's essence" or
                        L_2.Name == "Speed Potion" or
                        L_2.Name == "Boba" or
                        L_2.Name == "Frog Potion" or
                        L_2.Name == "Strength Brew" or
                        L_2.Name == "Frog Brew" or
                        L_2.Name == "Speed Brew"
                 then
                    L_2.Parent = game.Players.LocalPlayer.Character
                end
            end
            wait(.3)
            for _, L_3 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if L_3:IsA("Tool") then
                    L_3:Activate()
                end
          end
end)

Item:NewButton("Bomb Bus (For Trolling)", "Bomb the whole bus (Can damage users!)", function()
          local lp = game.Players.LocalPlayer
			for _, L_4 in ipairs(game.Workspace:GetDescendants()) do
				if L_4:IsA("TouchTransmitter") and L_4.Parent.Name == "Handle" and L_4.Parent.Parent.Name == "Bomb" and workspace:FindFirstChild("BusModel") then

        
					lp.Character.Humanoid:EquipTool(L_4.Parent.Parent)
				end
			end
			wait(.1)
			for _, L_5 in pairs(lp.Backpack:GetChildren()) do
				if L_5:IsA("Tool") and L_5.Name == "Bomb" then
					L_5.Parent = lp.Character
				end
			end
			wait(.25)
			for _, L_6 in pairs(lp.Character:GetChildren()) do
				if L_6:IsA("Tool") and L_6.Name == "Bomb" then
					L_6:Activate()
				end
          end
end)

Badge:NewButton("Get Lab Code (For Chain)", "Get the code for the Lab!", function()
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Open Console!";
    Text = "Type /console to view the Code!";
    Duration = 10;
    Button1 = "OK!"
})
          function code(decal)
                if decal == "http://www.roblox.com/asset/?id=9648769161" then
                    return 4
                elseif decal == "http://www.roblox.com/asset/?id=9648765536" then
                    return 2
                elseif decal == "http://www.roblox.com/asset/?id=9648762863" then
                    return 3
                elseif decal == "http://www.roblox.com/asset/?id=9648759883" then
                    return 9
                elseif decal == "http://www.roblox.com/asset/?id=9648755440" then
                    return 8
                elseif decal == "http://www.roblox.com/asset/?id=9648752438" then
                    return 2
                elseif decal == "http://www.roblox.com/asset/?id=9648749145" then
                    return 8
                elseif decal == "http://www.roblox.com/asset/?id=9648745618" then
                    return 3
                elseif decal == "http://www.roblox.com/asset/?id=9648742013" then
                    return 7
                elseif decal == "http://www.roblox.com/asset/?id=9648738553" then
                    return 8
                elseif decal == "http://www.roblox.com/asset/?id=9648734698" then
                    return 2
                elseif decal == "http://www.roblox.com/asset/?id=9648730082" then
                    return 6
                elseif decal == "http://www.roblox.com/asset/?id=9648723237" then
                    return 3
                elseif decal == "http://www.roblox.com/asset/?id=9648718450" then
                    return 6
                elseif decal == "http://www.roblox.com/asset/?id=9648715920" then
                    return 6
                elseif decal == "http://www.roblox.com/asset/?id=9648712563" then
                    return 2
                end
            end

            for i, v in ipairs(game:GetService("Workspace").Map.CodeBrick.SurfaceGui:GetDescendants()) do
                if v.Name == "IMGTemplate" then
                    Code = code(tostring(v.Image))
                    warn(tostring(Code))
                end
          end
end)

Client:NewToggle("Remove Zone Blur", "Removes the Blur effect if you get out of the zone!", function(Blur)
          if Blur == true then  
	game:GetService("ReplicatedStorage").ZoneEffects.ZoneBlur.Enabled = false
	game:GetService("ReplicatedStorage").ZoneEffects.ZoneColorCorrection.Enabled = false
    else
          game:GetService("ReplicatedStorage").ZoneEffects.ZoneBlur.Enabled = true
    game:GetService("ReplicatedStorage").ZoneEffects.ZoneColorCorrection.Enabled = true   
    end
end)

Map:NewButton("Anti Acid", "Avoids you to fell on Acid pits!", function()
          local Anti_Acid = Instance.new("Part", workspace)
		Anti_Acid.Size = Vector3.new(154, 26, 132)
		Anti_Acid.Position = Vector3.new(-60, -5, -731)
		Anti_Acid.Transparency = 1
		Anti_Acid.Anchored = true
end)

Map:NewButton("Anti Lava", "Avoids you to fell on Lava!", function(AntiLava)
          local AntiLava = Instance.new("Part", game.Workspace)
	    AntiLava.Position = Vector3.new(-238, -43, 401)
	    AntiLava.Size = Vector3.new(150,10,150)
	    AntiLava.Anchored = true
	    AntiLava.Transparency = 1
end)

Map:NewButton("Destroy Lab (Items still remains!)", "Destroy the whole Lab!", function()
          spawn(
            function()
game:GetService("Workspace").Map.OriginOffice:Destroy()
end
          )
end)

Area:NewButton("School", "TP you to School!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    508.355164,
                    51.9435844,
                    -369.250031,
                    -0.0291695595,
                    0.696763933,
                    0.71670723,
                    -0.998238981,
                    0.0167474151,
                    -0.0569090843,
                    -0.0516551733,
                    -0.717105031,
                    0.695048273
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Area:NewButton("Hallow Hills", "TP you to Hallow Hills!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    -129.338455,
                    103.993027,
                    357.294373,
                    -0.998822331,
                    0.0428290665,
                    0.0228018295,
                    0.041174911,
                    0.996791124,
                    -0.0686445013,
                    -0.0256686416,
                    -0.067624785,
                    -0.997380614
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Area:NewButton("Mini Market", "TP you to Mini Market!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    -568.477661,
                    15.0554562,
                    -490.663818,
                    -0.735443711,
                    -0.15264675,
                    0.660167813,
                    0.0225285366,
                    0.968246698,
                    0.248979419,
                    -0.677211165,
                    0.197982967,
                    -0.708652139
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Area:NewButton("Field", "TP you to Field!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {CFrame = CFrame.new(469.94043, 89.8776321, 385.162689, 1, 0, 0, 0, 1, 0, 0, 0, 1)}
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Area:NewButton("Cave", "TP you to Cave!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {
                CFrame = CFrame.new(
                    542.96228,
                    -43.080822,
                    -209.350006,
                    0.193205729,
                    -0.0219757352,
                    0.980912149,
                    -0.974057674,
                    0.115763538,
                    0.194449127,
                    -0.117827021,
                    -0.993033648,
                    0.000960545964
                )
            }
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Area:NewButton("Desert", "TP you to Desert!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {CFrame = CFrame.new(-642, 15.1884031, -93.6500015, 1, 0, 0, 0, 1, 0, 0, 0, 1)}
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Area:NewButton("Under the Map", "TP you under the Map!", function()
          local players = game:GetService("Players")
        local plr = players.LocalPlayer
        local tween = game:GetService("TweenService")
        local humroot = plr.Character:WaitForChild("HumanoidRootPart")
        local startTween =
            tween:Create(
            humroot,
            TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
            {CFrame = CFrame.new()}
        )
        startTween:Play()
        startTween.Completed:Wait()
end)

Mode:NewButton("TP to Normal Gamemode", "TP to Normal Gamemode!", function()
          game:GetService("TeleportService"):Teleport(6403373529)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Normal Gamemode...";
    Duration = 8
})
end)

Mode:NewButton("TP to Killstreak Only", "TP to Killstreak Only Gamemode!", function()
          game:GetService("TeleportService"):Teleport(11520107397)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Killstreak Only Gamemode...";
    Duration = 8
})
end)

Mode:NewButton("TP to No Oneshot", "TP to No Oneshot Gamemode!", function()
          
game:GetService("TeleportService"):Teleport(9015014224)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to No Oneshot Gamemode...";
    Duration = 8
})
end)

Mode:NewButton("TP to Slap Royale Matchmaking", "TP to Slap Royale Matchmaking!", function()
          game:GetService("TeleportService"):Teleport(9426795465)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Slap Royale Matchmaking...";
    Duration = 8
})
end)

wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Script Loaded!";
    Text = "Thanks for using our Script! 😊💕";
    Duration = 10
})

    game:GetService("SoundService").KillSound.SoundId = "rbxassetid://2440889605"

	print("Rlap Soyale Hub Took " .. tick() - Time .. " Seconds To Fully Load! ")
    end
  end)

if not Success then
  warn("\nSlap Royale Script - Failed to Load! Error code: " .. Response .. "\n")
end