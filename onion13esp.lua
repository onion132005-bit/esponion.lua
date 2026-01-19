--// ===============================
--// PC KEYBIND DIAGNOSTIC POPUP
--// LeftControl Toggle Test
--// ===============================

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ScreenGui (ใช้ของเดิมได้ ถ้ามีแล้ว)
local TestGui = Instance.new("ScreenGui")
TestGui.Name = "KeybindDiagnosticGui"
TestGui.ResetOnSpawn = false
TestGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Popup Frame
local Popup = Instance.new("Frame")
Popup.Size = UDim2.new(0, 260, 0, 110)
Popup.Position = UDim2.new(0.5, 0, 0.15, 0)
Popup.AnchorPoint = Vector2.new(0.5, 0)
Popup.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Popup.BorderSizePixel = 0
Popup.Visible = false
Popup.Parent = TestGui

Instance.new("UICorner", Popup).CornerRadius = UDim.new(0, 14)

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -20, 0, 35)
Title.Position = UDim2.new(0, 10, 0, 8)
Title.BackgroundTransparency = 1
Title.Text = "KEYBIND TEST"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextColor3 = Color3.fromRGB(0, 255, 120)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Popup

-- Status Text
local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -20, 0, 40)
Status.Position = UDim2.new(0, 10, 0, 50)
Status.BackgroundTransparency = 1
Status.Text = "LeftControl : WORKING ✅"
Status.Font = Enum.Font.Gotham
Status.TextSize = 14
Status.TextWrapped = true
Status.TextColor3 = Color3.fromRGB(220, 220, 220)
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Parent = Popup

-- Toggle State
local popupEnabled = false
local lastToggle = 0
local TOGGLE_COOLDOWN = 0.3

-- Keybind Listener (PC Keyboard Only)
SafeConnect(UserInputService.InputBegan, function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
    if input.KeyCode == Enum.KeyCode.Unknown then return end
    if input.KeyCode ~= Enum.KeyCode.LeftControl then return end

    if os.clock() - lastToggle < TOGGLE_COOLDOWN then return end
    lastToggle = os.clock()

    popupEnabled = not popupEnabled
    Popup.Visible = popupEnabled
end)
