if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Success, Response =
    pcall(
    function()
        local Time = tick()

        local library =
            loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()

        local player = game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener
        local store = game:GetService("ReplicatedStorage").Lib

        local SafeSpot = Instance.new("Part")
        SafeSpot.Name = "Spot"
        SafeSpot.Anchored = true
        SafeSpot.Position = Vector3.new(-100000, 100, -1500)
        SafeSpot.Size = Vector3.new(45, 2, 45)
        SafeSpot.Transparency = .5
        SafeSpot.Parent = workspace

        local SafeSpot2 = Instance.new("Part")
        SafeSpot2.Name = "SpotBarrier1"
        SafeSpot2.Anchored = true
        SafeSpot2.Position = Vector3.new(-100000, 120, -1523)
        SafeSpot2.Size = Vector3.new(45, 100000, 1)
        SafeSpot2.Transparency = 1
        SafeSpot2.Parent = workspace:FindFirstChild("Spot")

        local SafeSpot3 = Instance.new("Part")
        SafeSpot3.Name = "SpotBarrier2"
        SafeSpot3.Anchored = true
        SafeSpot3.Position = Vector3.new(-99977, 120, -1500)
        SafeSpot3.Size = Vector3.new(1, 100000, 45)
        SafeSpot3.Transparency = 1
        SafeSpot3.Parent = workspace:FindFirstChild("Spot")

        local SafeSpot4 = Instance.new("Part")
        SafeSpot4.Name = "SpotBarrier3"
        SafeSpot4.Anchored = true
        SafeSpot4.Position = Vector3.new(-100000, 120, -1477)
        SafeSpot4.Size = Vector3.new(45, 100000, 1)
        SafeSpot4.Transparency = 1
        SafeSpot4.Parent = workspace:FindFirstChild("Spot")

        local SafeSpot5 = Instance.new("Part")
        SafeSpot5.Name = "SpotBarrier4"
        SafeSpot5.Anchored = true
        SafeSpot5.Position = Vector3.new(-100023, 120, -1500)
        SafeSpot5.Size = Vector3.new(1, 100000, 45)
        SafeSpot5.Transparency = 1
        SafeSpot5.Parent = workspace:FindFirstChild("Spot")

        local Mai = library:Window("Main")

        Mai:Label("TPs", true)
        Mai:Button(
            "TP to SafeSpot",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0, 8, 0)
            end
        )

        Mai:Button(
            "TP to Arena",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-85, 7, -0)
            end
        )

        Mai:Label("Game", true)
        Mai:Button(
            "Remove Mini Meteors (Visual)!",
            function()
                if player:FindFirstChild("SmallMeteorVFX") then
                    print("Meteors Removed!")
                    require(player.SmallMeteorVFX:Destroy())
                else
                end
            end
        )

        Mai:Button(
            "Remove Meteor Explosions!",
            function()
                if player:FindFirstChild("BigExplosion") then
                    print("Explosions Removed!")
                    require(player.BigExplosion:Destroy())
                else
                end
            end
        )

        Mai:Button(
            "Remove Lightning (Minion Phase)!",
            function()
                if store:FindFirstChild("LightningBolt") then
                    print("Lightning Removed!")
                    require(store.LightningBolt:Destroy())
                else
                end
            end
        )

        Mai:Button(
            "Remove Minions Hitbox!",
            function()
                if store:FindFirstChild("NPCHitbox") then
                    print("Minions Hitbox Removed!")
                    require(store.NPCHitbox:Destroy())
                else
                end
            end
        )

        Mai:Button(
            "Anti Lag",
            function()
                -- Made by RIP#6666
                _G.Settings = {
                    Players = {
                        ["Ignore Me"] = true, -- Ignore your Character
                        ["Ignore Others"] = true -- Ignore other Characters
                    },
                    Meshes = {
                        Destroy = false, -- Destroy Meshes
                        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
                    },
                    Images = {
                        Invisible = true, -- Invisible Images
                        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
                        Destroy = false -- Destroy Images
                    },
                    Other = {
                        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
                        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
                        ["No Explosions"] = true, -- Makes Explosion's invisible
                        ["No Clothes"] = true, -- Removes Clothing from the game
                        ["Low Water Graphics"] = true, -- Removes Water Quality
                        ["No Shadows"] = true, -- Remove Shadows
                        ["Low Rendering"] = true, -- Lower Rendering
                        ["Low Quality Parts"] = true -- Lower quality parts
                    }
                }
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua")
                )()
            end
        )

        Mai:Button(
            "Anti Lag V2",
            function()
                local ToDisable = {
                    Textures = true,
                    VisualEffects = true,
                    Parts = true,
                    Particles = true,
                    Sky = true
                }

                local ToEnable = {
                    FullBright = false
                }

                local Stuff = {}

                for _, v in next, game:GetDescendants() do
                    if ToDisable.Parts then
                        if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                            v.Material = Enum.Material.SmoothPlastic
                            table.insert(Stuff, 1, v)
                        end
                    end

                    if ToDisable.Particles then
                        if
                            v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or
                                v:IsA("Fire")
                         then
                            v.Enabled = false
                            table.insert(Stuff, 1, v)
                        end
                    end

                    if ToDisable.VisualEffects then
                        if
                            v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or
                                v:IsA("SunRaysEffect")
                         then
                            v.Enabled = false
                            table.insert(Stuff, 1, v)
                        end
                    end

                    if ToDisable.Textures then
                        if v:IsA("Decal") or v:IsA("Texture") then
                            v.Texture = ""
                            table.insert(Stuff, 1, v)
                        end
                    end

                    if ToDisable.Sky then
                        if v:IsA("Sky") then
                            v.Parent = nil
                            table.insert(Stuff, 1, v)
                        end
                    end
                end

                game:GetService("TestService"):Message(
                    "Effects Disabler Script : Successfully disabled " .. #Stuff .. " assets / effects. Settings :"
                )

                for i, v in next, ToDisable do
                    print(tostring(i) .. ": " .. tostring(v))
                end

                if ToEnable.FullBright then
                    local Lighting = game:GetService("Lighting")

                    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
                    Lighting.FogEnd = math.huge
                    Lighting.FogStart = math.huge
                    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                    Lighting.Brightness = 5
                    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
                    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                    Lighting.Outlines = true
                end
            end
        )

        wait(.1)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Script Loaded!",
                Text = "Thanks for using our Script!!",
                Duration = 10
            }
        )

        print("Dome Area Hub Took " .. tick() - Time .. " Seconds To Fully Load! ")
    end
)

if not Success then
    warn("\nBob Boss fight Script - Failed to Load! Error code: " .. Response .. "\n")
end
