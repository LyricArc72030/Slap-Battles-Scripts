
    if not game:IsLoaded() then        
        game.Loaded:Wait()       
    end
    task.wait()
    if game.PlaceId == 6403373529 or game.PlaceId == 11520107397 or game.PlaceId == 9015014224 then
    task.wait()
end

   local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/Gloves"))()

   local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/Functions"))()

local function getGlove()	    
       return game.Players.LocalPlayer.leaderstats.Glove.Value	    
    end

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local Win1 = DiscordLib:Window("Blap Slattles Hub")

local MainTab = Win1:Server("Main", "")
local AutoChann = MainTab:Channel("Auto Farms")
local BadgesChann = MainTab:Channel("Badges Farms")
--------------------------------------------------------
local CheatsTab = Win1:Server("Cheats", "")
local CombatChann = CheatsTab:Channel("Combat")
local AntiChann = CheatsTab:Channel("Anti")
--------------------------------------------------------
local PlayerTab = Win1:Server("Player", "")
local PerksChann = PlayerTab:Channel("Perks")
local AdvanceChann = PlayerTab:Channel("Advance")

AutoChann:Toggle("Slap Farm",false, function(bool)
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
end)

AutoChann:Toggle("Auto Slapple Farm",false, function(bool)
            getgenv().Slapple = bool
                if bool == true then
                    while getgenv().Slapple do
                        wait(.001)
                        for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do
                            if Instance.ClassName == "TouchTransmitter" then
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)                           
                                wait(0.1)
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)
                            end
                        end
                    end
                end
end)

BadgesChann:Button("TP to Safespot (Recommended)", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-5516, 109, -3433)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
    local SafeSpot = Instance.new("Part", workspace)
    SafeSpot.Position = Vector3.new(-5516,104,-3433) 
    SafeSpot.Name = "Spot"    
    SafeSpot.Size = Vector3.new(50,2,50)    
    SafeSpot.Anchored = true    
    SafeSpot.Transparency = .5 
    Time = 0
DiscordLib:Notification("Teleported!", "Teleported Successfully!", "Okay!")
end)

BadgesChann:Toggle("Bob Farm",false, function(bool)
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
end)

CombatChann:Toggle("Anti Void",false, function(noVoid)
    if noVoid == true then            
            for i,v in pairs(game.Workspace:GetDescendants()) do                
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then           
                    if v.CanCollide == false then           
                        v.CanCollide = true                
                        v.Material = "ForceField"      
                        v.Color = Color3.new(255,2,255)   
                        v.Transparency = .9
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
    end)
                                            
CombatChann:Toggle("Anti Ragdoll",false, function(bool)
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
end)                        
                        
                        
                        

                        
 
 
