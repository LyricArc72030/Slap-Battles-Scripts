    if not game:IsLoaded() then     
        game.Loaded:Wait()      
end

task.wait()

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

local Mai = Window:NewTab("Main")
local Che = Window:NewTab("Cheats")
local Pla = Window:NewTab("Player")
local Tel = Window:NewTab("Teleports")

local Far = Mai:NewSection("Farms")
local Bad = Mai:NewSection("Badge Farms")
local Com = Che:NewSection("Combat")
local Tou = Che:NewSection("Tournament")
local Ant = Che:NewSection("Anti")
local Set = Pla:NewSection("Set Walk and Jump")
local Per = Pla:NewSection("Perks")
local Ann = Pla:NewSection("Annoy")
local Are = Tel:NewSection("Areas")
local Mod = Tel:NewSection("Modes")

Far:NewToggle("Slap Farm", "...", function(bool)
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
                                    
                                        wait(.25)                                                                  shared.gloveHits[getGlove()]:FireServer(Human.Character:FindFirstChild("Torso"))                                      
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

Far:NewToggle("Auto Farm Slapple", "...", function(bool)
        getgenv().Slapple = bool
                if bool == true then
                    while getgenv().Slapple do
                        wait(.001)
                        for Index, Instance in next, workspace.Arena.island5.Slapples:GetDescendants() do
                            if Instance.ClassName == "TouchTransmitter" then
                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 0)                    firetouchinterest(game.Players.LocalPlayer.Character.Head, Instance.Parent, 1)
                            end
                        end
                    end
                end
end)

Bad:NewButton("TP to SafeSpot", "TP to SafeSpot for farming Trap/Moyai/Bob etc.", function()
        if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,8,0)
      else
        print("Enter the Arena First!")
          wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "TP to SafeSpot Failed!";
    Text = "You must Enter the Arena First!"; 
    Duration = 8
})
        end
end)

Bad:NewToggle("Bob Farm", "...", function(bool)
        bobFarm = bool     
        if bool == true then        
            while bobFarm do             
                task.wait()             
                    if getGlove() == "Replica" and bobFarm and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
                    game.ReplicatedStorage.Duplicate:FireServer()

                    task.wait()         
                    tick = os.time()
                    repeat task.wait()                  
                    until os.time() - tick >= 5.3             
                    end
            end        
            else          
            task.wait(10.2)
        end
end)

Bad:NewToggle("Fish Farm", "...", function(bool)
        fishFarm = bool    
        if bool == true then           
        if game.Players.LocalPlayer.Character:FindFirstChild("entered") and getGlove() == "ZZZZZZZ" then          
            print("READY??")
            task.wait()          
            print("------------------------------------")
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Spot"].CFrame * CFrame.new(0,8,0)           
            task.wait(.5)           
            game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
        else           
            print("FAILED TO TELEPORT TO SAFE SPOT! DO IT MANUALLY!!")      
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
        else                  game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
end)

Bad:NewButton("Get [ R E D A C T E D ]!", "...", function()
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
        print("OR YOU DONT HAVE 5K SLAPS!!!")
        end
end)

Bad:NewButton("Get Tycoon!", "...", function()
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

Com:NewToggle("Slap Aura", "...", function(bool)
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

Com:NewToggle("Anti Ragdoll", "...", function(bool)
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

Com:NewToggle("Anti Void", "...", function(noVoid)
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

Tou:NewToggle("Anti Void (Tournament)", "...", function(noVoid)
        if noVoid == true then
                  local Tour = Instance.new("Part")
        Tour.Name = "BaseTour"
        Tour.Material = "ForceField"
        Tour.Anchored = true
        Tour.Position = Vector3.new(3398, 74, -1)
        Tour.Size = Vector3.new(3000, 2, 3000)
        Tour.Color = Color3.new(255,90,255)
        Tour.Transparency = .9
        Tour.Parent = workspace
        else
          local TourVoid = game:GetService("Workspace").BaseTour
          TourVoid:Destroy()
        end
end)

Ant:NewToggle("Anti Megarock/CUSTOM", "...", function(bool)
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

Ant:NewToggle("Anti Admins", "...", function(bool)
        antiAdmins = bool    
    if bool == true then           
        game.Players.PlayerAdded:Connect(function(Plr)
            
            if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                game.Players.LocalPlayer:Kick("An Admin joins your Server!! Kicked!")
            end         
        end)      
        end
end)

Ant:NewToggle("Anti Squid", "...", function(bool)
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

Ant:NewToggle("Anti Za Hando", "...", function(bool)
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

Ant:NewToggle("Anti Booster", "...", function(bool)
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

Ant:NewToggle("Anti Mail", "...", function(bool)
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

Ant:NewToggle("Anti Reaper", "...", function(bool)
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

Ant:NewToggle("Anti Pusher", "...", function(bool)
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

Ant:NewToggle("Anti Stun", "...", function(bool)
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
    
    shared.removeBlue()    
    ------------------
    shared.autofarmTab()
    ------------------
    shared.createSpot()

   wait(.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Script Loaded!";
    Text = "Thanks for using our Script!!"; 
    Duration = 10
})

print("Blap Slattles Hub Took " .. tick() - Time .. " Seconds To Fully Load! ")
  end)

if not Success then
  warn("\nSlap Battles Script - Failed to Load! Error code: " .. Response .. "\n")
end