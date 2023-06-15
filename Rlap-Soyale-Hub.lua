    if not game:IsLoaded() then     
        game.Loaded:Wait()      
end

       wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Game Detected! Loading...";
    Text = "If the Script doesn't load, try to Execute it again!";
    Duration = 6;
})

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

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/Main-Script/main/Main2.lua"))()
local Window = OrionLib:MakeWindow({Name = "Rlap Soyale Hub (Beta)", HidePremium = false, IntroEnabled = true, IntroText = "Slap Royale Script"})

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

local Combat = Window:MakeTab({
	Name = "Combat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Cheat = Combat:AddSection({
	Name = "Cheats"
})
----------------------------------------------------------------------------------
local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Item = Misc:AddSection({
	Name = "Items"
})
local Badge = Misc:AddSection({
	Name = "Badge"
})
----------------------------------------------------------------------------------
local Game = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Client = Game:AddSection({
	Name = "Client"
})
local Map = Game:AddSection({
	Name = "Map"
})
----------------------------------------------------------------------------------
local Teleports = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Area = Teleports:AddSection({
	Name = "Areas"
})
local Mode = Teleports:AddSection({
	Name = "Modes"
})

Cheat:AddToggle({
	Name = "Slap Aura",
	Default = false,
	Callback = function(bool)
      if bool == true then
OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Slap Aura Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
end
       getgenv().Aura = bool
				while getgenv().Aura == true do
					task.wait()
					for _, L_8 in pairs(game.Players:GetPlayers()) do
						if L_8 ~= game.Players.LocalPlayer then
							if L_8.Character:FindFirstChild("HumanoidRootPart") ~= nil and L_8.Character:FindFirstChild("Humanoid") and not L_8.Character:FindFirstChild("Dead")  and not game.Players.LocalPlayer.Character:FindFirstChild("Dead")  then
								local magnitude =
								(L_8.Character.HumanoidRootPart.Position -
								game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
								if 20 >= magnitude  then
									game:GetService("ReplicatedStorage").Events.Slap:FireServer(L_8.Character.Torso)
								end
							end
						end
					end
            end
	end  
})

Cheat:AddTextbox({
	Name = "Set Walkspeed (Default = 20)",
	Default = "20",
	TextDisappear = true,
	Callback = function(JP)
      _G.settingsTable.Speed = JP
	
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.settingsTable.Speed + 0.554494
	end	  
})

Cheat:AddTextbox({
	Name = "Set Jumppower (Default = 50)",
	Default = "50",
	TextDisappear = true,
	Callback = function(WS)
      _G.settingsTable.Jump = WS
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = _G.settingsTable.Jump
	end	  
})

Item:AddButton({
	Name = "Get All Items!",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Get all Items Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Item:AddButton({
	Name = "Use All Perm Items!",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Use all Perm Items Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
     for _, L_1 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if
                    L_1:IsA("Tool") and L_1.Name == "Potion of Strength" or L_1.Name == "Bull's essence" or
                        L_1.Name == "Speed Potion" or
                        L_1.Name == "Boba" or
                        L_1.Name == "Frog Potion" or
                        L_1.Name == "Strength Brew" or
                        L_1.Name == "Frog Brew" or
                        L_1.Name == "Speed Brew"
                 then
                    L_1.Parent = game.Players.LocalPlayer.Character
                end
            end
            wait(.5)
            for _, L_2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if L_2:IsA("Tool") then
                    L_2:Activate()
                end
          end
    end
})

Item:AddButton({
	Name = "Bomb Bus (For Trolling!)",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Bomb Bus Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
        local lp = game.Players.LocalPlayer
			for _, L_3 in ipairs(game.Workspace:GetDescendants()) do
				if L_3:IsA("TouchTransmitter") and L_3.Parent.Name == "Handle" and L_3.Parent.Parent.Name == "Bomb" and workspace:FindFirstChild("BusModel") then

        
					lp.Character.Humanoid:EquipTool(L_3.Parent.Parent)
				end
			end
			wait(.1)
			for _, L_4 in pairs(lp.Backpack:GetChildren()) do
				if L_4:IsA("Tool") and L_4.Name == "Bomb" then
					L_4.Parent = lp.Character
				end
			end
			wait(.25)
			for _, L_5 in pairs(lp.Character:GetChildren()) do
				if L_5:IsA("Tool") and L_5.Name == "Bomb" then
					L_5:Activate()
				end
            end
  	end    
})

Badge:AddButton({
	Name = "Get Lab Code! (Open Console to view the Code!)",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Get Lab Code Toggled!",
	Content = "Make sure to Open the Console to view the Code!",
	Image = "rbxassetid://4483345998",
	Time = 6
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
                    print(tostring(Code))
                end
          end
  	end    
})

Client:AddToggle({
	Name = "Remove Zone Blur",
	Default = false,
	Callback = function(Blur)
            if Blur == true then
              OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Remove Zone Blur Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
end
      if Blur == true then  
	game:GetService("ReplicatedStorage").ZoneEffects.ZoneBlur.Enabled = false
	game:GetService("ReplicatedStorage").ZoneEffects.ZoneColorCorrection.Enabled = false
    else
    game:GetService("ReplicatedStorage").ZoneEffects.ZoneBlur.Enabled = true
    game:GetService("ReplicatedStorage").ZoneEffects.ZoneColorCorrection.Enabled = true   
            end
	end    
})

Map:AddButton({
	Name = "Anti Acid",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Anti Acid Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
    local Anti_Acid = Instance.new("Part", workspace)
		Anti_Acid.Size = Vector3.new(154, 26, 132)
		Anti_Acid.Position = Vector3.new(-60, -5, -731)
		Anti_Acid.Transparency = 1
		Anti_Acid.Anchored = true
  	end    
})

Map:AddButton({
	Name = "Anti Lava",
	Callback = function(AntiLava)
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Anti Lava Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local AntiLava = Instance.new("Part", game.Workspace)
	    AntiLava.Position = Vector3.new(-238, -43, 401)
	    AntiLava.Size = Vector3.new(150,10,150)
	    AntiLava.Anchored = true
	    AntiLava.Transparency = 1
  	end    
})

Map:AddButton({
	Name = "Destroy Lab (Items still remains!)",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Destroy Lab Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      spawn(
            function()
game:GetService("Workspace").Map.OriginOffice:Destroy()
end
            )
  	end    
})

Area:AddButton({
	Name = "TP to School",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to School Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Area:AddButton({
	Name = "TP to Field",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Field Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Area:AddButton({
	Name = "TP to Hallow Hills",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Hallow Hills Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Area:AddButton({
	Name = "TP to Mini Market",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Mini Market Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Area:AddButton({
	Name = "TP Under the Map",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP Under the Map Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Area:AddButton({
	Name = "TP to Desert",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Desert Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
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
  	end    
})

Area:AddButton({
	Name = "TP to Cave",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Cave Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6 
})
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
  	end    
})

Mode:AddButton({
	Name = "TP to Normal Gamemode",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Normal Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 10
})
            game:GetService("TeleportService"):Teleport(6403373529)
  	end    
})

Mode:AddButton({
	Name = "TP to Killstreak Only",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Killstreak Only...",
	Image = "rbxassetid://4483345998",
	Time = 10
})
            game:GetService("TeleportService"):Teleport(11520107397)
  	end    
})

Mode:AddButton({
	Name = "TP to No Oneshot",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to No Oneshot...",
	Image = "rbxassetid://4483345998",
	Time = 10
})
            game:GetService("TeleportService"):Teleport(9015014224)
  	end    
})

Mode:AddButton({
	Name = "TP to Slap Royale Matchmaking",
	Callback = function()
      OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Slap Royale Matchmaking...",
	Image = "rbxassetid://4483345998",
	Time = 10
})
            game:GetService("TeleportService"):Teleport(9426795465)
  	end    
})

    OrionLib:MakeNotification({
	Name = "Script Loaded!",
	Content = "Thank you for using our Script! 😘😃",
	Image = "rbxassetid://4483345998",
	Time = 15
})

    game:GetService("SoundService").KillSound.SoundId = "rbxassetid://2440889605"

	print("Rlap Soyale Hub Took " .. tick() - Time .. " Seconds To Fully Load! ")
    
OrionLib:Init()
  end
end)

if not Success then
  warn("\nSlap Royale Script - Failed to Load! Error code: " .. Response .. "\n")
    end