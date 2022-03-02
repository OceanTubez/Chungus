--[[

This code was created by OceanTubez, To be used as a lag crasher.
Insert this script in ServerScriptService.

Insert another LOCALSCRIPT inside StarterGui
Then check out LaggerClient.lua

--]]

--// Services \\--
local ServerStorage = game:GetService("ServerStorage")
local event = Instance.new("RemoteEvent", ServerStorage)
event.Name = "Crash"
local Workspace = game.Workspace

--// Variables \\--
local intensity = 5

--// Code \\--

game.Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function(char)
        
        local val = Instance.new("BoolValue", char)
        val.Name = "Crash"
        
        event:FireClient(plr, intensity)
        
    end)
end)

event.OnServerEvent:Connect(function(plr)
        local plrs = game.Players:GetPlayers()
    
        for i, plrboi in ipairs(plrs) do
            plrboi:Kick("Too Many Parts Detected, Launching BHG Client...")
        end
        
end)
