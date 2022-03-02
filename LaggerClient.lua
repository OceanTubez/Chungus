--[[

This code was created by OceanTubez, for a lag crasher.
Insert this script inside StarterGui

In-order for this to work, Check out LaggerServer.lua
]]--
--// Variables \\--
local event = game:GetService("ServerStorage").Crash
local plr = game.Players.LocalPlayer
local parts = {}


event.OnClientEvent:Connect(function(intensity)
    
    local char = plr.Character
    
    local head = char:FindFirstChild("Head")
    local pos = Head.Position
    
    while #parts * intensity < 1000 do
       
      local part = Instance.new("Part", char)
      part.Position = pos
      
      table.insert(parts, part)
    end
    
    event:FireServer(plr)
      
      
    end
    
end)
