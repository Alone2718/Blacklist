local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer

local blacklist = {
    12345678,
    87654321
}

local isBlacklisted = false
for _, id in ipairs(blacklist) do
    if LocalPlayer.UserId == id then
        isBlacklisted = true
        break
    end
end

local ff = Instance.new("ForceField")
ff.Visible = false
ff.Name = isBlacklisted and "Blacklist" or "Whitelist"
ff.Parent = StarterGui
