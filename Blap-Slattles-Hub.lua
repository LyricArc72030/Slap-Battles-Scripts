    if not game:IsLoaded() then     
        game.Loaded:Wait()      
end

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

local Time = tick()

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Blap Slattles Hub", "GrapeTheme")

local Main = Window:NewTab("Main")
local Farm = Main:NewSection("Farms")
local Badge = Main:NewSection("Badge Farms")
-------------------------------------------------------------
local Cheat = Window:NewTab("Cheats")
local Com = Cheat:NewSection("Combat")
local Anti = Cheat:NewSection("Anti")
-------------------------------------------------------------
local Player = Window:NewTab("Player")
local Set = Player:NewSection("Set Walk and Jump")
local Perk = Player:NewSection("Perks")
local Annoy = Player:NewSection("Annoy")
-------------------------------------------------------------
local Tele = Window:NewTab("Teleports")
local Mode = Tele:NewSection("Modes")

Farm:NewToggle("Slap Farm", "Auto Farm Slaps for you!", function(bool)
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

Farm:NewToggle("Auto Slapple Farm", "Auto Farm Slapples for you!", function(bool)
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
end)

Badge:NewButton("TP to SafeSpot", "TP you to SafeSpot!", function()
      if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
      else
        print("Enter the Arena First!")
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "TP to SafeSpot Failed!";
    Text = "You must Enter the Arena First!"; 
    Duration = 10;
    Button1 = "OK!"
})
      end
end)

Badge:NewToggle("Bob Farm", "Farms Bob for you!", function(bool)
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

Badge:NewToggle("Fish Farm", "Auto Farms Fish for you!", function(bool)
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
end)

Badge:NewButton("Get [ R E D A C T E D ]! (5k Slaps required!)", "Auto Farms [ R E D A C T E D ] for you!", function()
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
end)

Badge:NewButton("Get Tycoon!", "Auto Farms Tycoon for you!", function()
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

Com:NewToggle("Slap Aura", "Slaps people near you!", function(bool)
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

Com:NewToggle("Anti Ragdoll", "Makes your character can't be ragdolled!", function(bool)
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

Com:NewToggle("Anti Void", "Makes you walk or not fell into the void!", function(noVoid)
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

Anti:NewToggle("Anti Megarock/CUSTOM", "Makes you can touch Megarocks/CUSTOMS!", function(bool)
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

Anti:NewToggle("Anti Admins", "Kicks you when an admin joins the server!", function(bool)
        antiAdmins = bool    
    if bool == true then           
        game.Players.PlayerAdded:Connect(function(Plr)
            
            if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                game.Players.LocalPlayer:Kick("An Admin joins your Server! 🔥")
            end         
        end)      
        end
end)

Anti:NewToggle("Anti Hallow Jack", "You cannot be affected by Hallow Jack's ability!", function(bool)
        antiHallow = bool        
        if bool == true then           
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true  
    else
        game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true       
    end
end)

Anti:NewToggle("Anti Squid", "You cannot be affected by Squid!", function(bool)
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
end)

Anti:NewToggle("Anti Za Hando", "You cannot be pulled by Za Hando's ability!", function(bool)
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

Anti:NewToggle("Anti Booster", "You cannot be affected by Booster!", function(bool)
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

Anti:NewToggle("Anti Mail", "You cannot be affected by Mail's ability!", function(bool)
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

Anti:NewToggle("Anti Reaper", "You cannot be affected by Reaper!", function(bool)
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

Anti:NewToggle("Anti Pusher", "You cannot be pushed by Pusher's ability!", function(bool)
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

Anti:NewToggle("Anti Stun", "You cannot be stuned by Stun's ability!", function(bool)
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

Set:NewSlider("Set Walkspeed", "Set your speed when you walk!", 400, 20, function(WS)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
        WS1 = WS
end)

Set:NewToggle("Auto Set Walkspeed", "Auto set your walkspeed!", function(bool)
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

Set:NewSlider("Set Jumppower", "Set your jumppower when you jump!", 350, 50, function(JP)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP   
        WS2 = JP
end)

Set:NewToggle("Auto Set Jumppower", "Auto set your jumppower!", function(bool)
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

Perk:NewToggle("Auto Remove User", "Removes your user displayed in your character!", function(bool)
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

Perk:NewToggle("Auto Invis (Equip Ghost then Reset!)", "Makes you invis when you respawn!", function(bool)
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

Perk:NewToggle("Auto Enter Arena", "Auto join you in arena when you respawn!", function(bool)
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

Perk:NewToggle("Disable Cube of Death", "Makes you touch the Cube without dying!", function(bool)
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

Annoy:NewToggle("Spam Space Sound (Need Space!)", "Spams Space Sound!", function(bool)
        spamSpace = bool   
    if bool == true then      
        while spamSpace do         
            task.wait()        
            if getGlove() == "Space" then
                game.ReplicatedStorage["ZeroGSound"]:FireServer()              game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
            end         
        end 
    else
        for x = 1,5 do
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
          end
    end
end)

Annoy:NewToggle("Spam Thanos Sound (Need Thanos!)", "Spams Thanos Sound!", function(bool)
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

Annoy:NewToggle("Spam Error Sound", "Spams Error Sound (No need Error glove!)", function(bool)
        errorSpam = bool        
        if bool == true then           
            while errorSpam do              
                task.wait()             
                game.ReplicatedStorage.ErrorDeath:FireServer()             
            end
        end
end)

Annoy:NewToggle("Spam Ping Pong (Need Ping Pong!)", "Spams Ping pong balls!", function(bool)
        spamBall = bool     
    if bool == true then      
        while spamBall and task.wait() do          
            if getGlove() == "Ping Pong" then              
                game.ReplicatedStorage.GeneralAbility:FireServer()
            end          
        end      
        end
end)

local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/LyricArc72030/LOL/main/HWID-Whitelist.lua"))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i, v in pairs(HWIDTable) do
      if v == HWID then
           print("Script Loaded! Owner Exclusive!")
        local Area = Tele:NewSection("Areas")

Area:NewButton("TP to Arena", "TP to Arena!", function()
            local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-3,-5,30)
wait(0.1)
pl.CFrame = location
end)

Area:NewButton("TP to Tournament", "TP to Tournament!", function()
            local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3405,82,-27)
wait(0.1)
pl.CFrame = location
end)

Area:NewButton("TP to Tournament Lobby", "TP to Tournament Lobby!", function()
            local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(3031,125,0)
wait(0.1)
pl.CFrame = location
end)

Area:NewButton("TP to Moyai Island", "TP to Moyai Island!", function()
            local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
local location = CFrame.new(230,-15,1) 
wait(0.1) 
pl.CFrame = location
end)

Area:NewButton("TP to Slapple (Keypad) Spot", "TP to Slapple (Keypad) Spot!", function()
            local pl = game.Players.LocalPlayer.Character.HumanoidRootPart 
local location = CFrame.new(-426,51,-38) 
wait(0.1) 
pl.CFrame = location
end)

Area:NewButton("TP to Golden Slapple Spot Spawn", "TP to Golden Slapple Spot Spawn!", function()
            local pl = game.Players.LocalPlayer.Character.HumanoidRootPart  
local location = CFrame.new(-418,91,-31)  
wait(0.1)  
pl.CFrame = location
end)
else
           print("Script Loaded!")
  end
end

local gameid = game.PlaceId

if(gameid == 6403373529) then
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

Mode:NewButton("TP to Slap Royale", "TP to Slap Royale!", function()
          game:GetService("TeleportService"):Teleport(9426795465)
            wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Slap Royale Matchmaking...";
    Duration = 8
})
end)
    else

    end

local gameid = game.PlaceId

if(gameid == 11520107397) then
Mode:NewButton("TP to Normal Gamemode", "TP to Normal Gamemode!", function()
          game:GetService("TeleportService"):Teleport(6403373529)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Normal Gamemode...";
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

Mode:NewButton("TP to Slap Royale", "TP to Slap Royale!", function()
          game:GetService("TeleportService"):Teleport(9426795465)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Slap Royale Matchmaking...";
    Duration = 8
})
end)
    else

    end

local gameid = game.PlaceId

if(gameid == 9015014224) then
Mode:NewButton("TP to Killstreak Only", "TP to Killstreak Only Gamemode!", function()
          game:GetService("TeleportService"):Teleport(11520107397)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Killstreak Only Gamemode...";
    Duration = 8
})
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

Mode:NewButton("TP to Slap Royale", "TP to Slap Royale!", function()
          game:GetService("TeleportService"):Teleport(9426795465)
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Button Toggled!";
    Text = "Teleporting to Slap Royale Matchmaking...";
    Duration = 8
})
end)
    else

    end

    wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Script Loaded!";
    Text = "Thanks for using our Script! 😊💕"; 
    Duration = 10
})

    shared.removeBlue()
    ------------------
    shared.autofarmTab()
    ------------------
    shared.createSpot()

print("Blap Slattles Hub Took " .. tick() - Time .. " Seconds To Fully Load! ")
  end)

if not Success then
  warn("\nBlap Slattles Hub - Failed to Load! Error code: " .. Response .. "\n")
end