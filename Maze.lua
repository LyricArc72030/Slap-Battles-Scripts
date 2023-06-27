if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Success, Response =
    pcall(
    function()
        local Time = tick()

        local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
        local Window = Library.CreateLib("????????", "BloodTheme")

        local Main = Window:NewTab("Main")
        local Badges = Main:NewSection("Badges")
        local SOON = Main:NewSection("Auto Counter SOON!!")

        Badges:NewButton(
            "Get Elude!",
            "Auto get Elude in one click!",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-193, 5, -130)
                task.wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502, 11, -179)
            end
        )

        Badges:NewButton(
            "TP to Lever",
            "TP you to Lever",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-68, 3, -44)
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

        print("???????? Took " .. tick() - Time .. " Seconds To Fully Load! ")
    end
)

if not Success then
    warn("\nMaze Elude Script - Failed to Load! Error code: " .. Response .. "\n")
end
