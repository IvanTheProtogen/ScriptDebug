-- Script Debugger

-- by ivanizdumYT


-- 1. Launch the script debugger.
-- 2. Execute the script you want in script debugger.
-- 3. Have fun messing with local variables.

-- If you want to turn on the debug mode on Infinite Yield, execute this:
-- _G.IY_DEBUG = true
-- Or if you haven't executed Infinite Yield yet, execute this:
-- Local _G.IY_DEBUG = true

script.Name = "ScriptDebuggerProcess"
script.Parent = game:GetService("RunService")
local sdCG = game:GetService('CoreGui')

-- Instances

local scriptDebug_ScreenGui = Instance.new("ScreenGui")
local scriptDebug_Main = Instance.new("Frame")
local scriptDebug_Inside = Instance.new("Frame")
local scriptDebug_Insert = Instance.new("TextBox")
local scriptDebug_InsertURL = Instance.new("TextBox")
local scriptDebug_Execute = Instance.new("TextButton")
local scriptDebug_ImportURL = Instance.new("TextButton")
local scriptDebug_Close = Instance.new("TextButton")
local scriptDebug_Minimize = Instance.new("TextButton")
local scriptDebug_Label = Instance.new("TextLabel")
local scriptDebug_StartupSound = Instance.new("Sound")

-- Properties

scriptDebug_ScreenGui.Name = "scriptDebug_ScreenGui"
scriptDebug_ScreenGui.Parent = sdCG
scriptDebug_ScreenGui.ResetOnSpawn = false

scriptDebug_Main.Name = "scriptDebug_Main"
scriptDebug_Main.Parent = sdCG.scriptDebug_ScreenGui
scriptDebug_Main.BackgroundColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_Main.Position = UDim2.new(0,0,0,0)
scriptDebug_Main.Size = UDim2.new(0,350,0,250)
scriptDebug_Main.Draggable = true
scriptDebug_Main.Active = true
scriptDebug_Main.BorderColor3 = Color3.new(25/255,25/255,30/255)

scriptDebug_Inside.Name = "scriptDebug_Inside"
scriptDebug_Inside.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main
scriptDebug_Inside.BackgroundColor3 = Color3.new(30/255,30/255,50/255)
scriptDebug_Inside.Position = UDim2.new(0,0,0,25)
scriptDebug_Inside.Size = UDim2.new(0,350,0,225)
scriptDebug_Inside.BorderColor3 = Color3.new(30/255,30/255,50/255)

scriptDebug_Insert.Name = "scriptDebug_Insert"
scriptDebug_Insert.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main.scriptDebug_Inside
scriptDebug_Insert.BackgroundColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_Insert.Position = UDim2.new(0,10,0,10)
scriptDebug_Insert.Size = UDim2.new(0,330,0,175)
scriptDebug_Insert.ClearTextOnFocus = false
scriptDebug_Insert.MultiLine = true
scriptDebug_Insert.PlaceholderText = 'print("Hello World!");'
scriptDebug_Insert.Active = true
scriptDebug_Insert.Text = ''
scriptDebug_Insert.TextXAlignment = Enum.TextXAlignment.Left
scriptDebug_Insert.TextYAlignment = Enum.TextYAlignment.Top
scriptDebug_Insert.TextWrapped = true
scriptDebug_Insert.BorderColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_Insert.TextColor3 = Color3.new(1,1,1)
scriptDebug_Insert.PlaceholderColor3 = Color3.new(190/255,190/255,190/255)

scriptDebug_InsertURL.Name = "scriptDebug_InsertURL"
scriptDebug_InsertURL.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main.scriptDebug_Inside
scriptDebug_InsertURL.BackgroundColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_InsertURL.Position = UDim2.new(0,10,0,190)
scriptDebug_InsertURL.Size = UDim2.new(0,110,0,30)
scriptDebug_InsertURL.ClearTextOnFocus = false
scriptDebug_InsertURL.MultiLine = true
scriptDebug_InsertURL.PlaceholderText = 'https://example.com/'
scriptDebug_InsertURL.Active = true
scriptDebug_InsertURL.Text = ''
scriptDebug_InsertURL.TextXAlignment = Enum.TextXAlignment.Left
scriptDebug_InsertURL.TextYAlignment = Enum.TextYAlignment.Center
scriptDebug_InsertURL.TextWrapped = true
scriptDebug_InsertURL.BorderColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_InsertURL.TextColor3 = Color3.new(1,1,1)
scriptDebug_InsertURL.PlaceholderColor3 = Color3.new(190/255,190/255,190/255)

scriptDebug_Execute.Name = "scriptDebug_Execute"
scriptDebug_Execute.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main.scriptDebug_Inside
scriptDebug_Execute.BackgroundColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_Execute.Position = UDim2.new(0,240,0,190)
scriptDebug_Execute.Size = UDim2.new(0,100,0,30)
scriptDebug_Execute.Active = true
scriptDebug_Execute.Text = 'Execute'
scriptDebug_Execute.BorderColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_Execute.TextColor3 = Color3.new(1,1,1)

scriptDebug_ImportURL.Name = "scriptDebug_ImportURL"
scriptDebug_ImportURL.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main.scriptDebug_Inside
scriptDebug_ImportURL.BackgroundColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_ImportURL.Position = UDim2.new(0,130,0,190)
scriptDebug_ImportURL.Size = UDim2.new(0,100,0,30)
scriptDebug_ImportURL.Active = true
scriptDebug_ImportURL.Text = 'ImportURL'
scriptDebug_ImportURL.BorderColor3 = Color3.new(25/255,25/255,30/255)
scriptDebug_ImportURL.TextColor3 = Color3.new(1,1,1)


scriptDebug_Close.Name = "scriptDebug_Close"
scriptDebug_Close.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main
scriptDebug_Close.BackgroundColor3 = Color3.new(30/255,30/255,50/255)
scriptDebug_Close.Position = UDim2.new(0,320,0,2)
scriptDebug_Close.Size = UDim2.new(0,20,0,20)
scriptDebug_Close.Active = true
scriptDebug_Close.Text = 'X'
scriptDebug_Close.BorderColor3 = Color3.new(30/255,30/255,50/255)
scriptDebug_Close.TextColor3 = Color3.new(1,1,1)

scriptDebug_Minimize.Name = "scriptDebug_Minimize"
scriptDebug_Minimize.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main
scriptDebug_Minimize.BackgroundColor3 = Color3.new(30/255,30/255,50/255)
scriptDebug_Minimize.Position = UDim2.new(0,295,0,2)
scriptDebug_Minimize.Size = UDim2.new(0,20,0,20)
scriptDebug_Minimize.Active = true
scriptDebug_Minimize.Text = '-'
scriptDebug_Minimize.BorderColor3 = Color3.new(30/255,30/255,50/255)
scriptDebug_Minimize.TextColor3 = Color3.new(1,1,1)

scriptDebug_Label.Name = "scriptDebug_Label"
scriptDebug_Label.Parent = sdCG.scriptDebug_ScreenGui.scriptDebug_Main
scriptDebug_Label.BackgroundColor3 = Color3.new(1,1,1)
scriptDebug_Label.Position = UDim2.new(0,100,0,2)
scriptDebug_Label.Size = UDim2.new(0,150,0,20)
scriptDebug_Label.Text = 'Script Debugger'
scriptDebug_Label.BackgroundTransparency = 1
scriptDebug_Label.TextColor3 = Color3.new(1,1,1)

scriptDebug_StartupSound.Name = 'scriptDebug_StartupSound'
scriptDebug_StartupSound.SoundId = "rbxassetid://754992505"
scriptDebug_StartupSound.Looped = false
scriptDebug_StartupSound.TimePosition = 0.35
scriptDebug_StartupSound.PlaybackSpeed = 0.95
scriptDebug_StartupSound.Volume = 1
scriptDebug_StartupSound.Parent = sdCG
scriptDebug_StartupSound:Play()

-- Connections

scriptDebug_Close.MouseButton1Click:Connect(function()
    scriptDebug_ScreenGui:Destroy()
    warn("Script Debugger has been deactivated!")
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://469666409"
    sound.Looped = false
    sound.Parent = sdCG
    sound.Volume = 1
    sound:Play()
    
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end)

scriptDebug_Execute.MouseButton1Click:Connect(function()
    loadstring(scriptDebug_Insert.Text)()
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8388724806"
    sound.Looped = false
    sound.Parent = sdCG
    sound:Play()
    
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end)

scriptDebug_ImportURL.MouseButton1Click:Connect(function()

    scriptDebug_Insert.Text = game:HttpGet(scriptDebug_InsertURL.Text)

    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8388724806"
    sound.Looped = false
    sound.Parent = sdCG
    sound:Play()
    
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end)

scriptDebug_Minimize.MouseButton1Click:Connect(function()
    if scriptDebug_Inside.Visible then
        scriptDebug_Inside.Visible = false
        scriptDebug_Main.Size = UDim2.new(0,350,0,25)
        scriptDebug_Minimize.Text = '+'
    else
        scriptDebug_Inside.Visible = true
        scriptDebug_Main.Size = UDim2.new(0,350,0,250)
        scriptDebug_Minimize.Text = '-'
    end
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://8388724806"
    sound.Looped = false
    sound.Parent = sdCG
    sound:Play()
    
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end)

scriptDebug_StartupSound.Ended:Connect(function()
	scriptDebug_StartupSound:Destroy()
end)

-- Success?

warn("Script Debugger has successfully loaded!")
