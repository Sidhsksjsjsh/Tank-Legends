local Library = loadstring(game:HttpGet("https://pastebin.com/raw/aC8GQEKE"))()
local ui = Library:CreateWindow()

local FarmTable = {}
local AreaTable = {}
local EggTable = {}

for _,Client in pairs(game:GetService("Workspace").__AREAS.Spawn:GetChildren()) do
    table.insert(FarmTable, Client.Name)
end

for _,ClientArea in pairs(game:GetService("Workspace").__AREAS:GetChildren()) do
    table.insert(AreaTable, ClientArea.Name)
end

for _,Nigga in pairs(game:GetService("Workspace").__EGGS:GetChildren()) do
    table.insert(EggTable, Nigga.Name)
end

function TurtleTeleport(WorkspaceObject)
local pos = CFrame.new(WorkspaceObject)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TurtleWalkTeleport(WorkspaceObject_2)
game.Players.LocalPlayer.Humanoid:MoveTo(WorkspaceObject_2)
end

local Main = ui:new("Farm")
local Egg = ui:new("Hatch")
local Unlock = ui:new("Unlock World")

Main:Ping()
Main:FPS()
Main:TimePlayed()
Main:UTC()

local farmType
local AreaType
local HatchEgg = ""

Main:CreateDropdown("Select Farm", FarmTable, function(_)
      farmType = _
end)

Main:CreateDropdown("Select Area", AreaTable, function(_)
      AreaType = _
end)

Main:CreateToggle("Farm", false, function(_)
     TogglesFarm = _
  
       while wait() do
        if TogglesFarm == false then break end
local args = {
    [1] = workspace.__AREAS .. "." .. AreaType .. "." .. farmType,
    [2] = workspace.__CLIENT.__PLAYER.Rivanda_Cheater:FindFirstChild("Normal Tank")
}

game:GetService("ReplicatedStorage").__REMOTES.__Cannon_Attack:FireServer(unpack(args))
end
end)

Unlock:CreateDropdown("Select Area", AreaTable, function(_)
      AreaUnlock = _
end)

Unlock:CreateButton("Unlock world", function()
      local args = {
    [1] = AreaUnlock
}

game:GetService("ReplicatedStorage").__REMOTES.__Area:FireServer(unpack(args))
end)

Egg:CreateDropdown("Select Egg", EggTable, function(_)
      HatchEgg = _
end)

Egg:CreateToggle("Hatch", false, function(_)
     TogglesHatch = _
  
       while wait() do
        if TogglesHatch == false then break end
local args = {
    [1] = 1,
    [2] = HatchEgg,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false
}

game:GetService("ReplicatedStorage").__REMOTES.__Buy_EGG:FireServer(unpack(args))
end
end)
