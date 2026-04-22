-- ==========================================
-- GOD-EYE PRO AUTH TOKEN GENERATOR 🛡️
-- ==========================================
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer

-- Put your L bozos here
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
ff.Visible = false -- Make sure they cant see it
if isBlacklisted then
    ff.Name = "Blacklist"
else
    ff.Name = "Whitelist"
end

-- Inject into StarterGui as the auth token
ff.Parent = StarterGui
