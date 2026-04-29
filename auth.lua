local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer

-- ==========================================
-- GIGA BLACKLIST DATABASE 🛑
-- ==========================================
-- Put the UserIds of the bozos here (They get the L_Bozo_Tracer punishment)
local blacklist = {
    7975092412,
    87654321
}

-- ==========================================
-- FAST ROUTING LOGIC 🧠
-- ==========================================
-- Default to Whitelist so the script is PUBLIC for everyone 🤑
local authStatus = "Whitelist" 

-- FAST LOOKUP: Instantly checks if they are on the naughty list 🗿
if table.find(blacklist, LocalPlayer.UserId) then
    authStatus = "Blacklist"
end

-- ==========================================
-- EXCLUSIVE FORCEFIELD TOKEN 🛡️
-- ==========================================
-- Creating the invisible ForceField in StarterGui (No one expects this 💀)
local ff = Instance.new("ForceField")
ff.Visible = false
ff.Name = authStatus
ff.Parent = StarterGui

print("God-Eye Auth Deployed: Player flagged as " .. authStatus)
