    if not game:IsLoaded() then        
        game.Loaded:Wait()       
    end
    task.wait()
    if game.PlaceId == 6403373529 or game.PlaceId == 11520107397 or game.PlaceId == 9015014224 then
    task.wait()
    end

   local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/Gloves.lua"))()

   local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/Functions.lua"))()

local function getGlove()	    
       return game.Players.LocalPlayer.leaderstats.Glove.Value	    
    end

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local Win1 = DiscordLib:Window("Blap Slattles Hub (Owner)")

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
local AdvanceChann = PlayerTab:Channel("Troll")
local TeleportChann = PlayerTab:Channel("Teleports")

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

AutoChann:Label("WARNING ⚠️: SOMETIMES THE AUTO SLAPPLE FARM") 

AutoChann:Label("DOESN'T WORK AND SOMETIMES SOME DEVICES CRASHED!")

AutoChann:Label("DO IT AT YOUR OWN RISK!")

BadgesChann:Button("TP to SafeSpot (Recommended)", function()
if not workspace:FindFirstChild("Spot") then
    local SafeSpot = Instance.new("Part", workspace)
    SafeSpot.Position = Vector3.new(-5516,104,-3433) 
    SafeSpot.Name = "Spot"    
    SafeSpot.Size = Vector3.new(45,2,45)    
    SafeSpot.Anchored = true    
    SafeSpot.Transparency = .5 
    Time = 0
    else

       end
    if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
        else
            print("Enter the Arena First! ")
        end
end)

BadgesChann:Label("Note 📝: To get Tped to SafeSpot, you must Enter the Arena!")

BadgesChann:Label("TIP ℹ️: Recommended to TP to SafeSpot if your farming for")

BadgesChann:Label("Voodoo, Fish, Trap/Moyai and Bob!")

BadgesChann:Toggle("Bob Farm! (Safespot Recommended!)",false, function(bool)
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

BadgesChann:Button("Get [ R E D A C T E D ]!", function()
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
        print("YOU ALREADY HAVE [ R E D A C T E D ] GLOVE !!!")
        print("OR YOU DONT HAVE 5K SLAPS! GRIND SOME MOREEE!!")
        end
end)

BadgesChann:Label("Note 📝: In Order to use Get [ R E D A C T E D ]!, you must") 

BadgesChann:Label("have 5k slaps or above!") 

BadgesChann:Button("Get Tycoon!", function()
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

CombatChann:Toggle("Slap Aura (Enable with Slap Farm!)",false, function(bool)
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
end)

PerksChann:Toggle("Auto Remove User",false, function(bool)
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
end)

PerksChann:Toggle("Anti Megarock/CUSTOM",false, function(bool)
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
end)

local sldr = PerksChann:Slider("Set Walkspeed", 20, 400, 20, function(WS)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
        WS1 = WS
end)

PerksChann:Toggle("Auto Set Walkspeed",false, function(bool)
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
end)

local sldr = PerksChann:Slider("Set Jumppower", 50, 400, 50, function(JP)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP     
        WS2 = JP
end)

PerksChann:Toggle("Auto Set Jumppower",false, function(bool)
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
end)

TeleportChann:Button("TP to SafeSpot", function()
if not workspace:FindFirstChild("Spot") then
    local SafeSpot = Instance.new("Part", workspace)
    SafeSpot.Position = Vector3.new(-5516,104,-3433) 
    SafeSpot.Name = "Spot"    
    SafeSpot.Size = Vector3.new(45,2,45)    
    SafeSpot.Anchored = true    
    SafeSpot.Transparency = .5 
    Time = 0
    else

       end
    if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
        else
            print("Enter the Arena First! ")
        end
end)

TeleportChann:Button("TP to Arena", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3,-5,30)
wait(0.1)
pl.CFrame = location
end)

TeleportChann:Button("TP to Tournament", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3405,82,-27)
wait(0.1)
pl.CFrame = location
end)

TeleportChann:Button("TP to Tournament Lobby", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3031,125,0)
wait(0.1)
pl.CFrame = location
end)