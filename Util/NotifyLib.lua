local Notification = {}

local function CreateInstance(class, properties, parent)
    local instance = Instance.new(class)
    for key, value in pairs(properties) do
        instance[key] = value
    end
    instance.Parent = parent
    return instance
end

local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Notification")

function Notification:Notify(nofdebug, middledebug, all)
    local SelectedType = string.lower(tostring(middledebug.Type))

    local Shadow = CreateInstance("ImageLabel", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = UDim2.new(0.915, 0, 0.937, 0),
        Size = UDim2.new(0, 0, 0, 0),
        Image = "rbxassetid://1316045217",
        ImageColor3 = Color3.fromRGB(0, 0, 0),
        ImageTransparency = 0.4,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(10, 10, 118, 118)
    }, GUI)

    local Window = CreateInstance("Frame", {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25),
        BorderSizePixel = 0,
        Position = UDim2.new(0, 5, 0, 5),
        Size = UDim2.new(0, 230, 0, 80),
        ZIndex = 2
    }, Shadow)

    local Outline_A = CreateInstance("Frame", {
        BackgroundColor3 = middledebug.OutlineColor,
        BorderSizePixel = 0,
        Position = UDim2.new(0, 0, 0, 25),
        Size = UDim2.new(0, 230, 0, 2),
        ZIndex = 5
    }, Window)

    local WindowTitle = CreateInstance("TextLabel", {
        Name = "WindowTitle",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 8, 0, 2),
        Size = UDim2.new(0, 222, 0, 22),
        ZIndex = 4,
        Font = Enum.Font.GothamSemibold,
        Text = nofdebug.Title,
        TextColor3 = Color3.fromRGB(220, 220, 220),
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left
    }, Window)

    local WindowDescription = CreateInstance("TextLabel", {
        Name = "WindowDescription",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 8, 0, 34),
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

    if SelectedType == "default" then
        task.spawn(function()
            Shadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
            task.wait(middledebug.Time)
            Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            task.wait(0.2)
            Shadow:Destroy()
        end)
    elseif SelectedType == "image" then
        WindowTitle.Position = UDim2.new(0, 24, 0, 2)
        local ImageButton = CreateInstance("ImageButton", {
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 4, 0, 4),
            Size = UDim2.new(0, 18, 0, 18),
            ZIndex = 5,
            AutoButtonColor = false,
            Image = all.Image,
            ImageColor3 = all.ImageColor
        }, Window)
        task.spawn(function()
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
            task.wait(middledebug.Time)
            Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            task.wait(0.2)
            Shadow:Destroy()
        end)
    elseif SelectedType == "option" then
        local Uncheck = CreateInstance("ImageButton", {
            Name = "Uncheck",
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 7, 0, 76),
            Size = UDim2.new(0, 18, 0, 18),
            ZIndex = 5,
            AutoButtonColor = false,
            Image = "http://www.roblox.com/asset/?id=6031094678",
            ImageColor3 = Color3.fromRGB(255, 84, 84)
        }, Window)
        
        local Check = CreateInstance("ImageButton", {
            Name = "Check",
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 28, 0, 76),
            Size = UDim2.new(0, 18, 0, 18),
            ZIndex = 5,
            AutoButtonColor = false,
            Image = "http://www.roblox.com/asset/?id=6031094667",
            ImageColor3 = Color3.fromRGB(83, 230, 50)
        }, Window)
        
        Uncheck.MouseButton1Click:Connect(function()
            if all.Callback then all.Callback(false) end
            Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            task.wait(0.2)
            Shadow:Destroy()
        end)
        
        Check.MouseButton1Click:Connect(function()
            if all.Callback then all.Callback(true) end
            Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            task.wait(0.2)
            Shadow:Destroy()
        end)
        
        task.spawn(function()
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
            task.wait(middledebug.Time)
            Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            task.wait(0.2)
            Shadow:Destroy()
        end)
    end
end

return Notification
