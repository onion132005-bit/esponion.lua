-- [[ Script Redirect by Onion13 ]]
local NEW_SCRIPT_LINK = "https://youtu.be/PpAxjXX1CXQ?si=aoCt-8jcbQOD8871"

local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Subtitle = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

local CopyButton = Instance.new("TextButton")
local ButtonCorner = Instance.new("UICorner")

ScreenGui.Parent = CoreGui
ScreenGui.Name = "Onion13_Redirect"

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -140)
MainFrame.Size = UDim2.new(0, 500, 0, 280)
MainFrame.Active = true
MainFrame.Draggable = true 

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame


Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.15, 0)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.GothamBold
Title.Text = "GET NEW SCRIPT!"
Title.TextColor3 = Color3.fromRGB(255, 50, 50)
Title.TextSize = 45
Title.TextWrapped = true


Subtitle.Name = "Subtitle"
Subtitle.Parent = MainFrame
Subtitle.BackgroundTransparency = 1
Subtitle.Position = UDim2.new(0, 0, 0.4, 0)
Subtitle.Size = UDim2.new(1, 0, 0, 50)
Subtitle.Font = Enum.Font.GothamSemibold
Subtitle.Text = "YouTube: onion13"
Subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Subtitle.TextSize = 30
Subtitle.TextWrapped = true



CopyButton.Name = "CopyButton"
CopyButton.Parent = MainFrame
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
CopyButton.Position = UDim2.new(0.5, -125, 0.7, 0)
CopyButton.Size = UDim2.new(0, 250, 0, 45)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "Get new script click"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 20

ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = CopyButton


CopyButton.MouseButton1Click:Connect(function()
    
    if setclipboard then
        setclipboard(NEW_SCRIPT_LINK)
    end
    
 
    local oldText = CopyButton.Text
    local oldColor = CopyButton.BackgroundColor3
    CopyButton.Text = "COPIED!"
    CopyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    
   
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Link Copied!",
            Text = "Link copied to clipboard! Paste it in your browser.",
            Duration = 5 
        })
    end)
    
 
    task.wait(1.5)
    CopyButton.Text = oldText
    CopyButton.BackgroundColor3 = oldColor
end)

-- เอฟเฟกต์กระพริบให้คนสนใจ
task.spawn(function()
    while true do
        Title.Visible = not Title.Visible
        task.wait(0.8)
    end
end)

print("Please visit YouTube: Onion13 for the updated script.")
