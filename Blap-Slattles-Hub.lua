    if not game:IsLoaded() then     
        game.Loaded:Wait()      
end

wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Game Detected! Loading...";
    Text = "If the script doesn't load, try to Execute the Script again!";
    Duration = 6;
})

local Success, Response = pcall(function()
local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)  
    task.wait()   
    if setfpscap then     
        setfpscap(12569)       
end

   local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/Gloves.lua"))()

   local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/Functions.lua"))()

local function getGlove()	    
       return game.Players.LocalPlayer.leaderstats.Glove.Value	    
end

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/Main-Script/main/Main2.lua"))()
local Window = OrionLib:MakeWindow({Name = "Blap Slattles Hub (Beta)", HidePremium = false, IntroEnabled = true, IntroText = "Slap Battles Script"})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Auto = Main:AddSection({
	Name = "Auto Farms"
})
local Badges = Main:AddSection({
	Name = "Badges Farms"
})
----------------------------------------------------------------------------------
local Cheats = Window:MakeTab({
	Name = "Cheats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Combat = Cheats:AddSection({
	Name = "Combat"
})
local Anti = Cheats:AddSection({
	Name = "Anti"
})
----------------------------------------------------------------------------------
local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Set = Player:AddSection({
	Name = "Set Walk and Jump"
})
local Perks = Player:AddSection({
	Name = "Perks"
})
local Annoy = Player:AddSection({
	Name = "Annoy"
})
----------------------------------------------------------------------------------
local Teleport = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Modes = Teleport:AddSection({
	Name = "Modes"
})

Auto:AddToggle({
	Name = "Slap Farm",
	Default = false,
	Callback = function(bool)
          if bool == true then
      OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Slap Farm Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      allFarming = bool
                if bool == true then                    
                    if setfpscap then                       
                        setfpscap(50)                  
                    end                   
                    workspace.DEATHBARRIER.CanTouch = false
                    workspace.DEATHBARRIER2.CanTouch = false
                    workspace.dedBarrier.CanTouch = false    
                    task.wait()
                    while allFarming do
                        task.wait()                      
                        pcall(function()                     
                        for Index, Human in next, game.Players:GetPlayers() do                         
                            if Human ~= game.Players.LocalPlayer and Human.Character and not Human.Character:FindFirstChild("isParticipating") and Human.Character:FindFirstChild("Torso") and Human.Character:FindFirstChild("Head") and Human.Character:FindFirstChild("entered") and Human.Character.Head:FindFirstChild("UnoReverseCard") == nil and Human.Character:FindFirstChild("rock") == nil and Human.Character.Ragdolled.Value == false then                              
                                if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then                             
                                task.wait(.1)                
                                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = Human.Character:FindFirstChild("Right Leg").CFrame * CFrame.new(6,-5,6)                            
                                        task.wait()          
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true                                 
                                        wait(.25)            
                                    shared.gloveHits[getGlove()]:FireServer(Human.Character:FindFirstChild("Torso"))                                  
                                        wait(.25)            
                                    end
                                end
                        end                  
                        end)                   
                        end               
                    
                    else               
                    if setfpscap then             
                    setfpscap(1269)                
                    end               
                    workspace.DEATHBARRIER.CanTouch = true
                    workspace.DEATHBARRIER2.CanTouch = true
                    workspace.dedBarrier.CanTouch = true             
                    if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then                    
                        task.wait(3)                     
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false                      
                    end                
                end
          end
	end    
})

Auto:AddToggle({
	Name = "Auto Slapple Farm",
	Default = false,
	Callback = function(bool)
            if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Auto Slapple Farm Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      getgenv().Slapple = bool
                if bool == true then
                    while getgenv().Slapple do
                        wait(.001)
                        for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do
                            if Instance.ClassName == "TouchTransmitter" then
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)
                            end
                        end
                    end
      end
          end
	end    
})

Badges:AddButton({
	Name = "TP to SafeSpot",
	Callback = function()
          OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to SafeSpot Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
        else
            print("Enter the Arena First!")
      end
  end    
})

Badges:AddToggle({
	Name = "Bob Farm (SafeSpot Recommended!)",
	Default = false,
	Callback = function(bool)
              if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Bob Farm Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      bobFarm = bool       
        if bool == true then           
            while bobFarm do                
                task.wait()                
                    if getGlove() == "Replica" and bobFarm and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
                    game.ReplicatedStorage.Duplicate:FireServer()
                    task.wait()                   
                    tick = os.time()                    
                    repeat task.wait()                       
                    until os.time() - tick >= 5.1           
                    end
            end          
            else
            task.wait(10.2)
      end
          end
	end    
})

Badges:AddToggle({
	Name = "Fish Farm",
	Default = false,
	Callback = function(bool)
                if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Fish Farm Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      fishFarm = bool  
        if bool == true then          
        if game.Players.LocalPlayer.Character:FindFirstChild("entered") and getGlove() == "ZZZZZZZ" then         
            print("TOGGLE THE FISH FARM NOW!!!")
            task.wait()      
            print("------------------------------------")           
            task.wait()         
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Spot"].CFrame * CFrame.new(0,8,0)         
            task.wait(.5)        
            game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()          
        else       
            print("FAILED TO TELEPORT TO SAFE SPOT!! PLS DO IT MANUALLY!!!")     
        end      
        task.wait()     
            while fishFarm and task.wait() do    
                if getGlove() == "ZZZZZZZ" and workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("entered") then             
                    if workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("Ragdolled").Value then               
                        task.wait(1)                
                        Time += 1                  
                        print(Time)              
                    else              
                    Time = 0              
                    end          
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
      end
          end
	end    
})

Badges:AddButton({
	Name = "Get [ R E D A C T E D ]! (Must have 5k slaps or above!)",
	Callback = function()
          OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Get [ R E D A C T E D ] Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local Door = 1
        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) and 5000 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then
        repeat  
        task.wait(.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PocketDimension.Doors[Door].CFrame
        Door = Door + 1
        print(Door)
        wait(5)
        until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850)
        else 
        print("YOU ALREADY HAVE [ R E D A C T E D ] GLOVE !!")
        print("OR YOU DONT HAVE 5K SLAPS!!")
      end
  end    
})

Badges:AddButton({
	Name = "Get Tycoon! (Enter Arena First!)",
	Callback = function()
          OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Get Tycoon Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) then          
            if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then              
            repeat task.wait(.5)                              
            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)                          
            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
                            
            until game.Players.LocalPlayer.Character:FindFirstChild("entered")        
            else          
            end        
            repeat task.wait(.5)            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0)
                
            until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145)       
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
      end
  end
})

Combat:AddToggle({
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
      getgenv().SlapAura = bool
            if bool == true then
                while getgenv().SlapAura do
                    task.wait(.005)                     
                        pcall(function()                         
                        for Index, Player in next, game.Players:GetPlayers() do
                            
                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
                                
                                if Player.Character:FindFirstChild("Head") then
                                    
                                if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
                                    
                                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude                                
                                    if 25 >= Magnitude then 
                                        shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))                                  
                                end                          
                                    end
                            end                        
                                end
                        end                 
                        end
                    end)
                end             
      end
          end
	end    
})

Combat:AddToggle({
	Name = "Anti Ragdoll",
	Default = false,
	Callback = function(bool)
                    if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Ragdoll Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      antiRagdoll = bool       
        if bool == true then           
        game.Players.LocalPlayer.Character.Humanoid.Health = 0      
        task.wait()      
        game.Players.LocalPlayer.CharacterAdded:Connect(function()

            local Character = game.Workspace[game.Players.LocalPlayer.Name]
          
            task.wait()         
            Character:WaitForChild("Ragdolled").Changed:Connect(function()
                
                if Character:WaitForChild("Ragdolled").Value == true and antiRagdoll == true then                 
                    repeat task.wait()                      
                    Character.Torso.Anchored = true                    
                    until Character:FindFirstChild("Torso") == nil or Character:WaitForChild("Ragdolled").Value == false                 
                    Character.Torso.Anchored = false
                end              
            end)         
        end)       
      end
          end
	end    
})

Combat:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(noVoid)
                      if noVoid == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Void Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      if noVoid == true then          
            for i,v in pairs(game.Workspace:GetDescendants()) do          
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then      
                    if v.CanCollide == false then        
                        v.CanCollide = true               
                        v.Material = "ForceField"            
                        v.Color = Color3.new(255,90,255)   
                        v.Transparency = .9 
                    end
                end      
            end  
            end
            else           
            for i,v in pairs(game.Workspace:GetDescendants()) do             
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then      
                    if v.CanCollide == true then          
                        v.CanCollide = false                 
                        v.Transparency = 1        
                    end
                end           
            end     
       end
	end    
})

Anti:AddToggle({
	Name = "Anti Megarock/CUSTOM",
	Default = false,
	Callback = function(bool)
                        if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Megarock/CUSTOM Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      AntiRock = bool      
        if bool == true then          
            while AntiRock do            
                task.wait(.1)           
        for _, Instance in pairs(game.Workspace:GetDescendants()) do              
            if Instance.Name == "rock" and Instance.CanTouch == true then
                Instance.CanTouch = false                     
                Instance.CanQuery = false                   
            end                 
                    
        end            
            end  
            end
        else      
        task.wait(.1)  
        for _, Instance in pairs(game.Workspace:GetDescendants()) do                 
            if Instance.Name == "rock" and Instance.CanTouch == false then           
                task.wait()         
                Instance.CanTouch = true
                        
                Instance.CanQuery = true                  
            end   
        end         
      end
	end    
})

Anti:AddToggle({
	Name = "Anti Admins",
	Default = false,
	Callback = function(bool)
                          if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Admins Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      antiAdmins = bool    
    if bool == true then           
        game.Players.PlayerAdded:Connect(function(Plr)
            
            if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                game.Players.LocalPlayer:Kick("An Admin joins your Server! 🔥")
            end         
        end)      
      end
            end
	end    
})

Anti:AddToggle({
	Name = "Anti Hallow Jack",
	Default = false,
	Callback = function(bool)
                            if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Hallow Jack Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      antiHallow = bool        
        if bool == true then           
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true  
            end
        else       
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true       
      end
	end    
})

Anti:AddToggle({
	Name = "Anti Squid",
	Default = false,
	Callback = function(bool)
                              if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Squid Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      AntiSquid = bool        
        if bool == true then          
            while AntiSquid do         
            task.wait()         
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.SquidInk:GetChildren()) do             
                if v.Parent then               
                    v:Destroy()               
                end          
            end       
            end     
      end
                end
	end    
})

Anti:AddToggle({
	Name = "Anti Za-Hando",
	Default = false,
	Callback = function(bool)
                                if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Za-Hando Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      getgenv().AntiZaHando = bool      
        if bool == true then         
            while getgenv().AntiZaHando do             
                wait(.001)               
                for i,v in pairs(game.Workspace:GetChildren()) do                
                    if v.ClassName == "Part" and v.Name == "Part" then                      
                        v:Destroy()                 
                    end                
                end            
            end
      end
                  end
	end    
})

Anti:AddToggle({
	Name = "Anti Booster",
	Default = false,
	Callback = function(bool)
                                  if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Booster Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      antiBooster = bool      
        if bool == true then         
            if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1) then          
                game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1):Destroy()          
            end      
            task.wait()         
            game.Workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function(v)            
                if antiBooster == true then               
                    if v.Name == "BoosterObject" then                   
                        task.wait(.1)                 
                        v:Destroy()                   
                    end          
                end            
            end)
      end
                    end
	end    
})

Anti:AddToggle({
	Name = "Anti Mail",
	Default = false,
	Callback = function(bool)
                                    if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Mail Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      antiMail = bool       
        if bool == true then          
            game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(UI)              
                if antiMail == true then                
                    if UI.Name == "MailPopup" then           
                        UI.Frame.Visible = false             
                        task.wait()                  
                        game.Players.LocalPlayer.Character.Head.MailIcon:Destroy()               
                    end          
                end            
            end)
            end
        else 
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MailPopup") then          
            game.Players.LocalPlayer.PlayerGui.MailPopup.Frame.Visible = true      
            task.wait()          
        end     
      end
	end    
})

Anti:AddToggle({
	Name = "Anti Reaper",
	Default = false,
	Callback = function(bool)
                                      if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Reaper Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      getgenv().AntiReaper = bool      
        if bool == true then         
            while getgenv().AntiReaper do      
                wait(.001)     
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "DeathMark" then
                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end     
                end       
            end         
      end
                        end
	end    
})

Anti:AddToggle({
	Name = "Anti Pusher",
	Default = false,
	Callback = function(bool)
                                        if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Pusher Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      getgenv().AntiPusher = bool     
        if bool == true then
            while getgenv().AntiPusher do       
                wait(.001)       
                for i,v in pairs(game.Workspace:GetChildren()) do   
                    if v.Name == "wall" then      
                    v.CanCollide = false      
                    end
                end      
            end         
      end
                          end
	end    
})

Anti:AddToggle({
	Name = "Anti Stun",
	Default = false,
	Callback = function(bool)
                                          if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Anti Stun Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      antiStun = bool     
        if bool == true then         
            while antiStun do             
            task.wait()         
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true and not Farming and not allFarming and not game.Players.LocalPlayer.Character.Ragdolled.Value == true and game.Workspace:FindFirstChild("Shockwave") then             
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false             
            end         
            end         
      end
                            end
	end    
})

Set:AddTextbox({
	Name = "Set Walkspeed (Default = 20)",
	Default = "20",
	TextDisappear = true,
	Callback = function(WS)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
        WS1 = WS
	end	  
})

Set:AddToggle({
	Name = "Auto Set Walkspeed",
	Default = false,
	Callback = function(bool)
                                            if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Auto Set Walkspeed Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      autoSet1 = bool
        if bool == true then
            while autoSet1 do
                task.wait()
                local Character = workspace:WaitForChild(game.Players.LocalPlayer.Name)
                if Character:FindFirstChild("Humanoid") ~= nil and Character.Humanoid.WalkSpeed ~= WS1 then
                    Character:FindFirstChild("Humanoid").WalkSpeed = WS1
                end
            end
      end
          end
	end    
})

Set:AddTextbox({
	Name = "Set Jumppower (Default = 50)",
	Default = "50",
	TextDisappear = true,
	Callback = function(JP)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP     
        WS2 = JP
	end	  
})

Set:AddToggle({
	Name = "Auto Set Jumppower",
	Default = false,
	Callback = function(bool)
                                              if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Auto Set Jumppower Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      autoSet2 = bool
        if bool == true then
            while autoSet2 do
                task.wait()
                local Character = workspace:WaitForChild(game.Players.LocalPlayer.Name)
                if Character:FindFirstChild("Humanoid") ~= nil and Character.Humanoid.JumpPower ~= WS2 then
                    Character:FindFirstChild("Humanoid").JumpPower = WS2
                end
            end
      end
          end
	end    
})

Perks:AddToggle({
	Name = "Auto Remove User",
	Default = false,
	Callback = function(bool)
                                                if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Auto Remove User Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      Auto_Remove = bool       
        if bool == true then      
        game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()         
            task.wait()          
            game.Players.LocalPlayer.CharacterAdded:Connect(function()             
                if Auto_Remove == true then                
                repeat task.wait()                
                until game.Players.LocalPlayer.Character:FindFirstChild("Head")
                game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()                 
                end             
            end)  
      end
          end
	end    
})

Perks:AddToggle({
	Name = "Auto Enter Arena",
	Default = false,
	Callback = function(bool)
                                                  if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Auto Enter Arena Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      getgenv().autoJoin = bool
            if bool == true then
                while getgenv().autoJoin do
                    wait()                  
                        repeat task.wait() until game.Players.LocalPlayer.Character
                    
                        if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then                         
                            repeat task.wait(.005)           
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)           
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
                            until game.Players.LocalPlayer.Character:FindFirstChild("entered") 
                        end        
                end             
      end
            end
	end    
})

Perks:AddToggle({
	Name = "Auto Invis (Must Equip Ghost then Reset!)",
	Default = false,
	Callback = function(bool)
                                                    if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Auto Invis Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      autoInvis = bool
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
                if autoInvis == true and 666 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then
        
                    repeat task.wait()                   
                    until game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("Nametag") ~= nil                  
                    game.Players.LocalPlayer.Character.Head.Nametag:Destroy()
                    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()
                    task.wait(.1)
                    local gloveClick = game.Players.LocalPlayer.leaderstats.Glove.Value
                    task.wait(.2)
                    fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
                    task.wait(.2)
                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
                    task.wait(.2)
                    fireclickdetector(game.Workspace.Lobby[gloveClick].ClickDetector)
                end
            end)
              end
	end    
})

Perks:AddToggle({
	Name = "Disable Cube of Death",
	Default = false,
	Callback = function(bool)
                                                      if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Disable Cube of Death Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      if bool == true then   
        if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
            
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        end 
            end
        else          
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
                
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
      end
	end    
})

Annoy:AddToggle({
	Name = "Spam Space Sound",
	Default = false,
	Callback = function(bool)
                                                        if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Spam Space Sound Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      spamSpace = bool   
    if bool == true then      
        while spamSpace do         
            task.wait()        
            if getGlove() == "Space" then
                game.ReplicatedStorage["ZeroGSound"]:FireServer()              game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
            end         
        end 
            end
    else
        for x = 1,5 do
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
        end
        
      end
	end    
})

Annoy:AddToggle({
	Name = "Spam Error Sound",
	Default = false,
	Callback = function(bool)
                                                          if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Spam Error Sound Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      errorSpam = bool        
        if bool == true then           
            while errorSpam do              
                task.wait()             
                game.ReplicatedStorage.ErrorDeath:FireServer()             
            end
      end
            end
	end    
})

Annoy:AddToggle({
	Name = "Spam Ping Pong",
	Default = false,
	Callback = function(bool)
                                                            if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Spam Ping Pong Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      spamBall = bool     
    if bool == true then      
        while spamBall and task.wait() do          
            if getGlove() == "Ping Pong" then              
                game.ReplicatedStorage.GeneralAbility:FireServer()
            end          
        end      
      end
              end
	end    
})

Annoy:AddToggle({
	Name = "Spam Thanos Sound",
	Default = false,
	Callback = function(bool)
                                                              if bool == true then
          OrionLib:MakeNotification({
	Name = "Toggle Enabled!",
	Content = "Spam Thanos Sound Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      autoThanos = bool      
        if bool == true then
            while autoThanos do           
                task.wait()
                if getGlove() == "Thanos" then
                    task.wait()               
                    game.ReplicatedStorage.Illbeback:FireServer()            
                end
            end
      end
                end
	end    
})

local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/HWID-Whitelist.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i, v in pairs(HWIDTable) do
      if v == HWID then
           print("Script Loaded!")
    local Area = Teleport:AddSection({
	Name = "Areas"
})
    
    Area:AddButton({
	Name = "TP to SafeSpot",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to SafeSpot Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
        else
            print("Enter the Arena First!")
          end
  	end    
})

    Area:AddButton({
	Name = "TP to Arena",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Arena Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3,-5,30)
wait(0.1)
pl.CFrame = location
  	end    
})

    Area:AddButton({
	Name = "TP to Tournament",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Tournament Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3405,82,-27)
wait(0.1)
pl.CFrame = location
  	end    
})

    Area:AddButton({
	Name = "TP to Tournament Lobby",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Tournament Lobby Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3031,125,0)
wait(0.1)
pl.CFrame = location
  	end    
})

    Area:AddButton({
	Name = "TP to Moyai Island",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Moyai Island Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
local location = CFrame.new(230,-15,1) 
wait(0.1) 
pl.CFrame = location
  	end    
})

    Area:AddButton({
	Name = "TP to Slapple (Keypad) Spot",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Slapple (Keypad) Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
local location = CFrame.new(-426,51,-38) 
wait(0.1) 
pl.CFrame = location
  	end    
})

    Area:AddButton({
	Name = "TP to Golden Slapple Spot Spawn",
	Callback = function()
              OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "TP to Golden Slapple Spot Spawn Toggled!",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart  
local location = CFrame.new(-418,91,-31)  
wait(0.1)  
pl.CFrame = location
  	end    
})
  else
           print("Script Loaded!")
  end
end

local gameid = game.PlaceId

if(gameid == 6403373529) then
  Modes:AddButton({
	Name = "TP to Killstreak Only",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Killstreak Only Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(11520107397)
  	end    
})

  Modes:AddButton({
	Name = "TP to No Oneshot Mode",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to No Oneshot Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(9015014224)
  	end    
})

  Modes:AddButton({
	Name = "TP to Slap Royale (Must have 1k slaps or above!)",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Slap Royale Matchmaking...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(9426795465)
  	end    
})
else

end

local gameid = game.PlaceId

if(gameid == 11520107397) then
  Modes:AddButton({
	Name = "TP to No Oneshot Mode",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to No Oneshot Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(9015014224)
  	end    
})

  Modes:AddButton({
	Name = "TP to Normal Gamemode",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Normal Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(6403373529)
  	end    
})

  Modes:AddButton({
	Name = "TP to Slap Royale (Must have 1k slaps or above!)",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Slap Royale Matchmaking...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(9426795465)
  	end    
})

else

end

local gameid = game.PlaceId

if(gameid == 9015014224) then
  Modes:AddButton({
	Name = "TP to Normal Gamemode",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Normal Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(6403373529)
  	end    
})

  Modes:AddButton({
	Name = "TP to Killstreak Only",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Killstreak Only Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(11520107397)
  	end    
})

  Modes:AddButton({
	Name = "TP to Slap Royale (Must have 1k slaps or above!)",
	Callback = function()
            OrionLib:MakeNotification({
	Name = "Button Toggled!",
	Content = "Teleporting to Slap Royale Gamemode...",
	Image = "rbxassetid://4483345998",
	Time = 6
})
      game:GetService("TeleportService"):Teleport(9426795465)
  	end    
})
else

end

OrionLib:MakeNotification({
	Name = "Script Loaded!",
	Content = "Thank you for using our Script! Enjoy!! 😃💕",
	Image = "rbxassetid://4483345998",
	Time = 15
})

    shared.removeBlue()
    ------------------
    shared.autofarmTab()
    ------------------
    shared.createSpot()

OrionLib:Init()
  end)

if not Success then
  warn("\nSlap Battles Script - Failed to Load! Error code: " .. Response .. "\n")
end