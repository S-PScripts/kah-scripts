-- https://github.com/Tech-187/Lua-scripts/blob/main/Inventory%20tool%20checker

function checkuser()
local Backpack = player:FindFirstChild("Backpack")
checkme = game.Players:FindFirstChild(user)
if Backpack then
      for _, v in pairs(Backpack:GetChildren()) do
    	    print(v.Name)
      end
end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local command = string.lower(msg)
    if string.sub(msg:lower(), 0, 10) == ".checkuser" then
       user = string.sub(msg:lower(), 12)
       checkuser()
    end
end)
