    if not game:IsLoaded() then     
        game.Loaded:Wait()      
    end
    task.wait()
    if game.PlaceId == 6403373529 or game.PlaceId == 11520107397 or game.PlaceId == 9015014224 then
    task.wait()
end
 
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

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Blap Slattles Hub", "BloodTheme")

local MainTab = Window:NewTab("Main")
local AutoSection = MainTab:NewSection("Auto Farms")
local BadgesSection = MainTab:NewSection("Badges Farms")
----------------------------------------------------------------------------------
local CheatsTab = Window:NewTab("Cheats")
local CombatSection = CheatsTab:NewSection("Combat")
local AntiSection = CheatsTab:NewSection("Anti")
----------------------------------------------------------------------------------
local PlayerTab = Window:NewTab("Player")
local SetSection = PlayerTab:NewSection("Set Walk and Jump")
local PerksSection = PlayerTab:NewSection("Perks")
local AnnoySection = PlayerTab:NewSection("Annoy")

AutoSection:NewToggle("Slap Farm", "Farm Slaps while your AFK!", function(bool)
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

AutoSection:NewToggle("Auto Slapple Farm", "Auto Farms Slapples for you!", function(bool)
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

BadgesSection:NewButton("TP to SafeSpot (Recommended)", "Let's you TP in SafeSpot for farming Gloves!", function()
    if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
        else
            print("Enter the Arena First! ")
        end
end)

BadgesSection:NewToggle("Bob Farm (SafeSpot Recommended!)", "Auto Farms Bob for you till you spawned Bob!", function(bool)
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

BadgesSection:NewToggle("Fish Farm", "Farm Fish for you!", function(bool)
        fishFarm = bool
        if bool == true then        
        if game.Players.LocalPlayer.Character:FindFirstChild("entered") and getGlove() == "ZZZZZZZ" then         
            print("READY")
            task.wait()        
            print("-------------------------------------------")       
            task.wait()       
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Spot"].CFrame * CFrame.new(0,8,0)         
            task.wait(.5)           
            game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()          
        else           
            print("FAILED TO TELEPORT TO SAFE SPOT PLEASE DO IT MANUALLY")      
        end     
        task.wait()   
            while fishFarm and task.wait() do    
                if getGlove() == "ZZZZZZZ" and workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("entered") then               
                    if workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("Ragdolled").Value then                  
                        task.wait(1)                  
                        Time += 1 -- Editor Bug ( Works )                     
                        print(Time)                   
        else                  
                    Time = 0                   
                    end              
                end
            end   
        else        
            game.Players.LocalPlayer.Character.Humanoid.Health = 0        
        end
end)

BadgesSection:NewButton("Get [ R E D A C T E D ]!", "Auto farms [ R E D A C T E D ] glove for you!", function()
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
        print("OR YOU DONT HAVE 5K SLAPS!")
        end
end)

BadgesSection:NewButton("Get Elude!", "Insta Gets Elude for you!", function()
    local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport

if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        
        local localPlr = game:GetService("Players").LocalPlayer
        repeat wait() until localPlr
        
        game:GetService("RunService").RenderStepped:Connect(function()
            localPlr.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597)
        end)
    ]])
end

game:GetService("TeleportService"):Teleport(11828384869)
end)

BadgesSection:NewButton("Get Tycoon!", "Auto get Tycoon for you! (Enter the Arena first!)", function()
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

CombatSection:NewToggle("Anti Void", "Let's you block, walk in the Void!", function(noVoid)
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

CombatSection:NewToggle("Anti Ragdoll", "Avoids you to be ragdolled if you got slapped!", function(bool)
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

CombatSection:NewToggle("Slap Aura", "Slaps people near you!", function(bool)
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

AntiSection:NewToggle("Anti Megarock/CUSTOM", "Let's you touch Megarocks/CUSTOMS!", function(bool)
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

AntiSection:NewToggle("Anti Admins", "Kicks you when an Admin joins!", function(bool)
    antiAdmins = bool
    if bool == true then          
        game.Players.PlayerAdded:Connect(function(Plr)         
            if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                game.Players.LocalPlayer:Kick("An Admin Joins your Server! 🔥")
            end         
        end)       
    end
end)

AntiSection:NewToggle("Anti Hallow Jack", "You cannot be affected by Hallow Jack's Ability!", function(bool)
        antiHallow = bool     
        if bool == true then         
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true
    else
game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true      
        end
end)

AntiSection:NewToggle("Anti Za Hando", "You cannot be pulled by Za Hando's Ability!", function(bool)
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
end)

AntiSection:NewToggle("Anti Booster", "You cannot be affected by Booster's Ability!", function(bool)
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
end)

AntiSection:NewToggle("Anti Mail", "You cannot be affected by Mail's Ability!", function(bool)
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
    else
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MailPopup") then         
            game.Players.LocalPlayer.PlayerGui.MailPopup.Frame.Visible = true   
            task.wait()          
        end      
        end
end)

AntiSection:NewToggle("Anti Reaper", "You cannot be affected by Reaper's Ability!", function(bool)
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
end)

AntiSection:NewToggle("Anti Pusher", "You cannot be pushed by Pusher's Wall!", function(bool)
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
end)

AntiSection:NewToggle("Anti Stun", "You cannot be stunned by Stun's Ability!", function(bool)
        antiStun = bool     
        if bool == true then        
            while antiStun do             
            task.wait()        
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true and not Farming and not allFarming and not game.Players.LocalPlayer.Character.Ragdolled.Value == true and game.Workspace:FindFirstChild("Shockwave") then              
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false              
            end           
            end           
        end
end)

SetSection:NewSlider("Set Walkspeed", "Set your speed when you walk!", 400, 20, function(WS)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
        WS1 = WS
end)

SetSection:NewToggle("Auto Set Walkspeed", "Auto set your Modified Walkspeed when you respawn!", function(bool)
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

SetSection:NewSlider("Set Jumppower", "Set your jumppower when you jump!", 400, 50, function(JP)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP     
        WS2 = JP
end)

SetSection:NewToggle("Auto Set Jumppower", "Auto Set your Modified Jumppower when you respawn! ", function(bool)
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

PerksSection:NewToggle("Auto Remove User", "Removes your displayed user above your head!", function(bool)
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

PerksSection:NewToggle("Auto Join Arena", "Auto Enter you to arena!", function(bool)
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
end)

PerksSection:NewToggle("Auto Invis", "Auto press E if you equipped Ghost!", function(bool)
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
end)

PerksSection:NewToggle("Disable Cube of Death", "Disables Cube of Death (Touchable)!", function(bool)
        if bool == true then      
        if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then          
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false      
        end
    else
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then            
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
        end
end)

AnnoySection:NewToggle("Spam Space Sound", "Spams Space Sound!", function(bool)
    spamSpace = bool
    if bool == true then     
        while spamSpace do         
            task.wait()        
            if getGlove() == "Space" then
                game.ReplicatedStorage["ZeroGSound"]:FireServer()            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
            end          
        end
    else
        for x = 1,5 do
            task.wait()        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
        end
        
    end
end)

AnnoySection:NewToggle("Spam Error Sound", "Spams Error Sound!", function(bool)
        errorSpam = bool      
        if bool == true then           
            while errorSpam do                
                task.wait()              
                game.ReplicatedStorage.ErrorDeath:FireServer()              
            end
        end
end)

AnnoySection:NewToggle("Spam Ping Pong", "Spams Ping Pong Balls!", function(bool)
    spamBall = bool   
    if bool == true then       
        while spamBall and task.wait() do           
            if getGlove() == "Ping Pong" then              
                game.ReplicatedStorage.GeneralAbility:FireServer()
            end          
        end        
    end
end)

AnnoySection:NewToggle("Spam Thanos Sound", "Spams Thanos Sound!", function(bool)
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
end)

local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/xwpMQXxK"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i, v in pairs(HWIDTable) do
      if v == HWID then
           print("Script Loaded!")
local TeleportsTab = Window:NewTab("Teleports")
local AreaSection = TeleportsTab:NewSection("Area")

AreaSection:NewButton("TP to SafeSpot", "Tp you to SafeSpot (Good for Farming!)", function()
    if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
        else
            print("Enter the Arena First! ")
        end
end)

AreaSection:NewButton("TP to Arena", "TP you to Arena!", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3,-5,30)
wait(0.1)
pl.CFrame = location
end)

AreaSection:NewButton("TP to Tournament", "Click the button if the Tournament starts!", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3405,82,-27)
wait(0.1)
pl.CFrame = location
end)

AreaSection:NewButton("TP to Tournament Lobby", "Where all players waiting before starts!", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3031,125,0)
wait(0.1)
pl.CFrame = location
end)

AreaSection:NewButton("TP to Moyai", "ButtonInfo", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
local location = CFrame.new(230,-15,1) 
wait(0.1) 
pl.CFrame = location
end)

AreaSection:NewButton("TP to Slapple Island", "ButtonInfo", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
local location = CFrame.new(-426,51,-38) 
wait(0.1) 
pl.CFrame = location
end)

AreaSection:NewButton("TP to Golden Slapple", "ButtonInfo", function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart  
local location = CFrame.new(-418,91,-31)  
wait(0.1)  
pl.CFrame = location
end)
      else
           print("Script Loaded!")
      end
end

    shared.removeBlue()
    ------------------
    shared.autofarmTab()
    ------------------
    shared.createSpot()