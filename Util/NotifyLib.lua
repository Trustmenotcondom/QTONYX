local CoreGui = game:GetService("CoreGui")

-- Ensure the GUI exists
local GUI = CoreGui:FindFirstChild("STX_Notification")
if not GUI then
    GUI = Instance.new("ScreenGui")
    GUI.Name = "STX_Notification"
    GUI.Parent = CoreGui
    GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    GUI.ResetOnSpawn = false
    
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Name = "STX_NotificationUIListLayout"
    UIListLayout.Parent = GUI
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    UIListLayout.Padding = UDim.new(0, 5)
end

local Notification = {}

local function CreateInstance(class, properties, parent)
    local instance = Instance.new(class)
    for key, value in pairs(properties) do
        instance[key] = value
    end
    instance.Parent = parent
    return instance
end

function Notification:Notify(nofdebug, middledebug, all)
    local SelectedType = string.lower(tostring(middledebug.Type))
    
    -- Shadow background
    local Shadow = CreateInstance("ImageLabel", {
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Size = UDim2.new(0, 240, 0, 90),
        Image = "rbxassetid://1316045217",
        ImageColor3 = Color3.fromRGB(0, 0, 0),
        ImageTransparency = 0.4,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(10, 10, 118, 118),
        LayoutOrder = -os.clock() -- Sort by time created
    }, GUI)

    -- Notification Frame
    local Window = CreateInstance("Frame", {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25),
        BorderSizePixel = 0,
        Size = UDim2.new(0, 230, 0, 80),
        ZIndex = 2
    }, Shadow)

    -- Outline
    local Outline_A = CreateInstance("Frame", {
        BackgroundColor3 = middledebug.OutlineColor,
        BorderSizePixel = 0,
        Size = UDim2.new(0, 230, 0, 2),
        ZIndex = 5
    }, Window)

    -- Title
    local WindowTitle = CreateInstance("TextLabel", {
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 222, 0, 22),
        ZIndex = 4,
        Font = Enum.Font.GothamSemibold,
        Text = nofdebug.Title,
        TextColor3 = Color3.fromRGB(220, 220, 220),
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left
    }, Window)

    -- Description
    local WindowDescription = CreateInstance("TextLabel", {
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 216, 0, 40),
        ZIndex = 4,
        Font = Enum.Font.GothamSemibold,
        Text = nofdebug.Description,
        TextColor3 = Color3.fromRGB(180, 180, 180),
        TextSize = 12,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    }, Window)

    -- Adjustments based on type
    if SelectedType == "image" and all.Image then
        WindowTitle.Position = UDim2.new(0, 24, 0, 2)
        CreateInstance("ImageButton", {
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 4, 0, 4),
            Size = UDim2.new(0, 18, 0, 18),
            ZIndex = 5,
            AutoButtonColor = false,
            Image = all.Image,
            ImageColor3 = all.ImageColor or Color3.fromRGB(255, 255, 255)
        }, Window)
    elseif SelectedType == "option" then
        local function createButton(name, pos, image, color, callbackValue)
            local button = CreateInstance("ImageButton", {
                Name = name,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, pos, 0, 76),
                Size = UDim2.new(0, 18, 0, 18),
                ZIndex = 5,
                AutoButtonColor = false,
                Image = image,
                ImageColor3 = color
            }, Window)
            button.MouseButton1Click:Connect(function()
                if all.Callback then all.Callback(callbackValue) end
                Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                task.wait(0.2)
                Shadow:Destroy()
            end)
        end

        createButton("Uncheck", 7, "http://www.roblox.com/asset/?id=6031094678", Color3.fromRGB(255, 84, 84), false)
        createButton("Check", 28, "http://www.roblox.com/asset/?id=6031094667", Color3.fromRGB(83, 230, 50), true)
    end

    -- Fade-in effect
    Shadow.Size = UDim2.new(0, 0, 0, 0)
    Shadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)

    -- Auto-close after set time
    task.spawn(function()
        local duration = math.max(middledebug.Time, 0.5) -- Prevent too-short durations
        task.wait(duration)
        Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
        task.wait(0.2)
        Shadow:Destroy()
    end)
end

return Notification
