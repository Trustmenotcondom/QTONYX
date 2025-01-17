local Library = {}

local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TweenInfo = TweenInfo.new

local LocalizationService = game:GetService("LocalizationService")
local http = game:GetService("HttpService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local NameID = LocalPlayer.Name
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local UISettings = {}

function UISettings:Tween(instance, properties, duration, ...)
	TweenService:Create(instance, TweenInfo(duration, ...), properties):Play()
end;

local SettingToggle = {}

local Name = "QuantumOnyxConfig.JSON"

pcall(function()
	if not pcall(function() readfile(Name) end) then
		writefile(Name, game:service'HttpService':JSONEncode(SettingToggle))
	end

	Settings = game:service'HttpService':JSONEncode(readfile(Name))
end)

local LibName = tostring(math.random(1, 100))..tostring(math.random(1,50))..tostring(math.random(1, 100));

function Library:ToggleUI()
	if game.CoreGui[LibName].Enabled then
		game.CoreGui[LibName].Enabled = false
	else
		game.CoreGui[LibName].Enabled = true
	end
end

function Library:DestroyGui()
	if game.CoreGui[LibName] then
		game.CoreGui[LibName]:Destroy()
	end
end

function Library:CreateWindow(hubname)

	table.insert(Library, hubname)
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v:IsA("ScreenGui") and v.Name == hubname then
            v:Destroy()
        end
    end

	local ScreenGui = Instance.new("ScreenGui")
	local Body = Instance.new("Frame")
	local Body_Corner = Instance.new("UICorner")
	local Title_Hub = Instance.new("TextLabel")
	local MInimize_Button = Instance.new("TextButton")
	local Discord = Instance.new("TextButton")
	local DiscUICorner = Instance.new("UICorner")
	local Disc_Logo = Instance.new("ImageLabel")
	local Disc_Title = Instance.new("TextLabel")
	local Discord2 = Instance.new("TextButton")
	local Disc2UICorner = Instance.new("UICorner")
	local Disc2_Logo = Instance.new("ImageLabel")
	local Disc2_Title = Instance.new("TextLabel")
	local UserInfo = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UserInfo_Logo = Instance.new("ImageLabel")
	local UserInfo_Title = Instance.new("TextLabel")
	local Server_Time = Instance.new("TextLabel")
	local List_Tile = Instance.new("Frame")
	local Tile_Gradient = Instance.new("UIGradient")
	local Toggle = Instance.new("Frame")
	local toggle_corner = Instance.new("UICorner")
	local toggle_Image = Instance.new("ImageButton")
	local Top_Frame = Instance.new("Frame")
	local Top_Frame_Corner = Instance.new("UICorner")

	ScreenGui.Name = LibName
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global


	game:GetService("UserInputService").InputBegan:connect(function(input)
		if input.KeyCode == Enum.KeyCode.LeftControl then
			Library:ToggleUI()
		end
	end)

	Body.Name = "Body"
	Body.Parent = ScreenGui
	Body.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Body.BackgroundTransparency = 0.1
	Body.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Body.BorderSizePixel = 0
	Body.Position = UDim2.new(0.5, -300, 0.5, -175)
	Body.Size = UDim2.new(0, 550, 0, 350)
	Body.ClipsDescendants = true

	Body_Corner.CornerRadius = UDim.new(0, 7)
	Body_Corner.Name = "Body_Corner"
	Body_Corner.Parent = Body

	Top_Frame.Name = "Top_Frame"
	Top_Frame.Parent = Body
	Top_Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Top_Frame.BackgroundTransparency = 1
	Top_Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top_Frame.BorderSizePixel = 0
	Top_Frame.Position = UDim2.new(0, 0, 0, 0)
	Top_Frame.Size = UDim2.new(1, 0, 0, 30)
	Top_Frame.ClipsDescendants = true

	Top_Frame_Corner.CornerRadius = UDim.new(0, 7)
	Top_Frame_Corner.Name = "Top_Frame_Corner"
	Top_Frame_Corner.Parent = Top_Frame

	Top_Frame_Corner.CornerRadius = UDim.new(0, 7)
	Top_Frame_Corner.Name = "Top_Frame_Corner"
	Top_Frame_Corner.Parent = Top_Frame

	Title_Hub.Name = "Title_Hub"
	Title_Hub.Parent = Body
	Title_Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_Hub.BackgroundTransparency = 1.000
	Title_Hub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_Hub.BorderSizePixel = 0
	Title_Hub.Position = UDim2.new(0, 5, 0, 0)
	Title_Hub.Size = UDim2.new(0, 558, 0, 30)
	Title_Hub.Font = Enum.Font.SourceSansBold
	Title_Hub.Text = "    " .. hubname .. " Project"
	Title_Hub.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title_Hub.TextSize = 15.000
	Title_Hub.TextXAlignment = Enum.TextXAlignment.Left

	MInimize_Button.Name = "MInimize_Button"
	MInimize_Button.Parent = Body
	MInimize_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MInimize_Button.BackgroundTransparency = 1.000
	MInimize_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MInimize_Button.BorderSizePixel = 0
	MInimize_Button.Position = UDim2.new(0, 515, 0, 0)
	MInimize_Button.Rotation = -315
	MInimize_Button.Size = UDim2.new(0, 30, 0, 30)
	MInimize_Button.AutoButtonColor = false
	MInimize_Button.Font = Enum.Font.SourceSans
	MInimize_Button.Text = "+"
	MInimize_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	MInimize_Button.TextSize = 40.000
	MInimize_Button.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Discord.Name = "Discord"
	Discord.Parent = Body
	Discord.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Discord.BorderSizePixel = 0
	Discord.Position = UDim2.new(0, 430, 0, 2)
	Discord.Size = UDim2.new(0, 85, 0, 25)
	Discord.AutoButtonColor = false
	Discord.Font = Enum.Font.SourceSans
	Discord.Text = ""
	Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
	Discord.TextSize = 14.000

	DiscUICorner.CornerRadius = UDim.new(0, 7)
	DiscUICorner.Parent = Discord

	Disc_Logo.Name = "Disc_Logo"
	Disc_Logo.Parent = Discord
	Disc_Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Disc_Logo.BackgroundTransparency = 1.000
	Disc_Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Disc_Logo.BorderSizePixel = 0
	Disc_Logo.Position = UDim2.new(0, 5, 0, 1)
	Disc_Logo.Size = UDim2.new(0, 23, 0, 23)
	Disc_Logo.Image = "http://www.roblox.com/asset/?id=14620084334"

	Disc_Title.Name = "Disc_Title"
	Disc_Title.Parent = Discord
	Disc_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Disc_Title.BackgroundTransparency = 1.000
	Disc_Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Disc_Title.BorderSizePixel = 0
	Disc_Title.Position = UDim2.new(0, 35, 0, 0)
	Disc_Title.Size = UDim2.new(0, 40, 0, 25)
	Disc_Title.Font = Enum.Font.SourceSansSemibold
	Disc_Title.Text = "Tiktok"
	Disc_Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Disc_Title.TextSize = 14.000
	Disc_Title.TextXAlignment = Enum.TextXAlignment.Left

	Discord.MouseEnter:Connect(function()
		UISettings:Tween(Discord, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}, .15)
		UISettings:Tween(Disc_Logo, {ImageTransparency = 0.7}, .15)
		UISettings:Tween(Disc_Title, {TextTransparency = 0.7}, .15)
	end)

	Discord.MouseLeave:connect(function()
		UISettings:Tween(Discord, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}, .15)
		UISettings:Tween(Disc_Logo, {ImageTransparency = 0}, .15)
		UISettings:Tween(Disc_Title, {TextTransparency = 0}, .15)
	end)

	Discord.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)("https://www.tiktok.com/@trustmenotcondom?_t=ZS-8syewdU3Bxq&_r=1")
		wait(.1)
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Tiktok",
			Text = "Tiktok copied on your clipboard",
			Button1 = "Okay",
			Duration = 20
		})
	end)

	Discord2.Name = "Discord2"
	Discord2.Parent = Body
	Discord2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Discord2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Discord2.BorderSizePixel = 0
	Discord2.Position = UDim2.new(0, 340, 0, 2)
	Discord2.Size = UDim2.new(0, 85, 0, 25)
	Discord2.AutoButtonColor = false
	Discord2.Font = Enum.Font.SourceSans
	Discord2.Text = ""
	Discord2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Discord2.TextSize = 14

	Disc2UICorner.CornerRadius = UDim.new(0, 7)
	Disc2UICorner.Parent = Discord2

	Disc2_Logo.Name = "Disc2_Logo"
	Disc2_Logo.Parent = Discord2
	Disc2_Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Disc2_Logo.BackgroundTransparency = 1
	Disc2_Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Disc2_Logo.BorderSizePixel = 0
	Disc2_Logo.Position = UDim2.new(0, 5, 0, 1)
	Disc2_Logo.Size = UDim2.new(0, 23, 0, 23)
	Disc2_Logo.Image = "http://www.roblox.com/asset/?id=12058969086"

	Disc2_Title.Name = "Disc2_Title"
	Disc2_Title.Parent = Discord2
	Disc2_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Disc2_Title.BackgroundTransparency = 1.000
	Disc2_Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Disc2_Title.BorderSizePixel = 0
	Disc2_Title.Position = UDim2.new(0, 35, 0, 0)
	Disc2_Title.Size = UDim2.new(0, 40, 0, 25)
	Disc2_Title.Font = Enum.Font.SourceSansSemibold
	Disc2_Title.Text = "Discord"
	Disc2_Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Disc2_Title.TextSize = 14.000
	Disc2_Title.TextXAlignment = Enum.TextXAlignment.Left

	Discord2.MouseEnter:Connect(function()
		UISettings:Tween(Discord2, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}, .15)
		UISettings:Tween(Disc2_Logo, {ImageTransparency = 0.7}, .15)
		UISettings:Tween(Disc2_Title, {TextTransparency = 0.7}, .15)
	end)

	Discord2.MouseLeave:connect(function()
		UISettings:Tween(Discord2, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}, .15)
		UISettings:Tween(Disc2_Logo, {ImageTransparency = 0}, .15)
		UISettings:Tween(Disc2_Title, {TextTransparency = 0}, .15)
	end)
	Discord2.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)("https://discord.gg/2qMwBeAtsd")
		wait(.1)
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Discord",
			Text = "Discord copied on your clipboard",
			Button1 = "Okay",
			Duration = 20
		})
	end)

	Server_Time.Name = "Server_Time"
	Server_Time.Parent = Body
	Server_Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Server_Time.BackgroundTransparency = 1.000
	Server_Time.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Server_Time.BorderSizePixel = 0
	Server_Time.Position = UDim2.new(0, 450, 0, 320)
	Server_Time.Size = UDim2.new(0, 120, 0, 25)
	Server_Time.Font = Enum.Font.SourceSansSemibold
	Server_Time.Text = ""
	Server_Time.TextColor3 = Color3.fromRGB(255, 255, 255)
	Server_Time.TextSize = 14.000
	Server_Time.TextXAlignment = Enum.TextXAlignment.Left

	local ServerTimeFunc = {}
	function ServerTimeFunc:Refresh(textadd)
		Server_Time.Text = textadd
	end

	function UpdateTime()
		local GameTime = math.floor(workspace.DistributedGameTime+0.5)
		local Hour = math.floor(GameTime/(60^2))%24
		local Minute = math.floor(GameTime/(60^1))%60
		local Second = math.floor(GameTime/(60^0))%60
		local FormatTime = string.format("%02d.%02d.%02d", Hour, Minute, Second)
		ServerTimeFunc:Refresh("Time : " .. FormatTime)
	end

	spawn(function()
		while game:GetService('RunService').Heartbeat:Wait() do
			UpdateTime()
		end
	end)


	local UserID = game.Players.LocalPlayer.UserId
	local ThumbType = Enum.ThumbnailType.HeadShot
	local ThumbSize = Enum.ThumbnailSize.Size420x420
	local Content = game.Players:GetUserThumbnailAsync(UserID,ThumbType,ThumbSize)

	UserInfo.Name = "UserInfo"
	UserInfo.Parent = Body
	UserInfo.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	UserInfo.BackgroundTransparency = 1
	UserInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserInfo.BorderSizePixel = 0
	UserInfo.Position = UDim2.new(0, 5, 0, 320)
	UserInfo.Size = UDim2.new(0, 85, 0, 25)
	UserInfo.AutoButtonColor = false
	UserInfo.Font = Enum.Font.SourceSans
	UserInfo.Text = ""
	UserInfo.TextColor3 = Color3.fromRGB(0, 0, 0)
	UserInfo.TextSize = 14.000

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = UserInfo

	UserInfo_Logo.Name = "UserInfo_Logo"
	UserInfo_Logo.Parent = UserInfo
	UserInfo_Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserInfo_Logo.BackgroundTransparency = 1.000
	UserInfo_Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserInfo_Logo.BorderSizePixel = 0
	UserInfo_Logo.Position = UDim2.new(0, 5, 0, 1)
	UserInfo_Logo.Size = UDim2.new(0, 23, 0, 23)
	UserInfo_Logo.Image = Content

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = UserInfo_Logo

	UserInfo_Title.Name = "UserInfo_Title"
	UserInfo_Title.Parent = UserInfo
	UserInfo_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserInfo_Title.BackgroundTransparency = 1.000
	UserInfo_Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserInfo_Title.BorderSizePixel = 0
	UserInfo_Title.Position = UDim2.new(0, 35, 0, 0)
	UserInfo_Title.Size = UDim2.new(0, 40, 0, 25)
	UserInfo_Title.Font = Enum.Font.SourceSansSemibold
	UserInfo_Title.Text = "User INFO : Freemium Access"
	UserInfo_Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	UserInfo_Title.TextSize = 14.000
	UserInfo_Title.TextXAlignment = Enum.TextXAlignment.Left

	List_Tile.Name = "List_Tile"
	List_Tile.Parent = Body
	List_Tile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	List_Tile.BorderColor3 = Color3.fromRGB(0, 0, 0)
	List_Tile.BorderSizePixel = 0
	List_Tile.Position = UDim2.new(0, 0, 0, 30)
	List_Tile.Size = UDim2.new(1, 0, 0, 2)

	Tile_Gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
		ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
		ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 50, 50)),
	})
	Tile_Gradient.Name = "Tile_Gradient"
	Tile_Gradient.Parent = List_Tile


	Toggle.Name = "Toggle"
	Toggle.Parent = ScreenGui
	Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	Toggle.BackgroundTransparency = 1
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0.0160791595, 0, 0.219451368, 0)
	Toggle.Size = UDim2.new(0, 40, 0, 40)
	Toggle.Draggable = true

	toggle_corner.Name = "toggle_corner"
	toggle_corner.Parent = Toggle

	toggle_Image.Name = "toggle_Image"
	toggle_Image.Parent = Toggle
	toggle_Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	toggle_Image.BackgroundTransparency = 1.000
	toggle_Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
	toggle_Image.BorderSizePixel = 0
	toggle_Image.Size = UDim2.new(0, 40, 0, 40)
	toggle_Image.Image = "rbxassetid://80812231439203"
	toggle_Image.ImageColor3 = Color3.fromRGB(150, 100, 255)
	toggle_Image.Draggable = true

	local confirmation = Instance.new("Frame")
	confirmation.Name = "Comfirm Dialog"
	confirmation.Size = UDim2.new(0.5, 0, 0.4, 0)
	confirmation.AnchorPoint = Vector2.new(0.5, 0.5)
	confirmation.Position = UDim2.new(0.5, 0, 0.5, 0)
	confirmation.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	confirmation.BackgroundTransparency = 0.1
	confirmation.Visible = false
	confirmation.ZIndex = 10
	confirmation.Parent = Body

	local confirmationDialog_Corner = Instance.new("UICorner")
	confirmationDialog_Corner.Name = "ComfirmDialog_Corner"
	confirmationDialog_Corner.CornerRadius = UDim.new(0, 10)
	confirmationDialog_Corner.Parent = confirmation

	local ConfirmationText = Instance.new("TextLabel")
	ConfirmationText.Name = "Confirmation Text"
	ConfirmationText.Size = UDim2.new(1, -20, 0.6, 0)
	ConfirmationText.Position = UDim2.new(0, 10, 0, 10)
	ConfirmationText.Text = "Are you sure you want to destroy this?"
	ConfirmationText.TextColor3 = Color3.fromRGB(255, 255, 255)
	ConfirmationText.BackgroundTransparency = 1
	ConfirmationText.Font = Enum.Font.SourceSans
	ConfirmationText.TextSize = 18
	ConfirmationText.ZIndex = 11
	ConfirmationText.TextWrapped = true
	ConfirmationText.Parent = confirmation

	local Confirm = Instance.new("TextButton")
	Confirm.Name = "Confirm Button"
	Confirm.Size = UDim2.new(0.4, -10, 0.2, 0)
	Confirm.Position = UDim2.new(0.1, 0, 0.7, 0)
	Confirm.Text = "Comfirm"
	Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
	Confirm.BackgroundColor3 = Color3.fromRGB(34, 33, 33)
	Confirm.Font = Enum.Font.SourceSans
	Confirm.TextSize = 16
	Confirm.ZIndex = 11
	Confirm.Parent = confirmation

	local Confirm_Corner = Instance.new("UICorner")
	Confirm_Corner.Name = "Confirm_Corner"
	Confirm_Corner.CornerRadius = UDim.new(0, 8)
	Confirm_Corner.Parent = Confirm

	local Cancel = Instance.new("TextButton")
	Cancel.Name = "Cancel Button"
	Cancel.Size = UDim2.new(0.4, -10, 0.2, 0)
	Cancel.Position = UDim2.new(0.5, 10, 0.7, 0)
	Cancel.Text = "No"
	Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
	Cancel.BackgroundColor3 = Color3.fromRGB(34, 33, 33)
	Cancel.Font = Enum.Font.SourceSans
	Cancel.TextSize = 16
	Cancel.ZIndex = 11
	Cancel.Parent = confirmation

	local cancel_Corner = Instance.new("UICorner")
	cancel_Corner.Name = "cancel_Corner"
	cancel_Corner.CornerRadius = UDim.new(0, 8)
	cancel_Corner.Parent = Cancel
	local function Center()
		confirmation.Position = UDim2.new(0.5, 0, 0.5, 0)
	end
	Center()
	Body:GetPropertyChangedSignal("Size"):Connect(Center)
	Body:GetPropertyChangedSignal("Position"):Connect(Center)

	MInimize_Button.MouseButton1Click:Connect(function()
		confirmation.Visible = true
	end)

	Confirm.MouseButton1Click:Connect(function()
		Library:DestroyGui()
	end)

	Cancel.MouseButton1Click:Connect(function()
		confirmation.Visible = false
	end)

	local isMinimized = false
	local centerPosition = UDim2.new(0.5, -300, 0.5, -175)

	toggle_Image.MouseButton1Click:Connect(function()
		if isMinimized then
			UISettings:Tween(Body, {Size = UDim2.new(0, 550, 0, 350), Position = centerPosition, BackgroundTransparency = 0.2}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			MInimize_Button.Text = "+"
		else
			UISettings:Tween(Body, {Size = UDim2.new(0, 0, 0, 0), Position = centerPosition, BackgroundTransparency = 1}, 0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
			MInimize_Button.Text = "-"
		end
		isMinimized = not isMinimized
	end)


local dragging = false
local dragInput, touchPos, framePos

Top_Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        touchPos = input.Position
        framePos = Body.Position
    end
end)

Top_Frame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - touchPos
        Body.Position = UDim2.new(
            framePos.X.Scale,
            framePos.X.Offset + delta.X,
            framePos.Y.Scale,
            framePos.Y.Offset + delta.Y
        )
    end
end)

Top_Frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

	

	local Tab_Container = Instance.new("Frame")
	local Tab_List = Instance.new("Frame")
	local TabList_Gradient = Instance.new("UIGradient")
	local Tab_Scroll = Instance.new("ScrollingFrame")
	local Tab_Scroll_Layout = Instance.new("UIListLayout")
	local Main_Container = Instance.new("Frame")
	local Container = Instance.new("Folder")

	Tab_Container.Name = "Tab_Container"
	Tab_Container.Parent = Body
	Tab_Container.BackgroundColor3 = Color3.fromRGB(64, 64, 95)
	Tab_Container.BackgroundTransparency = 1.000
	Tab_Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tab_Container.BorderSizePixel = 0
	Tab_Container.ClipsDescendants = true
	Tab_Container.Position = UDim2.new(0, 0, 0, 36)
	Tab_Container.Size = UDim2.new(1, 0, 0, 30)

	Tab_List.Name = "Tab_List"
	Tab_List.Parent = Tab_Container
	Tab_List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tab_List.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tab_List.BorderSizePixel = 0
	Tab_List.Position = UDim2.new(0, 0, 0, 28)
	Tab_List.Size = UDim2.new(1, 0, 0, 2)

	TabList_Gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
		ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
		ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 50, 50)),
	})
	TabList_Gradient.Name = "TabList_Gradient"
	TabList_Gradient.Parent = Tab_List

	Tab_Scroll.Name = "Tab_Scroll"
	Tab_Scroll.Parent = Tab_Container
	Tab_Scroll.Active = true
	Tab_Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tab_Scroll.BackgroundTransparency = 1.000
	Tab_Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tab_Scroll.BorderSizePixel = 0
	Tab_Scroll.Position = UDim2.new(0, 10, 0, 0)
	Tab_Scroll.Size = UDim2.new(1, -20, 0, 30)
	Tab_Scroll.CanvasPosition = Vector2.new(0, 150)
	Tab_Scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	Tab_Scroll.ScrollBarThickness = 0

	Tab_Scroll_Layout.Name = "Tab_Scroll_Layout"
	Tab_Scroll_Layout.Parent = Tab_Scroll
	Tab_Scroll_Layout.FillDirection = Enum.FillDirection.Horizontal
	Tab_Scroll_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	Tab_Scroll_Layout.VerticalAlignment = Enum.VerticalAlignment.Top
	Tab_Scroll_Layout.SortOrder = Enum.SortOrder.LayoutOrder
	Tab_Scroll_Layout.Padding = UDim.new(0, 5)

	Tab_Scroll_Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		Tab_Scroll.CanvasSize = UDim2.new(0, 0 + Tab_Scroll_Layout.Padding.Offset + Tab_Scroll_Layout.AbsoluteContentSize.X, 0, 0)
	end)

	Tab_Scroll.ChildAdded:Connect(function()
		Tab_Scroll.CanvasSize = UDim2.new(0, 0 + Tab_Scroll_Layout.Padding.Offset + Tab_Scroll_Layout.AbsoluteContentSize.X, 0, 0)
	end)

	Main_Container.Name = "Main_Container"
	Main_Container.Parent = Body
	Main_Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main_Container.BackgroundTransparency = 1.000
	Main_Container.BorderSizePixel = 0
	Main_Container.Position = UDim2.new(0, 5, 0, 70)
	Main_Container.Size = UDim2.new(0, 590, 0, 300)

	local ContainerGradients = Instance.new("UIGradient")
	ContainerGradients.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 0, 0)),
		ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
		ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 0)),
	})
	ContainerGradients.Name = "ContainerGradients"
	ContainerGradients.Parent = Main_Container

	Container.Name = "Container"
	Container.Parent = Main_Container


	local Tabs = {}
	local is_first_tab = true
	function Tabs:addTab(title_tab, icon_name)

		local IconMapping = {
			["cat-quantum"] = "rbxassetid://82115431450716",
			["home-quantum"] = "rbxassetid://130439434919073",
			["swords-quantum"] = "rbxassetid://88173691221304",
			["rabbit-quantum"] = "rbxassetid://138575837887336",
			["ship-quantum"] = "rbxassetid://115481449706054",
			["visual-quantum"] = "rbxassetid://102173201308116",
			["info-quantum"] = "rbxassetid://88050097561287",
			["misc-quantum"] = "rbxassetid://137985950260873",
			["cart-quantum"] = "rbxassetid://137995400175306",
			["cherry-quantum"] = "rbxassetid://122029349593217",
			["map-quantum"] = "rbxassetid://125480398387209",
			["raid-quantum"] = "rbxassetid://104575804564229",
			["user-quantum"] = "rbxassetid://83474083071373",
			["settings-quantum"] = "rbxassetid://81151604784579",
			["bio-quantum"] = "rbxassetid://132316362727024"
		}
	
		local Tab_Items = Instance.new("TextButton")
		local Tab_Item_Corner = Instance.new("UICorner")
		local Tab_Underline_Corner = Instance.new("UICorner")
		local Tab_Underline = Instance.new("Frame")
		local Tab_Icon = Instance.new("ImageLabel")
	
		Tab_Items.Name = "Tab_Items"
		Tab_Items.Parent = Tab_Scroll
		Tab_Items.BackgroundColor3 = Color3.fromRGB(150, 100, 255)
		Tab_Items.BackgroundTransparency = 1.000
		Tab_Items.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab_Items.BorderSizePixel = 0
		Tab_Items.Size = UDim2.new(0, 0, 0, 24)
		Tab_Items.AutoButtonColor = false
		Tab_Items.Font = Enum.Font.SourceSansSemibold
		Tab_Items.TextColor3 = Color3.fromRGB(200, 200, 200)
		Tab_Items.TextSize = 14.000
		Tab_Items.TextXAlignment = Enum.TextXAlignment.Right
		Tab_Items.Text = "" .. title_tab
	
		Tab_Item_Corner.Name = "Tab_Item_Corner"
		Tab_Item_Corner.CornerRadius = UDim.new(0, 8)
		Tab_Item_Corner.Parent = Tab_Items
	
		Tab_Icon.Name = "Tab_Icon"
		Tab_Icon.Parent = Tab_Items
		Tab_Icon.BackgroundTransparency = 1.000
		Tab_Icon.Size = UDim2.new(0, 16, 0, 16)
		Tab_Icon.Position = UDim2.new(0, 5, 0.5, -8)
		Tab_Icon.Image = IconMapping[icon_name] or ""
	
		Tab_Underline.Name = "Tab_Underline"
		Tab_Underline.Parent = Tab_Items
		Tab_Underline.BackgroundColor3 = Color3.fromRGB(150, 100, 255)
		Tab_Underline.BorderSizePixel = 0
		Tab_Underline.Size = UDim2.new(1, 0, 0, 3)
		Tab_Underline.Position = UDim2.new(0, 0, 1, 0)
		Tab_Underline.Visible = false
	
		Tab_Underline_Corner.Name = "Tab_Underline_Corner"
		Tab_Underline_Corner.CornerRadius = UDim.new(1, 10)
		Tab_Underline_Corner.Parent = Tab_Underline
	
		UISettings:Tween(Tab_Items, {Size = UDim2.new(0, 30 + Tab_Items.TextBounds.X, 0, 24)}, .15)
	
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local Scrolling_Layout = Instance.new("UIListLayout")
	
		ScrollingFrame.Name = "ScrollingFrame"
		ScrollingFrame.Parent = Container
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
		ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
		ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.ScrollBarThickness = 0
		ScrollingFrame.Visible = false
	
		Scrolling_Layout.Name = "Scrolling_Layout"
		Scrolling_Layout.Parent = ScrollingFrame
		Scrolling_Layout.FillDirection = Enum.FillDirection.Horizontal
		Scrolling_Layout.SortOrder = Enum.SortOrder.LayoutOrder
		Scrolling_Layout.Padding = UDim.new(0, 19)
	
		Scrolling_Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0, Scrolling_Layout.AbsoluteContentSize.X, 0, 0)
		end)
	
		ScrollingFrame.ChildAdded:Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0, Scrolling_Layout.AbsoluteContentSize.X, 0, 0)
		end)
	
		if is_first_tab then
			is_first_tab = false
			Tab_Items.TextColor3 = Color3.fromRGB(255, 255, 255)
			Tab_Underline.Visible = true
			ScrollingFrame.Visible = true
		end
	
		Tab_Items.MouseButton1Click:Connect(function()
			for _, v in next, Tab_Scroll:GetChildren() do
				if v:IsA("TextButton") then
					v.TextColor3 = Color3.fromRGB(200, 200, 200)
					if v:FindFirstChild("Tab_Underline") then
						v.Tab_Underline.Visible = false
					end
				end
			end
	
			Tab_Items.TextColor3 = Color3.fromRGB(255, 255, 255)
			Tab_Underline.Visible = true
			for _, v in next, Container:GetChildren() do
				if v.Name == "ScrollingFrame" then
					v.Visible = false
				end
			end
			ScrollingFrame.Visible = true
		end)
	
		local Section = {}
		function Section:addSection()
			local SectionScroll = Instance.new("ScrollingFrame")
			local UIListLayout_Section = Instance.new("UIListLayout")
		
			SectionScroll.Name = "SectionScroll"
			SectionScroll.Parent = ScrollingFrame
			SectionScroll.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			SectionScroll.BackgroundTransparency = 1
			SectionScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionScroll.BorderSizePixel = 0
			SectionScroll.Size = UDim2.new(0, 260, 0, 245)
			SectionScroll.ScrollBarImageColor3 = Color3.fromRGB(150, 100, 255)
			SectionScroll.ScrollBarThickness = 4
			SectionScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
		
			UIListLayout_Section.Parent = SectionScroll
			UIListLayout_Section.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_Section.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_Section.Padding = UDim.new(0, 6)
		
			local function CanvasSize()
				local NewHeight = UIListLayout_Section.AbsoluteContentSize.Y + UIListLayout_Section.Padding.Offset + 5
				SectionScroll.CanvasSize = UDim2.new(0, 0, 0, NewHeight)
			end

			UIListLayout_Section:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(CanvasSize)
			SectionScroll.ChildAdded:Connect(CanvasSize)
			SectionScroll.ChildRemoved:Connect(CanvasSize)
		
			local Menus = {}
			function Menus:addMenu(title_menu)
				local Section = Instance.new("Frame")
				local Section_Inner = Instance.new("Frame")
				local UIListLayout = Instance.new("UIListLayout")
				local UICorner = Instance.new("UICorner")
				local List = Instance.new("Frame")
				local UIGradient = Instance.new("UIGradient")
				local UIGradient_2 = Instance.new("UIGradient")
				local TextLabel = Instance.new("TextLabel")
		
				Section.Name = "Section" or title_menu
				Section.Parent = SectionScroll
				Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Section.BackgroundTransparency = 1.000
				Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Section.BorderSizePixel = 0
				Section.Size = UDim2.new(1, 0, 0, 25)
		
				Section_Inner.Name = "Section_Inner"
				Section_Inner.Parent = Section
				Section_Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Section_Inner.BackgroundTransparency = 0.3
				Section_Inner.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Section_Inner.BorderSizePixel = 0
				Section_Inner.Position = UDim2.new(0, 5, 0, 0)
				Section_Inner.Size = UDim2.new(1, -10, 0, 25)
		
				UIGradient_2.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 18, 18)),
					ColorSequenceKeypoint.new(0.3, Color3.fromRGB(18, 18, 18)),
					ColorSequenceKeypoint.new(0.7, Color3.fromRGB(18, 18, 18)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 18, 18)),
				})
				UIGradient_2.Parent = Section_Inner
		
				UIListLayout.Parent = Section_Inner
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 3)
		
				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = Section_Inner
		
				TextLabel.Parent = Section_Inner
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Size = UDim2.new(1, 0, 0, 20)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.Text = title_menu
				TextLabel.TextColor3 = Color3.fromRGB(150, 100, 255)
				TextLabel.TextSize = 14.000
		
				List.Name = "List"
				List.Parent = Section_Inner
				List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				List.BorderColor3 = Color3.fromRGB(0, 0, 0)
				List.BorderSizePixel = 0
				List.Size = UDim2.new(1, 0, 0, 1)
		
				UIGradient.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
					ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
					ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 50, 50)),
				})
				UIGradient.Parent = List
				local function SectionSize()
					local contentHeight = UIListLayout.AbsoluteContentSize.Y + UIListLayout.Padding.Offset + 5
					Section.Size = UDim2.new(1, 0, 0, contentHeight)
					Section_Inner.Size = UDim2.new(1, -10, 0, contentHeight)
				end
				UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(SectionSize)
				SectionSize()

				local Menu_Item = {}
				function Menu_Item:addButton(button_title, callback)
					callback = callback or function() end
				
					local TextButton = Instance.new("TextButton")
					local UICorner = Instance.new("UICorner")
				
					TextButton.Parent = Section_Inner
					TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					TextButton.BorderSizePixel = 0
					TextButton.Size = UDim2.new(1, -15, 0, 25)
					TextButton.AutoButtonColor = false
					TextButton.Font = Enum.Font.SourceSansSemibold
					TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.TextSize = 12
					TextButton.Text = button_title
				
					UICorner.CornerRadius = UDim.new(0, 4)
					UICorner.Parent = TextButton
				
					local DefaultColor = Color3.fromRGB(40, 40, 40)
					local HoverColor = Color3.fromRGB(60, 60, 60)
				
					TextButton.MouseEnter:Connect(function()
						TextButton.BackgroundColor3 = HoverColor
					end)
				
					TextButton.MouseLeave:Connect(function()
						TextButton.BackgroundColor3 = DefaultColor
					end)
				
					TextButton.MouseButton1Click:Connect(function()
						callback()
					end)
				end
				
				
				function Menu_Item:addToggle(toggle_title, default, callback, description)
					callback = callback or function() end
					default = default or false
					description = description or ""
					
					local HasDescription = description ~= ""
					local Frame = Instance.new("Frame")
					local ToggleButton = Instance.new("ImageButton")
					local TitleLabel = Instance.new("TextLabel")
					local DescriptionLabel = HasDescription and Instance.new("TextLabel") or nil
					local UICorner = Instance.new("UICorner")
					local UIFrameCorner = Instance.new("UICorner")
				
					local BackgroundFrame = Instance.new("Frame")
					
					Frame.Parent = Section_Inner
					Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Frame.Size = UDim2.new(1, -15, 0, HasDescription and 40 or 25)
					Frame.Position = UDim2.new(0, 5, 0, 0)
					Frame.BorderSizePixel = 0

					BackgroundFrame.Parent = Frame
					BackgroundFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					BackgroundFrame.Position = UDim2.new(0, 5, 0.5, -8)
					BackgroundFrame.Size = UDim2.new(0, 18, 0, 18)
					BackgroundFrame.BorderSizePixel = 0
				
					UIFrameCorner.CornerRadius = UDim.new(0, 5)
					UIFrameCorner.Parent = BackgroundFrame
				
					ToggleButton.Parent = Frame
					ToggleButton.BackgroundTransparency = 1
					ToggleButton.Position = UDim2.new(0, 5, 0.5, -8)
					ToggleButton.Size = UDim2.new(0, 18, 0, 18)
					ToggleButton.Image = "rbxassetid://3926311105"
					ToggleButton.ImageRectOffset = Vector2.new(940, 784)
					ToggleButton.ImageRectSize = Vector2.new(50, 50)
					ToggleButton.ImageColor3 = Color3.fromRGB(30, 30, 30)
				
					TitleLabel.Parent = Frame
					TitleLabel.BackgroundTransparency = 1
					TitleLabel.Position = UDim2.new(0, 30, 0, 0)
					TitleLabel.Size = UDim2.new(1, -35, 0, 20)
					TitleLabel.Font = Enum.Font.SourceSansSemibold
					TitleLabel.Text = toggle_title
					TitleLabel.TextSize = 14
					TitleLabel.TextColor3 = default and Color3.fromRGB(150, 100, 255) or Color3.fromRGB(255, 255, 255)
					TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
				
					if HasDescription then
						DescriptionLabel.Parent = Frame
						DescriptionLabel.BackgroundTransparency = 1
						DescriptionLabel.Position = UDim2.new(0, 30, 0, 20)
						DescriptionLabel.Size = UDim2.new(1, -35, 0, 15)
						DescriptionLabel.Font = Enum.Font.SourceSans
						DescriptionLabel.Text = description
						DescriptionLabel.TextSize = 10
						DescriptionLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
						DescriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
					end
				
					UICorner.CornerRadius = UDim.new(0, 5)
					UICorner.Parent = Frame
				
					local ToggleState = default
					local ImageOff = Vector2.new(940, 784)
					local ImageOn = Vector2.new(3, 836)
				
					local function UpdateToggle()
						ToggleButton.ImageRectOffset = ToggleState and ImageOn or ImageOff
						ToggleButton.ImageColor3 = ToggleState and Color3.fromRGB(150, 100, 255) or Color3.fromRGB(30, 30, 30)
						TitleLabel.TextColor3 = ToggleState and Color3.fromRGB(150, 100, 255) or Color3.fromRGB(255, 255, 255)
						callback(ToggleState)
					end
				
					UpdateToggle()
				
					ToggleButton.MouseButton1Click:Connect(function()
						ToggleState = not ToggleState
						UpdateToggle()
					end)
				
					ToggleButton.MouseEnter:Connect(function()
						Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					end)
				
					ToggleButton.MouseLeave:Connect(function()
						Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					end)
				end
				
				
				function Menu_Item:addSlider(slider_title, min, max, default, callback)
					callback = callback or function() end
					min = min or 0
					max = max or 100
					default = default or min
				
					default = math.clamp(default, min, max)
				
					local Frame = Instance.new("Frame")
					local SliderBackground = Instance.new("Frame")
					local SliderFill = Instance.new("Frame")
					local BackgroundCorner = Instance.new("UICorner")
					local FillCorner = Instance.new("UICorner")
					local TitleLabel = Instance.new("TextLabel")
					local ValueLabel = Instance.new("TextLabel")
					local FrameCorner = Instance.new("UICorner")
				
					Frame.Parent = Section_Inner
					Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Frame.Size = UDim2.new(1, -15, 0, 50)
					Frame.Position = UDim2.new(0, 5, 0, 0)
					Frame.BorderSizePixel = 0
				
					TitleLabel.Parent = Frame
					TitleLabel.BackgroundTransparency = 1
					TitleLabel.Position = UDim2.new(0, 5, 0, 5)
					TitleLabel.Size = UDim2.new(1, -55, 0, 20)
					TitleLabel.Font = Enum.Font.SourceSansSemibold
					TitleLabel.Text = slider_title
					TitleLabel.TextSize = 14
					TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
				
					ValueLabel.Parent = Frame
					ValueLabel.BackgroundTransparency = 1
					ValueLabel.Position = UDim2.new(1, -55, 0, 5)
					ValueLabel.Size = UDim2.new(0, 45, 0, 20)
					ValueLabel.Font = Enum.Font.SourceSans
					ValueLabel.Text = tostring(default)
					ValueLabel.TextSize = 14
					ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
				
					SliderBackground.Parent = Frame
					SliderBackground.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
					SliderBackground.Position = UDim2.new(0, 5, 0, 30)
					SliderBackground.Size = UDim2.new(1, -15, 0, 15)
				
					BackgroundCorner.CornerRadius = UDim.new(0.4, 0)
					BackgroundCorner.Parent = SliderBackground
				
					SliderFill.Parent = SliderBackground
					SliderFill.BackgroundColor3 = Color3.fromRGB(150, 100, 255)
					SliderFill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
				
					FillCorner.CornerRadius = UDim.new(0.4, 0)
					FillCorner.Parent = SliderFill
				
					FrameCorner.CornerRadius = UDim.new(0, 8)
					FrameCorner.Parent = Frame

					local function updateSlider(inputPosition)
						local relativePosition = math.clamp((inputPosition - SliderBackground.AbsolutePosition.X) / SliderBackground.AbsoluteSize.X, 0, 1)
						local value = math.floor((min + (max - min) * relativePosition) + 0.5)

						SliderFill.Size = UDim2.new(relativePosition, 0, 1, 0)
						ValueLabel.Text = tostring(value)

						callback(value)
					end

					updateSlider(SliderBackground.AbsolutePosition.X + SliderBackground.AbsoluteSize.X * ((default - min) / (max - min)))
				
					local dragging = false

					local function onInputChanged(input)
						if dragging then
							local inputPos = input.Position.X
							updateSlider(inputPos)
						end
					end

					local function onInputBegan(input)
						if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true
							updateSlider(input.Position.X)
						end
					end
				
					local function onInputEnded(input)
						if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
						end
					end
					SliderBackground.InputBegan:Connect(onInputBegan)
					game:GetService("UserInputService").InputChanged:Connect(onInputChanged)
					game:GetService("UserInputService").InputEnded:Connect(onInputEnded)
				end
				
				function Menu_Item:addDropdown(dropdown_tile, default, list, callback)
					default = default or "None"
					list = list or {}
					callback = callback or function() end
				
					local Frame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local TextLabel = Instance.new("TextLabel")
					local ImageButton = Instance.new("ImageButton")
					local SelectedBox = Instance.new("Frame")
					local SelectedBoxCorner = Instance.new("UICorner")
				
					Frame.Parent = Section_Inner
					Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
					Frame.BorderSizePixel = 1
					Frame.Size = UDim2.new(1, -15, 0, 25)
				
					UICorner.CornerRadius = UDim.new(0, 4)
					UICorner.Parent = Frame
				
					TextLabel.Parent = Frame
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 5, 0, 0)
					TextLabel.Size = UDim2.new(1, -40, 0, 25)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 12.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left
					TextLabel.Text = "  " .. dropdown_tile
				
					SelectedBox.Parent = Frame
					SelectedBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					SelectedBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
					SelectedBox.BorderSizePixel = 1
					SelectedBox.Position = UDim2.new(0, 115, 0, 2)
					SelectedBox.Size = UDim2.new(1, -150, 0, 20)
				
					SelectedBoxCorner.CornerRadius = UDim.new(0, 4)
					SelectedBoxCorner.Parent = SelectedBox
				
					local SelectedText = Instance.new("TextLabel")
					local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
				
					SelectedText.Parent = SelectedBox
					SelectedText.BackgroundTransparency = 1
					SelectedText.Size = UDim2.new(1, -5, 1, 0)
					SelectedText.Position = UDim2.new(0, 5, 0, 0)
					SelectedText.Font = Enum.Font.SourceSansSemibold
					SelectedText.TextColor3 = Color3.fromRGB(255, 255, 255)
					SelectedText.TextSize = 12
					SelectedText.TextScaled = true
					SelectedText.TextXAlignment = Enum.TextXAlignment.Center
					SelectedText.Text = default or "None"
					UITextSizeConstraint.Parent = SelectedText
					UITextSizeConstraint.MaxTextSize = 12
				
					ImageButton.Parent = Frame
					ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageButton.BackgroundTransparency = 1
					ImageButton.Position = UDim2.new(1, -30, 0, 2)
					ImageButton.Size = UDim2.new(0, 21, 0, 22)
					ImageButton.Image = "rbxassetid://95968409641902"
				
					if default and default ~= "None" then
						for _, v in pairs(list) do
							if v == default then
								SelectedText.Text = v
								callback(v)
							end
						end
					end
				
					local ScrollDown = Instance.new("Frame")
					local UIListLayout = Instance.new("UIListLayout")
					local ScrollUICorner = Instance.new("UICorner")
				
					ScrollDown.Name = "ScrollDown"
					ScrollDown.Parent = Section_Inner
					ScrollDown.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					ScrollDown.BorderColor3 = Color3.fromRGB(255, 255, 255)
					ScrollDown.BorderSizePixel = 1
					ScrollDown.ClipsDescendants = true
					ScrollDown.Size = UDim2.new(1, -10, 0, 0)
				
					UIListLayout.Parent = ScrollDown
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 3)
				
					ScrollUICorner.CornerRadius = UDim.new(0, 4)
					ScrollUICorner.Parent = ScrollDown
				
					local dropdown_toggle = false
					local CurrentSelection
				
					local function RotateIcon(open)
						local TargetRotation = open and 180 or 0
						UISettings:Tween(ImageButton, {Rotation = TargetRotation}, 0.15)
					end
				
					ImageButton.MouseButton1Click:Connect(function()
						if dropdown_toggle then
							UISettings:Tween(ScrollDown, {Size = UDim2.new(1, -10, 0, 0)}, 0.15)
							UISettings:Tween(ImageButton, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, .15)
							UISettings:Tween(TextLabel, {TextColor3 = Color3.fromRGB(255, 255, 255)}, .15)
						else
							UISettings:Tween(ScrollDown, {Size = UDim2.new(1, -10, 0, UIListLayout.AbsoluteContentSize.Y + 5)}, 0.15)
							UISettings:Tween(ImageButton, {ImageColor3 = Color3.fromRGB(150, 100, 255)}, .15)
							UISettings:Tween(TextLabel, {TextColor3 = Color3.fromRGB(150, 100, 255)}, .15)
						end
						dropdown_toggle = not dropdown_toggle
						RotateIcon(dropdown_toggle)
					end)
				
					for _, v in pairs(list) do
						local TextButton = Instance.new("TextButton")
				
						TextButton.Parent = ScrollDown
						TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						TextButton.BackgroundTransparency = 1.000
						TextButton.BorderSizePixel = 0
						TextButton.Size = UDim2.new(1, 0, 0, 25)
						TextButton.Font = Enum.Font.SourceSansSemibold
						TextButton.AutoButtonColor = false
						TextButton.TextSize = 12.000
						TextButton.Text = v
						TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				
						TextButton.MouseEnter:Connect(function()
							UISettings:Tween(TextButton, {TextColor3 = Color3.fromRGB(150, 100, 255)}, 0.15)
						end)
				
						TextButton.MouseLeave:Connect(function()
							if TextButton ~= CurrentSelection then
								UISettings:Tween(TextButton, {TextColor3 = Color3.fromRGB(255, 255, 255)}, 0.15)
							end
						end)
				
						TextButton.MouseButton1Click:Connect(function()
							if CurrentSelection then
								UISettings:Tween(CurrentSelection, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}, 0.15)
								UISettings:Tween(CurrentSelection, {TextColor3 = Color3.fromRGB(255, 255, 255)}, 0.15)
							end
							CurrentSelection = TextButton
							UISettings:Tween(TextButton, {BackgroundColor3 = Color3.fromRGB(150, 100, 255)}, 0.15)
							UISettings:Tween(TextButton, {TextColor3 = Color3.fromRGB(255, 255, 255)}, 0.15)
				
							dropdown_toggle = false
							SelectedText.Text = v
							callback(v)
							UISettings:Tween(ScrollDown, {Size = UDim2.new(1, -10, 0, 0)}, 0.15)
							UISettings:Tween(ImageButton, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, .15)
							UISettings:Tween(TextLabel, {TextColor3 = Color3.fromRGB(255, 255, 255)}, .15)
							RotateIcon(dropdown_toggle)
						end)
					end
					return {}
				end
				function Menu_Item:addTextbox(text_tile, default, callback)
					callback = callback or function() end
				
					local Frame = Instance.new("Frame")
					local UICorner_Frame = Instance.new("UICorner")
					local UICorner_TextBox = Instance.new("UICorner")
					local TextLabel = Instance.new("TextLabel")
					local UITextSizeConstraint_Label = Instance.new("UITextSizeConstraint")
					local TextBox = Instance.new("TextBox")
					local UITextSizeConstraint_Box = Instance.new("UITextSizeConstraint")
				
					Frame.Parent = Section_Inner
					Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Frame.BorderSizePixel = 0
					Frame.Size = UDim2.new(1, -15, 0, 25)
				
					UICorner_Frame.CornerRadius = UDim.new(0, 4)
					UICorner_Frame.Parent = Frame
				
					TextLabel.Parent = Frame
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextLabel.BorderSizePixel = 0
					TextLabel.Position = UDim2.new(0, 5, 0, 0)
					TextLabel.Size = UDim2.new(0, 150, 0, 25)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 12.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left
					TextLabel.Text = text_tile
					TextLabel.TextScaled = true
					UITextSizeConstraint_Label.Parent = TextLabel
					UITextSizeConstraint_Label.MaxTextSize = 12
				
					TextBox.Parent = Frame
					TextBox.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
					TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextBox.BorderSizePixel = 0
					TextBox.Position = UDim2.new(0, 160, 0, 2)
					TextBox.Size = UDim2.new(0, 70, 0, 20)
					TextBox.Font = Enum.Font.SourceSansSemibold
					TextBox.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextBox.TextSize = 12.000
					TextBox.TextTransparency = 0.5
					TextBox.Text = default or "Type Here"
					TextBox.TextScaled = true
					UITextSizeConstraint_Box.Parent = TextBox
					UITextSizeConstraint_Box.MaxTextSize = 12
				
					UICorner_TextBox.CornerRadius = UDim.new(0, 6)
					UICorner_TextBox.Parent = TextBox
				
					local function OnFocusLost(EnterPressed)
						if EnterPressed then
							callback(TextBox.Text)
							UISettings:Tween(TextBox, {TextColor3 = Color3.fromRGB(150, 100, 255)}, .1)
							UISettings:Tween(TextLabel, {TextColor3 = Color3.fromRGB(150, 100, 255)}, .1)
							wait(.1)
							UISettings:Tween(TextBox, {TextColor3 = Color3.fromRGB(255, 255, 255)}, .5)
							UISettings:Tween(TextLabel, {TextColor3 = Color3.fromRGB(255, 255, 255)}, .5)
						end
						UISettings:Tween(TextBox, {TextTransparency = 0.5, TextColor3 = Color3.fromRGB(200, 200, 200)}, 0.3)
					end
				
					local function OnFocused()
						UISettings:Tween(TextBox, {TextTransparency = 0, TextColor3 = Color3.fromRGB(255, 255, 255)}, 0.3)
					end
				
					TextBox.Focused:Connect(OnFocused)
					TextBox.FocusLost:Connect(OnFocusLost)
				end
				function Menu_Item:addLabel(title_text, description_text)
					local LabelFunc = {}
					
					local PaddingBetweenLabels = 10
					local PaddingFrame = 15

					local BackgroundFrame = Instance.new("Frame")
					local UICorner_Frame = Instance.new("UICorner")
				
					local TitleFrame = Instance.new("Frame")
					local TitleLabel = Instance.new("TextLabel")
				
					local DescriptionFrame = Instance.new("Frame")
					local DescriptionLabel = Instance.new("TextLabel")
				
					BackgroundFrame.Parent = Section_Inner
					BackgroundFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					BackgroundFrame.BorderSizePixel = 0
					BackgroundFrame.Size = UDim2.new(1, -20, 0, 50)
					BackgroundFrame.ClipsDescendants = true
				
					UICorner_Frame.CornerRadius = UDim.new(0, 6)
					UICorner_Frame.Parent = BackgroundFrame
			
					TitleFrame.Parent = BackgroundFrame
					TitleFrame.BackgroundTransparency = 1.0
					TitleFrame.Size = UDim2.new(1, 0, 0, 20)
					TitleFrame.Position = UDim2.new(0, 0, 0, 0)
				
					TitleLabel.Parent = TitleFrame
					TitleLabel.BackgroundTransparency = 1.0
					TitleLabel.Size = UDim2.new(1, -10, 1, 0)
					TitleLabel.Position = UDim2.new(0, 5, 0, 7)
					TitleLabel.Font = Enum.Font.SourceSansBold
					TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TitleLabel.TextSize = 14.0
					TitleLabel.TextWrapped = true
					TitleLabel.TextXAlignment = Enum.TextXAlignment.Center
					TitleLabel.Text = title_text or "Default Title"
				
					DescriptionFrame.Parent = BackgroundFrame
					DescriptionFrame.BackgroundTransparency = 1.0
					DescriptionFrame.Size = UDim2.new(1, 0, 0, 20)
					DescriptionFrame.Position = UDim2.new(0, 0, 0, 30)
				
					DescriptionLabel.Parent = DescriptionFrame
					DescriptionLabel.BackgroundTransparency = 1.0
					DescriptionLabel.Size = UDim2.new(1, -10, 1, 0)
					DescriptionLabel.Position = UDim2.new(0, 5, 0, 0)
					DescriptionLabel.Font = Enum.Font.SourceSans
					DescriptionLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
					DescriptionLabel.TextSize = 12.0
					DescriptionLabel.TextWrapped = false
					DescriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
					DescriptionLabel.Text = (description_text or "Default description."):gsub("\\n", "\n")
				
					local function AdjustFrameHeight()
						task.wait()
				
						local TitleHeight = TitleLabel.TextBounds.Y
						local DescriptionHeight = DescriptionLabel.TextBounds.Y
				
						TitleFrame.Size = UDim2.new(1, 0, 0, TitleHeight)
						DescriptionFrame.Position = UDim2.new(0, 0, 0, TitleHeight + PaddingBetweenLabels)
						DescriptionFrame.Size = UDim2.new(1, 0, 0, DescriptionHeight)
				
						local TotalHeight = TitleHeight + DescriptionHeight + PaddingBetweenLabels + PaddingFrame
						BackgroundFrame.Size = UDim2.new(1, -20, 0, TotalHeight)
					end
				
					TitleLabel:GetPropertyChangedSignal("TextBounds"):Connect(AdjustFrameHeight)
					DescriptionLabel:GetPropertyChangedSignal("TextBounds"):Connect(AdjustFrameHeight)
				
					AdjustFrameHeight()

					function LabelFunc:RefreshTitle(NewTitle)
						if TitleLabel.Text ~= NewTitle then
							TitleLabel.Text = NewTitle:gsub("\\n", "\n")
							AdjustFrameHeight()
						end
					end
				
					function LabelFunc:RefreshDesc(NewDescription)
						if DescriptionLabel.Text ~= NewDescription then
							DescriptionLabel.Text = NewDescription:gsub("\\n", "\n")
							AdjustFrameHeight()
						end
					end
				
					return LabelFunc
				end
				return Menu_Item
			end
			return Menus
		end
		return Section
	end
	return Tabs
end

local Vector2, CFrame, Instance, UDim2 = Vector2, CFrame, Instance, UDim2
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")


local PlaceId, JobId = game.PlaceId, game.JobId
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())
local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

local Player = Players.LocalPlayer
local Characters = Workspace.Characters

local function WaitForChilds(Path, ...)
    for _, child in ipairs({...}) do
        if not Path then return nil end
        Path = Path:WaitForChild(child)
    end
    return Path
end

local Remotes = WaitForChilds(ReplicatedStorage, "Remotes")
local PlayerLevel = WaitForChilds(Player, "Data", "Level")
local Enemies = WaitForChilds(Workspace, "Enemies")
local CommF_ = WaitForChilds(Remotes, "CommF_")
local WorldOrigin = WaitForChilds(Workspace, "_WorldOrigin")


  local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()

  local World1, World2, World3 = game.PlaceId == 2753915549, game.PlaceId == 4442272183, game.PlaceId == 7449423635

  local hookmetamethod = hookmetamethod or function(...) return ... end
  
local GlobalEnv = function()
    if pcall(function() 
		return getgenv() 
		end)
	then
        return getgenv()
    end
    if _G then
        return _G
    end
    return {}
end
local _ENV = GlobalEnv()

local function FireRemote(...)
	return CommF_:InvokeServer(...)
end
  
  local StopFlag = false

  local function GetCharacter()
	  local plrchar = Player.Character or Player.CharacterAdded:Wait()
	  plrchar:WaitForChild("HumanoidRootPart")
	  return plrchar
  end
  
  local function WaitForHumanoidRootPart(char)
	  local hrp = char:WaitForChild("HumanoidRootPart", 5)
	  return hrp
  end
  
  local function GetHumanoidRootPart(char)
	  if not char then return nil end
	  return char:FindFirstChild("HumanoidRootPart") or WaitForHumanoidRootPart(char)
  end
  
  function CheckNearestTeleporter(aI)
	  local vcspos = aI.Position
	  local minDist = math.huge
	  local chosenTeleport = nil
  
	  local TableLocations = {}
	  if World1 then
		  TableLocations = {
			  ["1"] = Vector3.new(-7894.62, 5545.49, -380.25),
			  ["2"] = Vector3.new(-4607.82, 872.54, -1667.56),
			  ["3"] = Vector3.new(61163.85, 11.76, 1819.78),
			  ["4"] = Vector3.new(3876.28, 35.11, -1939.32)
		  }
	  elseif World2 then
		  TableLocations = {
			  ["1"] = Vector3.new(-288.46, 306.13, 598),
			  ["2"] = Vector3.new(2284.91, 15.15, 905.48),
			  ["3"] = Vector3.new(923.21, 126.98, 32852.83),
			  ["4"] = Vector3.new(-6508.56, 89.03, -132.84)
		  }
	  elseif World3 then
		  TableLocations = {
			  ["1"] = Vector3.new(-5058.77, 314.52, -3155.88),
			  ["2"] = Vector3.new(5756.84, 610.42, -253.93),
			  ["3"] = Vector3.new(-12463.87, 374.91, -7523.77),
			  ["4"] = Vector3.new(28282.57, 14896.85, 105.1)
		  }
	  end
  
	  for _, v in pairs(TableLocations) do
		  local dist = (v - vcspos).Magnitude
		  if dist < minDist then
			  minDist = dist
			  chosenTeleport = v
		  end
	  end
  
	  local playerPos = GetCharacter().HumanoidRootPart.Position
	  if minDist <= (vcspos - playerPos).Magnitude then
		  return chosenTeleport
	  end
  end
  
  local function requestEntrance(toPos)
	  FireRemote("requestEntrance", toPos)
	  local hrp = GetHumanoidRootPart(GetCharacter())
	  hrp.CFrame = hrp.CFrame + Vector3.new(0, 55, 0)
	  task.wait(0.5)
  end
  
  local function Tween(target)
	  local plrchar = Player.Character or Player.CharacterAdded:Wait()
	  local hrp = plrchar:WaitForChild("HumanoidRootPart")
	  local TarCFrame
  
	  if typeof(target) == "Vector3" then
		  TarCFrame = CFrame.new(target)
	  elseif typeof(target) == "CFrame" then
		  TarCFrame = target
	  else
		  return
	  end
  
	  local function Tweening(x, y, z)
		  local distance = (y.Position - x.Position).Magnitude
		  local speed = z
		  local duration = distance / speed
		  local time = tick()
		  while tick() - time < duration do
			  if StopFlag then return end
			  local alpha = (tick() - time) / duration
			  hrp.CFrame = x:Lerp(y, alpha)
			  distance = (y.Position - hrp.Position).Magnitude
			  if distance <= 150 then
				  StopFlag = true
				  hrp.CFrame = y
				  return
			  end
			  task.wait()
		  end
		  if not StopFlag then
			  hrp.CFrame = y
		  end
	  end
  
	  local CanTeleport = CheckNearestTeleporter(target)
	  if CanTeleport then
		  requestEntrance(CanTeleport)
		  task.wait(0.1)
	  end
  
	  local CPos = hrp.CFrame
	  Tweening(CPos, TarCFrame, tonumber(_ENV.TweenSpeed))
  end
  
  function topos(target)
	  StopFlag = false
	  if typeof(target) == "Vector3" then
		  target = CFrame.new(target)
	  end
	  Tween(target)
  end
  
  
  function StopTween()
	StopFlag = true
	local char = Player.Character
	if not char then return end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if hrp then
		local bodyClip = hrp:FindFirstChild("BodyClip")
		if bodyClip then
			bodyClip:Destroy()
		end
	end
  end

  function Noclip()
	if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
		local Noclip = Instance.new("BodyVelocity")
		Noclip.Name = "BodyClip"
		Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
		Noclip.Velocity = Vector3.new(0, 0, 0)
	end
  end
  
  function NoCollisions()
	for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end
  end

  spawn(function()
	pcall(function()
		while wait() do
		  if _ENV.AutoFarm or
		  _ENV.Auto_Dungeon or
		  _ENV.AutoFarmBossHallow or
		  _ENV.AutoFarmPrince or
		  _ENV.Auto_Bone or
		  _ENV.Auto_Saber or
		  _ENV.AutoDarkCoat or
		  _ENV.AutoBartilo or
		  _ENV.AutoFactory or
		  _ENV.AutoPirateRaid or
		  _ENV.AutoEvoRaceV2 or
		  _ENV.AutoSecondSea or
		  _ENV.KillPlayer or
		  _ENV.AutoDarkDagger or
		  _ENV.AutoObservation or
		  _ENV.AutoRainbowHaki or
		  _ENV.AutoObservationv2 or
		  _ENV.TrainRace or
		  _ENV.AutoLawRaid or 
		  _ENV.AutoMaterial or
		  _ENV.TweenMGear or
		  _ENV.AutoFinishTrial or
		  _ENV.TeleportToIsland or
		  _ENV.AutoOpenColors or
		  _ENV.Tweenfruit or
		  _ENV.AutoRenguko or
		  _ENV.RaceDoor or
		  _ENV.AutoDoughKing or
		  _ENV.AutoFragChestSafe or
		  _ENV.AutoEliteHunter or
		  _ENV.AutoTushitaQuest or
		  _ENV.DummyTraining or
		  _ENV.AutoRaid or
		  _ENV.AutoMusketeerHat or
		  _ENV.AutoThirdSea or
		  _ENV.TeleportKitsune or
		  _ENV.CollectAzure or
		  _ENV.AutoDeathStep or
		  _ENV.AutoEvolveV3Mink or
		  _ENV.AutoCursedCaptain or
		  _ENV.AutoTrain
			then
				Noclip()
				NoCollisions()
			end
		end
	end)
  end)

  spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _ENV.AutoFindPrehistoricIsland or _ENV.AutoGreenBelt then
                if game:GetService("Workspace").Boats:FindFirstChild(BoatSelected) then
                    local BoatsTarget = game:GetService("Workspace").Boats:FindFirstChild(BoatSelected)
                    for _,v in pairs(BoatsTarget:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        end)
    end)
end)
  spawn(function()
    while wait() do
        pcall(function()
            if _ENV.AutoFindPrehistoricIsland or _ENV.AutoGreenBelt then
                game:GetService("Workspace").Boats:FindFirstChild(BoatSelected).VehicleSeat.BodyVelocity.MaxForce = Vector3.new(100000000000,100000000000,100000000000)
                game:GetService("Workspace").Boats:FindFirstChild(BoatSelected).VehicleSeat.BodyPosition.MaxForce = Vector3.new(100000000,100000000,100000000)
            else
                game:GetService("Workspace").Boats:FindFirstChild(BoatSelected).VehicleSeat.BodyVelocity.MaxForce = Vector3.new(2453406976, 0, 2453406976)
                game:GetService("Workspace").Boats:FindFirstChild(BoatSelected).VehicleSeat.BodyPosition.MaxForce = Vector3.new(0, 2453406976, 0)
                game:GetService("Workspace").Boats:FindFirstChild(BoatSelected).VehicleSeat.BodyVelocity.Velocity = Vector3.new(0,0,0)

            end
        end)
    end
end)

function PlayBoatsTween(Target)
    local boat = game:GetService("Workspace").Boats:FindFirstChild(BoatSelected)
    if not boat then return end

    local vehicleSeat = boat.VehicleSeat
    local distance = (Target.Position - vehicleSeat.Position).Magnitude
    local speed = 250
    local tweenTime = distance / speed

    local tween = game:GetService("TweenService"):Create(
        vehicleSeat,
        TweenInfo.new(tweenTime, Enum.EasingStyle.Linear),
        { CFrame = Target }
    )
    tween:Play()

    while tween.PlaybackState == Enum.PlaybackState.Playing do
        if _G.StopTweenBoat then
            tween:Cancel()
            break
        end
        task.wait()
    end
end

function StopBoatsTween()
    _G.StopTweenBoat = true
    task.wait(0.1)
    _G.StopTweenBoat = false
end
  

Type = 1
spawn(function()
  while wait(.1) do
	  if Type == 1 then
		  Pos = Vector3.new(0, PosY, 0)
	  end
  end
end)

spawn(function()
  while wait(.1) do
	  Type = 1
  end
end)

local CheckMon = function(Mon)
	for _, cont in ipairs({Enemies, ReplicatedStorage}) do
		for _, v in ipairs(cont:GetChildren()) do
			if v.Name == Mon then
				local monH = v:FindFirstChild("Humanoid")
				if monH and monH.Health > 0 then
					return true
				end
			end
		end
	end
	return false
  end
  
  
  local GetEnemies = function(MonList)
	local Distance, Nearest = math.huge, nil
	local plrPP = Player.Character and Player.Character.PrimaryPart
	if not plrPP then
		return nil
	end
	for _, cont in ipairs({Enemies, ReplicatedStorage}) do
		for _, v in ipairs(cont:GetChildren()) do
			if table.find(MonList, v.Name) then
				local monH = v:FindFirstChild("Humanoid")
				local monPP = v.PrimaryPart
				if monH and monH.Health > 0 and monPP then
					local Mag = (plrPP.Position - monPP.Position).Magnitude
					if Mag < Distance then
						Distance = Mag
						Nearest = v
					end
				end
			end
		end
	end
	return Nearest
  end

  local function KillAura()
	local function Kill(_,Enemie)
	  local EnemieH = Enemie:FindFirstChild("Humanoid")
	  
	  if EnemieH and EnemieH.Health > 0 then
		local PlayerPP = Player.Character and Player.Character.PrimaryPart
		local EnemiePP = Enemie.PrimaryPart
		
		if PlayerPP and EnemiePP and (EnemiePP.Position - PlayerPP.Position).Magnitude < 1500 then
		  EnemieH.Health = 0
		  EnemiePP.Size = Vector3.new(75, 75, 75)
		  EnemiePP.CanCollide = false
		  sethiddenproperty(Player, "SimulationRadius", math.huge)
		end
	  else
		local EnemieHead = Enemie:FindFirstChild("Head")
		
		if EnemieHead then
		  EnemieHead:Destroy()
		end
	  end
	end
	
	table.foreach(Enemies:GetChildren(), Kill)
	table.foreach(ReplicatedStorage:GetChildren(), Kill)
  end

  local function GetDistance(Pos)
	if typeof(Pos) == "CFrame" then
		return Player:DistanceFromCharacter(Pos.Position)
	elseif typeof(Pos) == "Vector3" then
		return Player:DistanceFromCharacter(Pos)
	end
  end
  
  local function StartQuest(Title, String, Position)
    local plrRP = Player.Character:FindFirstChild("HumanoidRootPart")
    if plrRP and GetDistance(Position) <= 3 then
        FireRemote("StartQuest", Title, String)
        task.wait(0.5)
    else
        topos(Position)
    end
end

  function CheckQuest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if World1 then
	  if ((MyLevel == 1) or (MyLevel <= 9)) then
		Mon, NameQuest, LevelQuest = "Bandit", "BanditQuest1", 1
		MonPos, QuestPos = CFrame.new(1046, 27, 1561), CFrame.new(1059, 15, 1550)
	  elseif ((MyLevel == 10) or (MyLevel <= 14)) then
		Mon, NameQuest, LevelQuest = "Monkey", "JungleQuest", 1
		MonPos, QuestPos = CFrame.new(-1449, 68, 11), CFrame.new(-1598, 36, 153)
	  elseif ((MyLevel == 15) or (MyLevel <= 29)) then
	  	if (CheckMon("The Gorilla King") and (MyLevel >= 20)) then
			Mon, NameQuest, LevelQuest = "The Gorilla King", "JungleQuest", 3
			MonPos, QuestPos = CFrame.new(-1130, 40, -525), CFrame.new(-1598, 36, 153)
	  	else
			Mon, NameQuest, LevelQuest = "Gorilla", "JungleQuest", 2
			MonPos, QuestPos = CFrame.new(-1130, 40, -525), CFrame.new(-1598, 36, 153)
	  	end
	  elseif ((MyLevel == 30) or (MyLevel <= 39)) then
		Mon, NameQuest, LevelQuest = "Pirate", "BuggyQuest1", 1
		MonPos, QuestPos = CFrame.new(-1104, 14, 3896), CFrame.new(-1141, 4, 3832)
	  elseif ((MyLevel == 40) or (MyLevel <= 59)) then
		if (CheckMon("Bobby") and (MyLevel >= 55)) then
		  	Mon, NameQuest, LevelQuest = "Bobby", "BuggyQuest1", 3
		  	MonPos, QuestPos = CFrame.new(-1075, 22, 4487), CFrame.new(-1141, 4, 3832)
		else
		 	Mon, NameQuest, LevelQuest = "Brute", "BuggyQuest1", 2
			MonPos, QuestPos = CFrame.new(-1075, 22, 4487), CFrame.new(-1141, 4, 3832)
		end
	  elseif ((MyLevel == 60) or (MyLevel <= 74)) then
		Mon, NameQuest, LevelQuest = "Desert Bandit", "DesertQuest", 1
		MonPos, QuestPos = CFrame.new(1054, 52, 4491), CFrame.new(894, 5, 4392)
	  elseif ((MyLevel == 75) or (MyLevel <= 89)) then
		Mon, NameQuest, LevelQuest = "Desert Officer", "DesertQuest", 2
		MonPos, QuestPos = CFrame.new(1608, 9, 4371), CFrame.new(894, 5, 4392)
	  elseif ((MyLevel == 90) or (MyLevel <= 99)) then
		Mon, NameQuest, LevelQuest = "Snow Bandit", "SnowQuest", 1
		MonPos, QuestPos = CFrame.new(1420, 120, -1412), CFrame.new(1390, 88, -1299)
	  elseif ((MyLevel == 100) or (MyLevel <= 119)) then
		if (CheckMon("Yeti") and (MyLevel >= 105)) then
		  	Mon, NameQuest, LevelQuest = "Yeti", "SnowQuest", 3
		  	MonPos, QuestPos = CFrame.new(1202, 145, -1550), CFrame.new(1390, 88, -1299)
		else
		  	Mon, NameQuest, LevelQuest = "Snowman", "SnowQuest", 2
		  	MonPos, QuestPos = CFrame.new(1202, 145, -1550), CFrame.new(1390, 88, -1299)
		end
	  elseif ((MyLevel == 120) or (MyLevel <= 149)) then
		if (CheckMon("Vice Admiral") and (MyLevel >= 130)) then
		  	Mon, NameQuest, LevelQuest = "Vice Admiral", "MarineQuest2", 2
		  	MonPos, QuestPos = CFrame.new(-4881, 23, 4274), CFrame.new(-5040, 27, 4325)
		else
		  	Mon, NameQuest, LevelQuest = "Chief Petty Officer", "MarineQuest2", 1
		  	MonPos, QuestPos = CFrame.new(-4881, 23, 4274), CFrame.new(-5040, 27, 4325)
		end
	  elseif ((MyLevel == 150) or (MyLevel <= 174)) then
		Mon, NameQuest, LevelQuest = "Sky Bandit", "SkyQuest", 1
		MonPos, QuestPos = CFrame.new(-4953, 296, -2899), CFrame.new(-4840, 716, -2620)
	  elseif ((MyLevel == 175) or (MyLevel <= 189)) then
		Mon, NameQuest, LevelQuest = "Dark Master", "SkyQuest", 2
		MonPos, QuestPos = CFrame.new(-5260, 391, -2230), CFrame.new(-4840, 716, -2620)
	  elseif ((MyLevel == 190) or (MyLevel <= 209)) then
		Mon, NameQuest, LevelQuest = "Prisoner", "PrisonerQuest", 1
		MonPos, QuestPos = CFrame.new(5099, -0, 474), CFrame.new(5309, 2, 475)
	  elseif ((MyLevel == 210) or (MyLevel <= 249)) then
		if (CheckMon("Swan") and (MyLevel >= 240)) then
		 	Mon, NameQuest, LevelQuest = "Swan", "ImpelQuest", 3
			MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5191, 4, 692)
		elseif (CheckMon("Chief Warden") and (MyLevel >= 230)) then
		  	Mon, NameQuest, LevelQuest = "Chief Warden", "ImpelQuest", 2
		  	MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5191, 4, 692)
		elseif (CheckMon("Warden") and (MyLevel >= 220)) then
		  	Mon, NameQuest, LevelQuest = "Warden", "ImpelQuest", 1
		  	MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5191, 4, 692)
		else
		  	Mon, NameQuest, LevelQuest = "Dangerous Prisoner", "PrisonerQuest", 2
		  	MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5309, 2, 475)
		end
	  elseif ((MyLevel == 250) or (MyLevel <= 274)) then
		Mon, NameQuest, LevelQuest = "Toga Warrior", "ColosseumQuest", 1
		MonPos, QuestPos = CFrame.new(-1820, 52, -2741), CFrame.new(-1580, 6, -2986)
	  elseif ((MyLevel == 275) or (MyLevel <= 299)) then
		Mon, NameQuest, LevelQuest = "Gladiator",  "ColosseumQuest", 2
		MonPos, QuestPos = CFrame.new(-1275, 58, -3188), CFrame.new(-1580, 6, -2986)
	  elseif ((MyLevel == 300) or (MyLevel <= 324)) then
		Mon, NameQuest, LevelQuest = "Military Soldier", "MagmaQuest", 1
		MonPos, QuestPos = CFrame.new(-5411, 11, 8454), CFrame.new(-5313, 11, 8515)
	  elseif ((MyLevel == 325) or (MyLevel <= 374)) then
		if (CheckMon("Magma Admiral") and (MyLevel >= 350)) then
		  	Mon, NameQuest, LevelQuest = "Magma Admiral", "MagmaQuest", 3
		  	MonPos, QuestPos = CFrame.new(-5803, 86, 8829), CFrame.new(-5313, 11, 8515)
		else
		  	Mon, NameQuest, LevelQuest = "Military Spy", "MagmaQuest", 2
		  	MonPos, QuestPos = CFrame.new(-5803, 86, 8829), CFrame.new(-5313, 11, 8515)
		end
	  elseif ((MyLevel == 375) or (MyLevel <= 399)) then
		Mon, NameQuest, LevelQuest = "Fishman Warrior", "FishmanQuest", 1
		MonPos, QuestPos = CFrame.new(60878, 18, 1544), CFrame.new(61123, 18, 1569)
	  elseif ((MyLevel == 400) or (MyLevel <= 449)) then
		if (CheckMon("Fishman Lord") and (MyLevel >= 425)) then
		  	Mon, NameQuest, LevelQuest = "Fishman Lord", "FishmanQuest", 3
		  	MonPos, QuestPos = CFrame.new(61923, 18, 1494), CFrame.new(61123, 18, 1569)
		else
		  	Mon, NameQuest, LevelQuest = "Fishman Commando", "FishmanQuest", 2
		  	MonPos, QuestPos = CFrame.new(61923, 18, 1494), CFrame.new(61123, 18, 1569)
		end
	  elseif ((MyLevel == 450) or (MyLevel <= 474)) then
		Mon, NameQuest, LevelQuest = "God's Guard", "SkyExp1Quest", 1
		MonPos, QuestPos = CFrame.new(-4710, 845, -1927), CFrame.new(-4722, 844, -1950)
	  elseif ((MyLevel == 475) or (MyLevel <= 524)) then
		if (CheckMon("Wysper") and (MyLevel >= 500)) then
		  	Mon, NameQuest, LevelQuest = "Wysper", "SkyExp1Quest", 3
		  	MonPos, QuestPos = CFrame.new(-7678, 5566, -497), CFrame.new(-7859, 5544, -381)
		else
		  	Mon, NameQuest, LevelQuest = "Shanda", "SkyExp1Quest", 2
		  	MonPos, QuestPos = CFrame.new(-7678, 5566, -497), CFrame.new(-7859, 5544, -381)
		end
	  elseif ((MyLevel == 525) or (MyLevel <= 549)) then
		Mon, NameQuest, LevelQuest = "Royal Squad", "SkyExp2Quest", 1
		MonPos, QuestPos = CFrame.new(-7624, 5658, -1467), CFrame.new(-7907, 5635, -1412)
	  elseif ((MyLevel == 550) or (MyLevel <= 624)) then
		if (CheckMon("Thunder God") and (MyLevel >= 575)) then
		  	Mon, NameQuest, LevelQuest = "Thunder God", "SkyExp2Quest", 3
		  	MonPos, QuestPos = CFrame.new(-7837, 5646, -1791), CFrame.new(-7907, 5635, -1412)
		else
		 	Mon, NameQuest, LevelQuest = "Royal Soldier", "SkyExp2Quest", 2
		  	MonPos, QuestPos = CFrame.new(-7837, 5646, -1791), CFrame.new(-7907, 5635, -1412)
		end
	  elseif ((MyLevel >= 625) and (MyLevel <= 649)) then
		Mon, NameQuest, LevelQuest = "Galley Pirate", "FountainQuest", 1
		MonPos, QuestPos = CFrame.new(5551, 79, 3930), CFrame.new(5260, 37, 4050)
	  elseif (MyLevel >= 650) then
		if (CheckMon("Cyborg") and (MyLevel >= 675)) then
		  	Mon, NameQuest, LevelQuest = "Cyborg", "FountainQuest", 3
		  	MonPos, QuestPos = CFrame.new(5551, 79, 3930), CFrame.new(5260, 37, 4050)
		else
		  	Mon, NameQuest, LevelQuest = "Galley Captain", "FountainQuest", 2
		  	MonPos, QuestPos = CFrame.new(5442, 43, 4950), CFrame.new(5260, 37, 4050)
		end
	  end
	elseif World2 then
	  if ((MyLevel == 700) or (MyLevel <= 724)) then
		Mon, NameQuest, LevelQuest = "Raider", "Area1Quest", 1
		MonPos, QuestPos = CFrame.new(-728, 53, 2346), CFrame.new(-430, 72, 1836)
	  elseif ((MyLevel == 725) or (MyLevel <= 774)) then
		if (CheckMon("Diamond") and (MyLevel >= 750)) then
		  	Mon, NameQuest, LevelQuest = "Diamond", "Area1Quest", 3
		  	MonPos, QuestPos = CFrame.new(-1004, 80, 1425), CFrame.new(-430, 72, 1836)
		else
		  	Mon, NameQuest, LevelQuest = "Mercenary", "Area1Quest", 2
		  	MonPos, QuestPos = CFrame.new(-1004, 80, 1425), CFrame.new(-430, 72, 1836)
		end
	  elseif ((MyLevel == 775) or (MyLevel <= 799)) then
		Mon, NameQuest, LevelQuest = "Swan Pirate", "Area2Quest", 1
		MonPos, QuestPos = CFrame.new(1069, 138, 1322), CFrame.new(638, 72, 918)
	  elseif ((MyLevel == 800) or (MyLevel <= 874)) then
		if (CheckMon("Jeremy") and (MyLevel >= 850)) then
		  	Mon, NameQuest, LevelQuest = "Jeremy", "Area2Quest", 3
		  	MonPos, QuestPos = CFrame.new(73, 82, -27), CFrame.new(633, 73, 919)
		else
		  	Mon, NameQuest, LevelQuest = "Factory Staff", "Area2Quest", 2
		  	MonPos, QuestPos = CFrame.new(73, 82, -27), CFrame.new(633, 73, 919)
		end
	  elseif ((MyLevel == 875) or (MyLevel <= 899)) then
		Mon, NameQuest, LevelQuest = "Marine Lieutenant", "MarineQuest3", 1
		MonPos, QuestPos = CFrame.new(-2821, 76, -3070), CFrame.new(-2441, 72, -3216)
	  elseif ((MyLevel == 900) or (MyLevel <= 949)) then
		if (CheckMon("Fajita") and (MyLevel >= 925)) then
		  	Mon, NameQuest, LevelQuest = "Fajita", "MarineQuest3", 3
		  	MonPos, QuestPos = CFrame.new(-1861, 80, -3255), CFrame.new(-2441, 72, -3216)
		else
		  	Mon, NameQuest, LevelQuest = "Marine Captain", "MarineQuest3", 2
		  	MonPos, QuestPos = CFrame.new(-1861, 80, -3255), CFrame.new(-2441, 72, -3216)
		end
	  elseif ((MyLevel == 950) or (MyLevel <= 974)) then
		Mon, NameQuest, LevelQuest = "Zombie", "ZombieQuest", 1
		MonPos, QuestPos = CFrame.new(-5658, 79, -929), CFrame.new(-5497, 48, -795)
	  elseif ((MyLevel == 975) or (MyLevel <= 999)) then
		Mon, NameQuest, LevelQuest = "Vampire", "ZombieQuest", 2
		MonPos, QuestPos = CFrame.new(-6038, 32, -1341), CFrame.new(-5497, 48, -795)
	  elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
		Mon, NameQuest, LevelQuest = "Snow Trooper", "SnowMountainQuest", 1
		MonPos, QuestPos = CFrame.new(549, 427, -5564), CFrame.new(610, 400, -5372)
	  elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
		Mon, NameQuest, LevelQuest = "Winter Warrior", "SnowMountainQuest", 2
		MonPos, QuestPos = CFrame.new(1143, 476, -5200), CFrame.new(610, 400, -5372)
	  elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
		Mon, NameQuest, LevelQuest = "Lab Subordinate", "IceSideQuest", 1
		MonPos, QuestPos = CFrame.new(-5707, 16, -4513), CFrame.new(-6064, 15, -4903)
	  elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
		Mon, NameQuest, LevelQuest = "Horned Warrior", "IceSideQuest", 2
		MonPos, QuestPos = CFrame.new(-6341, 16, -5723), CFrame.new(-6064, 15, -4903)
	  elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
		Mon, NameQuest, LevelQuest = "Magma Ninja", "FireSideQuest", 1
		MonPos, QuestPos = CFrame.new(-5449, 77, -5808), CFrame.new(-5428, 15, -5300)
	  elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
		Mon, NameQuest, LevelQuest = "Lava Pirate", "FireSideQuest", 2
		MonPos, QuestPos = CFrame.new(-5213, 50, -4701), CFrame.new(-5428, 15, -5300)
	  elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
		Mon, NameQuest, LevelQuest = "Ship Deckhand", "ShipQuest1", 1
		MonPos, QuestPos = CFrame.new(1212, 151, 33059), CFrame.new(1038, 125, 32912)
	  elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
		Mon, NameQuest, LevelQuest = "Ship Engineer", "ShipQuest1", 2
		MonPos, QuestPos = CFrame.new(919, 44, 32780), CFrame.new(1038, 125, 32912)
	  elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
		Mon, NameQuest, LevelQuest = "Ship Steward", "ShipQuest2", 1
		MonPos, QuestPos = CFrame.new(919, 130, 33436), CFrame.new(969, 125, 33244)
	  elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
		Mon, NameQuest, LevelQuest = "Ship Officer", "ShipQuest2", 2
		MonPos, QuestPos = CFrame.new(1036, 181, 33316), CFrame.new(969, 125, 33244)
	  elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
		Mon, NameQuest, LevelQuest = "Arctic Warrior", "FrostQuest", 1
		MonPos, QuestPos = CFrame.new(5966, 63, -6180), CFrame.new(5668, 27, -6486)
	  elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
		Mon, NameQuest, LevelQuest = "Snow Lurker", "FrostQuest", 2	
		MonPos, QuestPos = CFrame.new(5407, 69, -6881), CFrame.new(5668, 27, -6486)
	  elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
		Mon, NameQuest, LevelQuest = "Sea Soldier", "ForgottenQuest", 1
		MonPos, QuestPos = CFrame.new(-3028, 65, -9775), CFrame.new(-3054, 236, -10143)
	  elseif (MyLevel >= 1450) then
		Mon, NameQuest, LevelQuest = "Water Fighter", "ForgottenQuest", 2
		MonPos, QuestPos = CFrame.new(-3353, 285, -10535), CFrame.new(-3054, 236, -10143)
	  end
	elseif World3 then
	  if ((MyLevel == 1500) or (MyLevel <= 1524)) then
		Mon, NameQuest, LevelQuest = "Pirate Millionaire", "PiratePortQuest", 1
		MonPos, QuestPos = CFrame.new(-246, 47, 5584), CFrame.new(-290, 43, 5582)
	  elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
		Mon, NameQuest, LevelQuest = "Pistol Billionaire", "PiratePortQuest", 2
		MonPos, QuestPos = CFrame.new(-187, 86, 6014), CFrame.new(-290, 43, 5582)
	  elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
		Mon, NameQuest, LevelQuest = "Dragon Crew Warrior", "DragonCrewQuest", 1
		MonPos, QuestPos = CFrame.new(6141, 51, -1341), CFrame.new(5833, 52, -1102)
	  elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
		Mon, NameQuest, LevelQuest = "Dragon Crew Archer", "DragonCrewQuest", 2
		MonPos, QuestPos = CFrame.new(6616, 442, 446), CFrame.new(5833, 52, -1103)
	  elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
		Mon, NameQuest, LevelQuest = "Hydra Enforcer", "VenomCrewQuest", 1
		MonPos, QuestPos = CFrame.new(4704, 1044, 680), CFrame.new(5211, 1004, 756)
	  elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
		Mon, NameQuest, LevelQuest = "Venomous Assailant", "VenomCrewQuest", 2
		MonPos, QuestPos = CFrame.new(4731, 1090, 1078), CFrame.new(5211, 1004, 756)
	  elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
		Mon, NameQuest, LevelQuest = "Marine Commodore", "MarineTreeIsland", 1
		MonPos, QuestPos = CFrame.new(2286, 73, -7160), CFrame.new(2181, 28, -6742)
	  elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
		Mon, NameQuest, LevelQuest = "Marine Rear Admiral", "MarineTreeIsland", 2
		MonPos, QuestPos = CFrame.new(3657, 161, -7002), CFrame.new(2180, 29, -6740)
	  elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
		Mon, NameQuest, LevelQuest = "Fishman Raider", "DeepForestIsland3", 1
		MonPos, QuestPos = CFrame.new(-10408, 332, -8369), CFrame.new(-10582, 331, -8761)
	  elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
		Mon, NameQuest, LevelQuest = "Fishman Captain", "DeepForestIsland3", 2
		MonPos, QuestPos = CFrame.new(-10995, 352, -9002), CFrame.new(-10582, 331, -8761)
	  elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
		Mon, NameQuest, LevelQuest = "Forest Pirate", "DeepForestIsland", 1
		MonPos, QuestPos = CFrame.new(-13274, 332, -7770), CFrame.new(-13234, 332, -7625)
	  elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
		Mon, NameQuest, LevelQuest = "Mythological Pirate", "DeepForestIsland", 2
		MonPos, QuestPos = CFrame.new(-13681, 501, -6991), CFrame.new(-13234, 332, -7625)
	  elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
		Mon, NameQuest, LevelQuest = "Jungle Pirate", "DeepForestIsland2", 1
		MonPos, QuestPos = CFrame.new(-12256, 332, -10486), CFrame.new(-12680, 390, -9902)
	  elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
		Mon, NameQuest, LevelQuest = "Musketeer Pirate", "DeepForestIsland2", 2
		MonPos, QuestPos = CFrame.new(-13458, 392, -9860), CFrame.new(-12680, 390, -9902)
	  elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
		Mon, NameQuest, LevelQuest = "Reborn Skeleton", "HauntedQuest1", 1
		MonPos, QuestPos = CFrame.new(-8764, 166, 6160), CFrame.new(-9480, 141, 5566)
	  elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
		Mon, NameQuest, LevelQuest = "Living Zombie", "HauntedQuest1", 2
		MonPos, QuestPos = CFrame.new(-10144, 139, 5838), CFrame.new(-9480, 141, 5566)
	  elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
		Mon, NameQuest, LevelQuest = "Demonic Soul", "HauntedQuest2", 1
		MonPos, QuestPos = CFrame.new(-9506, 172, 6159), CFrame.new(-9517, 172, 6078)
	  elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
		Mon, NameQuest, LevelQuest = "Posessed Mummy", "HauntedQuest2", 2
		MonPos, QuestPos = CFrame.new(-9582, 6, 6205), CFrame.new(-9517, 172, 6078)
	  elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
		Mon, NameQuest, LevelQuest = "Peanut Scout", "NutsIslandQuest", 1
		MonPos, QuestPos = CFrame.new(-2143, 48, -10030), CFrame.new(-2104, 38, -10194)
	  elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
		Mon, NameQuest, LevelQuest = "Peanut President", "NutsIslandQuest", 2
		MonPos, QuestPos = CFrame.new(-1859, 38, -10422), CFrame.new(-2104, 38, -10194)
	  elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
		Mon, NameQuest, LevelQuest = "Ice Cream Chef", "IceCreamIslandQuest", 1
		MonPos, QuestPos = CFrame.new(-872, 66, -10920), CFrame.new(-821, 66, -10966)
	  elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
		Mon, NameQuest, LevelQuest = "Ice Cream Commander", "IceCreamIslandQuest", 2
		MonPos, QuestPos = CFrame.new(-558, 112, -11291), CFrame.new(-821, 66, -10966)
	  elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
		Mon, NameQuest, LevelQuest = "Cookie Crafter", "CakeQuest1", 1
		MonPos, QuestPos = CFrame.new(-2374, 38, -12125), CFrame.new(-2021, 38, -12029)
	  elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
		Mon, NameQuest, LevelQuest = "Cake Guard", "CakeQuest1", 2
		MonPos, QuestPos = CFrame.new(-1598, 44, -12245), CFrame.new(-2021, 38, -12029)
	  elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
		Mon, NameQuest, LevelQuest = "Baking Staff", "CakeQuest2", 1
		MonPos, QuestPos = CFrame.new(-1888, 78, -12998), CFrame.new(-1928, 38, -12843)
	  elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
		Mon, NameQuest, LevelQuest = "Head Baker", "CakeQuest2", 2
		MonPos, QuestPos = CFrame.new(-2216, 83, -12869), CFrame.new(-1928, 38, -12843)
	  elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
		Mon, NameQuest, LevelQuest = "Cocoa Warrior", "ChocQuest1", 1
		MonPos, QuestPos = CFrame.new(-22, 81, -12352), CFrame.new(233, 30, -12201)
	  elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
		Mon, NameQuest, LevelQuest = "Chocolate Bar Battler", "ChocQuest1", 2
		MonPos, QuestPos = CFrame.new(583, 77, -12463), CFrame.new(233, 30, -12201)
	  elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
		Mon, NameQuest, LevelQuest = "Sweet Thief", "ChocQuest2", 1
		MonPos, QuestPos = CFrame.new(165, 76, -12601), CFrame.new(151, 31, -12775)
	  elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
		Mon, NameQuest, LevelQuest = "Candy Rebel", "ChocQuest2", 2
		MonPos, QuestPos = CFrame.new(135, 77, -12877), CFrame.new(151, 31, -12775)
	  elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
		Mon, NameQuest, LevelQuest = "Candy Pirate", "CandyQuest1", 1
		MonPos, QuestPos = CFrame.new(-1311, 26, -14562), CFrame.new(-1150, 20, -14446)
	  elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
		Mon, NameQuest, LevelQuest = "Snow Demon", "CandyQuest1", 2
		MonPos, QuestPos = CFrame.new(-880, 71, -14539), CFrame.new(-1150, 20, -14446)
	  elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
		Mon, NameQuest, LevelQuest = "Isle Outlaw", "TikiQuest1", 1
		MonPos, QuestPos = CFrame.new(-16443, 116, -264), CFrame.new(-16548, 61, -173)
	  elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
		Mon, NameQuest, LevelQuest = "Island Boy", "TikiQuest1", 2
		MonPos, QuestPos = CFrame.new(-16901, 84, -193), CFrame.new(-16548, 61, -173)
	  elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
		Mon, NameQuest, LevelQuest = "Sun-kissed Warrior", "TikiQuest2", 1
		MonPos, QuestPos = CFrame.new(-16350, 92, 1123), CFrame.new(-16539, 56, 1052)
	  elseif ((MyLevel == 2525) or (MyLevel <= 2550)) then
		Mon, NameQuest, LevelQuest = "Isle Champion", "TikiQuest2", 2
		MonPos, QuestPos = CFrame.new(-16750, 127, 1013), CFrame.new(-16539, 56, 1052)
	  elseif ((MyLevel == 2550) or (MyLevel <= 2574)) then
		Mon, NameQuest, LevelQuest = "Serpent Hunter", "TikiQuest3", 1
		MonPos, QuestPos = CFrame.new(-16830, 123, 1720), CFrame.new(-16665, 105, 1580)
	  elseif ((MyLevel == 2575) or (MyLevel <= 2600)) then
		Mon, NameQuest, LevelQuest = "Skull Slayer", "TikiQuest3", 2
		MonPos, QuestPos = CFrame.new(-16830, 123, 1720), CFrame.new(-16665, 105, 1580)
	  end
	end
  end
  
  PlayerLevel.Changed:Connect(CheckQuest)
  task.spawn(function()
	  while task.wait(0.5) do
		  pcall(CheckQuest)
	  end
  end)
  CheckQuest()
  local function TouchMe(key)
	local VIM = game:GetService("VirtualInputManager")
	VIM:SendKeyEvent(true, key, false, game)
	wait()
	VIM:SendKeyEvent(false, key, false, game)
  end

  local function VerifyQuest(Name)
	local Quest = Player.PlayerGui.Main.Quest
	local Text1 = Quest.Container.QuestTitle.Title.Text:gsub("-", ""):lower()
	local Text2 = Name:gsub("-", ""):lower()
	return Quest.Visible and Text1:find(Text2)
  end

  AutoHaki = function()
	if not Player.Character:FindFirstChild("HasBuso") then
		FireRemote("Buso")
	end
  end
  
  local function VerifyTool(ToolName)
	local plrChar = Player and Player.Character
	local plrBag = Player and Player.Backpack
	if plrChar then
	  return plrChar:FindFirstChild(ToolName) or plrBag:FindFirstChild(ToolName)
	end
  end

  function CheckMaterial(MaterialName)
	local Inventory = FireRemote("getInventory")
	for i, v in pairs(Inventory) do
		if v.Name == MaterialName then
			return v["Count"]
		end
	end
  end

  local ProcessedMobs = {}
  local function BringMob(Name, TargetCFrame)
	  local PlayerCharacter = Player.Character
	  local PlayerRootPart = PlayerCharacter and PlayerCharacter:FindFirstChild("HumanoidRootPart")

	  local EnemyList = {}
	  for _, Enemy in ipairs(workspace.Enemies:GetChildren()) do
		  table.insert(EnemyList, Enemy)
	  end
	  for i = 1, #EnemyList do
		  local Enemy = EnemyList[i]
		  if Enemy:IsA("Model") and Enemy.Name == Name then
			  local Humanoid = Enemy:FindFirstChildOfClass("Humanoid")
			  local RootPart = Enemy:FindFirstChild("HumanoidRootPart") or Enemy.PrimaryPart
			  local PrimaryPart = Enemy.PrimaryPart
			  local EnemyParent = Enemy.Parent
			  if EnemyParent and EnemyParent:FindFirstChild("CharacterReady") then
				  if Humanoid and RootPart and PrimaryPart then
					  local PrimaryPartCFrame = PrimaryPart.CFrame
					  if PrimaryPartCFrame then
						  local Distance = (RootPart.Position - PlayerRootPart.Position).Magnitude
						  if Distance <= _ENV.BringMode then
							  if not ProcessedMobs[Enemy] then
								  local RandomHeight = math.random(20, 80)
								  local NewHeight = math.min(RootPart.Position.Y + RandomHeight, RootPart.Position.Y + 80)
								  RootPart.CFrame = CFrame.new(TargetCFrame.Position.X, NewHeight, TargetCFrame.Position.Z) * CFrame.Angles(0, math.rad(0), 0)
								  ProcessedMobs[Enemy] = true
							  else
								  RootPart.CFrame = CFrame.new(TargetCFrame.Position) * CFrame.Angles(0, math.rad(0), 0)
							  end
							  Humanoid.WalkSpeed = 0
							  Humanoid.JumpPower = 0
							  RootPart.CanCollide = false
							  RootPart.Size = Vector3.new(50, 50, 50)
							  if Enemy:FindFirstChild("Animator", true) then 
								Enemy.Animator:Destroy() 
							 end
							  pcall(sethiddenproperty, Player, "SimulationRadius", math.huge)
						  end
					  end
				  end
			  end
		  end
	  end
  end
  
  

  
  local GetNearestEnemy = function()
	local nearestEnemy, nearestDistance = nil, 2500
	for _, enemy in pairs(game.Workspace.Enemies:GetChildren()) do
		if enemy:FindFirstChild("HumanoidRootPart") then
			local distance = (Player.Character.HumanoidRootPart.Position - enemy.HumanoidRootPart.Position).Magnitude
			if distance < nearestDistance then
				nearestEnemy = enemy
				nearestDistance = distance
			end
		end
	end
	return nearestEnemy
  end

  local function EquipToolName(NameTool)
	local plrBag = Player.Backpack
	local plrChar = Player.Character
	local plrH = plrChar and plrChar:FindFirstChild("Humanoid")
	if plrBag and plrH and plrBag:FindFirstChild(NameTool) then
	  plrH:EquipTool(plrBag[NameTool])
	end
  end
  
  
  local EquipWeapon = function()
	local plrBag = Player.Backpack
	local sWeapon = _ENV.SelectWeapon
	for _, tool in ipairs(plrBag:GetChildren()) do
		if tool and tool:IsA("Tool") and tool.ToolTip == sWeapon then
			EquipToolName(tool.Name)
			return
		end
	end
  end

  local function Calls(func, retries)
    retries = retries or 3
    local attempts = 0
    while attempts < retries do
        local success, err = pcall(func)
        if success then return true end
        attempts = attempts + 1
        task.wait(0.5)
    end
    return false
end

  
local function AutoFarm_Level()
    local QuestGui = Player.PlayerGui:FindFirstChild("Main") and Player.PlayerGui.Main:FindFirstChild("Quest")
    while _ENV.AutoFarm do task.wait(0.1)
        local Enemie = GetEnemies({Mon})
        local NearestEnemy = GetNearestEnemy()

        if _ENV.FarmMode == "Quest" then
            if not VerifyQuest("Mon") and (QuestGui and not QuestGui.Visible) then
                StartQuest(NameQuest, LevelQuest, QuestPos)
            elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
                topos(Enemie.HumanoidRootPart.CFrame * Pos)
                Calls(function()
                    EquipWeapon()
                    AutoHaki()
                    BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
                end)
            elseif MonPos then
                topos(MonPos)
            end
        elseif _ENV.FarmMode == "No Quest" then
            if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
                topos(Enemie.HumanoidRootPart.CFrame * Pos)
                Calls(function()
                    EquipWeapon()
                    AutoHaki()
                    BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
                end)
            elseif MonPos then
                topos(MonPos)
            end
        
        elseif _ENV.FarmMode == "Nearest" then
            local Table = NearestEnemy
            if Table and Table:FindFirstChild("HumanoidRootPart") then
                topos(Table.HumanoidRootPart.CFrame * Pos)
                Calls(function()
                    EquipWeapon()
                    AutoHaki()
                    BringMob(Table.Name, Table.HumanoidRootPart.CFrame)
                end)
        	end
    	end
	end
end


  local function AutoFarmBones()
	while _ENV.Auto_Bone do task.wait()
		local Enemie = GetEnemies({"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"})
		local QuestGui = Player.PlayerGui:FindFirstChild("Main") and Player.PlayerGui.Main:FindFirstChild("Quest")
		local BoneQuestPos = CFrame.new(-9517, 172, 6078)
		if _ENV.AcceptQuests and not VerifyQuest("Demonic Soul") and not QuestGui.Visible then
			StartQuest("HauntedQuest2", 1, BoneQuestPos)
		elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
			topos(Enemie.HumanoidRootPart.CFrame * Pos)
			Calls(function()
				EquipWeapon()
				AutoHaki()
				BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
			end)
		else
			topos(CFrame.new(-9506, 172, 6117))
		end
	end
  end

  local function AutoFarmCakePrince()
	task.spawn(function()
		while _ENV.AutoFarmPrince do
			FireRemote("CakePrinceSpawner") task.wait(0.1)
		end
	end)
	while _ENV.AutoFarmPrince do task.wait()
		local CakeFarmMobs = GetEnemies({"Head Baker", "Baking Staff", "Cake Guard", "Cookie Crafter"})
		local QuestGui = Player.PlayerGui:FindFirstChild("Main") and Player.PlayerGui.Main:FindFirstChild("Quest")
		local CakeQuestPos = CFrame.new(-2021.32, 37.80, -12028.73)
		local KatakuriPos = Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart.Position
		if _ENV.AcceptQuests and not VerifyQuest("Cookie Crafter") and QuestGui and not QuestGui.Visible then
			StartQuest("CakeQuest1", 1, CakeQuestPos)
		elseif CheckMon("Cake Prince") and (KatakuriPos - Vector3.new(-2152.47, 69.98, -12399.14)).Magnitude > 500 then
			local CakePrince = GetEnemies({"Cake Prince"})
			if CakePrince and CakePrince:FindFirstChild("HumanoidRootPart") then
				if (CakePrince.HumanoidRootPart.Position - KatakuriPos).Magnitude > 500 then
					firetouchinterest(Player.Character.HumanoidRootPart, workspace.Map.CakeLoaf.BigMirror.Main, 0)
					task.wait(0.1)
					firetouchinterest(Player.Character.HumanoidRootPart, workspace.Map.CakeLoaf.BigMirror.Main, 1)
					task.wait(2)
				else
				  if WorldOrigin:FindFirstChild("Ring") or WorldOrigin:FindFirstChild("MochiSwirl") and WorldOrigin:FindFirstChild("Shockwave") and WorldOrigin:FindFirstChild("Swirl") then
					topos(CakePrince.HumanoidRootPart.CFrame * Vector3.new(0, -40, -20))
				  else
					topos(CakePrince.HumanoidRootPart.CFrame * Vector3.new(0, 40, 20))
				  end
					pcall(function()
						EquipWeapon()
						AutoHaki()
					end)
				end
			end
		elseif CakeFarmMobs and CakeFarmMobs:FindFirstChild("HumanoidRootPart") then
			topos(CakeFarmMobs.HumanoidRootPart.CFrame * CFrame.new(Pos))
			pcall(function()
				EquipWeapon()
				AutoHaki()
				BringMob(CakeFarmMobs.Name, CakeFarmMobs.HumanoidRootPart.CFrame)
			end)
		else
			topos(CFrame.new(-2134, 149, -12340))
		end
	end
  end


  local function AutoBartiloQuest()
	local BartiloQuestLevel = 0
	task.spawn(function()
	  while _ENV.AutoBartilo do task.wait()
		BartiloQuestLevel = FireRemote("BartiloQuestProgress", "Bartilo")
		FireRemote("BartiloQuestProgress", "Bartilo")
	  end
	end)
	
	local QuestActive = Player.PlayerGui.Main.Quest
	
	while _ENV.AutoBartilo do task.wait()
	  if PlayerLevel.Value >= 850 then
		local QuestTitle = QuestActive.Container.QuestTitle.Title
		if BartiloQuestLevel == 0 then
		  
		  local Enemie = GetEnemies({"Swan Pirate"})
		  
		  if not QuestActive.Visible then
			QuestTitle.Text = ""
		  end
		  
		  if QuestActive.Visible and not string.find(QuestTitle.Text, "Swan Pirate") and not string.find(QuestTitle.Text, "50") then
			FireRemote("AbandonQuest")
		  end
		  
		  if not QuestActive.Visible and not string.find(QuestTitle.Text, "Swan Pirate") and not string.find(QuestTitle.Text, "50") then
			StartQuest1("BartiloQuest", 1)
			elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
				topos(Enemie.HumanoidRootPart.CFrame * Pos)
			pcall(function()
				EquipWeapon()
				AutoHaki()
				BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
			end)
		  end
		elseif BartiloQuestLevel == 1 then
		  local Enemie1 = GetEnemies({"Jeremy"})
		  
		  if Enemie1 and Enemie1:FindFirstChild("HumanoidRootPart") then
			topos(Enemie1.HumanoidRootPart.CFrame * Pos)
			pcall(function()
				EquipWeapon()
				AutoHaki()
				BringMob(Enemie1.Name, Enemie1.HumanoidRootPart.CFrame)
			end)
		  else
			topos(CFrame.new(2316, 449, 787))
		  end
		
		elseif BartiloQuestLevel == 2 then
		  local Plates = game:GetService("Workspace").Map.Dressrosa:FindFirstChild("BartiloPlates")
		  if Plates and Plates:FindFirstChild("Plate1") and Plates.Plate1.Color.G ~= 1 then
			topos(Plates.Plate1.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate2") and Plates.Plate2.Color.G ~= 1 then
			topos(Plates.Plate2.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate3") and Plates.Plate3.Color.G ~= 1 then
			topos(Plates.Plate3.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate4") and Plates.Plate4.Color.G ~= 1 then
			topos(Plates.Plate4.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate5") and Plates.Plate5.Color.G ~= 1 then
			topos(Plates.Plate5.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate6") and Plates.Plate6.Color.G ~= 1 then
			topos(Plates.Plate6.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate7") and Plates.Plate7.Color.G ~= 1 then
			topos(Plates.Plate7.CFrame)
		  elseif Plates and Plates:FindFirstChild("Plate8") and Plates.Plate8.Color.G ~= 1 then
			topos(Plates.Plate8.CFrame)
		  end
		end
	  end
	end
  end

  local function GetNearestChest()
	local Position = (Player.Character or Player.CharacterAdded:Wait()).PrimaryPart.Position
	local Chests = CollectionService:GetTagged("_ChestTagged")
	if #Chests == 0 then
		return nil
	end
	local Nearest, MinDistance = nil, math.huge
	for _, Chest in ipairs(Chests) do
		if not Chest:GetAttribute("IsDisabled") then
			local Magnitude = (Chest:GetPivot().Position - Position).Magnitude
			if Magnitude < MinDistance then
				MinDistance, Nearest = Magnitude, Chest
			end
		end
	end

	return Nearest
end

local function AutoChestTween()
	while _ENV.AutoChestSafe do task.wait(0.1)
		local Chest = GetNearestChest()
		local plrChar = Player and Player.Character and Player.Character.PrimaryPart
		if Chest and plrChar then
			topos(Chest:GetPivot())
			local plrH = Player.Character:FindFirstChildOfClass("Humanoid")
			if plrH then
				plrH:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end
end

local function GetNearestBerry()
    local PlayerChar = Player.Character or Player.CharacterAdded:Wait()
    local PlayerPos = PlayerChar.PrimaryPart and PlayerChar.PrimaryPart.Position
    if not PlayerPos then return nil end
    local BerryBushes = CollectionService:GetTagged("BerryBush")
    if #BerryBushes == 0 then return nil end
    local Nearest, MinDistance = nil, math.huge
    for _, BerryBush in ipairs(BerryBushes) do
        if BerryBush:IsA("Model") and #BerryBush:GetChildren() > 0 then
            local BushPivot = BerryBush:GetPivot()
            local Magnitude = (BushPivot.Position - PlayerPos).Magnitude
            if Magnitude < MinDistance then
                MinDistance, Nearest = Magnitude, BerryBush
            end
        end
    end
    return Nearest
end
local function AutoBerryCollect()
    while _ENV.AutoBerrySafe do
        task.wait(0.1)
        local BerryBush = GetNearestBerry()
        local PlayerChar = Player.Character
        local PlayerPP = PlayerChar and PlayerChar.PrimaryPart
        if BerryBush and PlayerPP then
            topos(BerryBush:GetPivot())
            local PlayerHumanoid = PlayerChar:FindFirstChildOfClass("Humanoid")
            if PlayerHumanoid then
                PlayerHumanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end

local function AutoSecondSea()
	local Map = workspace:WaitForChild("Map", 9e9)
	local IceMap = Map:WaitForChild("Ice", 9e9)
	
	while _ENV.AutoSecondSea do task.wait()
	  if PlayerLevel.Value < 700 then
	  else
		local plrPP = Player and Player.Character and Player.Character.PrimaryPart
		local DoorArgs = IceMap:FindFirstChild("Door") and IceMap.Door.CanCollide and IceMap.Door.Transparency < 1
		
		if not VerifyTool("Key") and DoorArgs then
		  topos(CFrame.new(4852, 6, 719))
		  if plrPP and (plrPP.Position - Vector3.new(4852, 6, 719)).Magnitude < 5 then
			FireRemote("DressrosaQuestProgress","Detective")
		  end
		elseif VerifyTool("Key") and DoorArgs then
		  EquipToolName("Key")
		  topos(CFrame.new(1346, 37, -1329))
		elseif CheckMon("Ice Admiral") and IceMap:FindFirstChild("Door") and not IceMap.Door.CanCollide and IceMap.Door.Transparency > 0 then
		  local IceAdmiral = GetEnemies({"Ice Admiral"})
		  if IceAdmiral and IceAdmiral:FindFirstChild("HumanoidRootPart") then
			topos(IceAdmiral.HumanoidRootPart.CFrame * Pos)
			EquipWeapon()
			pcall(function()
				AutoHaki()
			end)
		  end
		else
		  topos(CFrame.new(1280, 27, -1380))
		  FireRemote("TravelDressrosa")
		end
	  end
	end
  end

  local function AutoPirateRaid()
	while _ENV.AutoPirateRaid do task.wait()
		local Enemie = nil
		for _,npc in pairs(Enemies:GetChildren()) do
		  if npc.Name ~= "rip_indra True Form" then
			local npcH = npc:FindFirstChild("Humanoid")
			if npcH and npcH.Health > 0 then
			  if npc and npc.PrimaryPart and (npc.PrimaryPart.Position - Vector3.new(-5556, 314, -2988)).Magnitude < 700 then
				Enemie = npc
			  end
			end
		  end
		end
		
		if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
		  topos(Enemie.HumanoidRootPart.CFrame * Pos)
		  pcall(function()
			AutoHaki()
			EquipWeapon()
			BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
		end)
		else
			topos(CFrame.new(-5556, 314, -2988))
		end
	  end
	end


  
local function AutoUnlockSaber()
	local RichSonProgress = 0
	local SickManProgress = 0
	
	task.spawn(function()
	  while _ENV.Auto_Saber do task.wait()
		RichSonProgress = FireRemote("ProQuestProgress","RichSon")
		SickManProgress = FireRemote("ProQuestProgress", "SickMan")
	  end
	end)
	while _ENV.Auto_Saber do task.wait()
	  if PlayerLevel.Value > 200 then
		local plrChar = Player and Player.Character
		local plrBag = Player.Backpack
		local plrRP = plrChar:FindFirstChild("HumanoidRootPart")
		local Plates = game:GetService("Workspace").Map.Jungle.QuestPlates
		if not workspace.Map.Jungle.Final.Part.CanCollide then
		  local Enemie = GetEnemies({"Saber Expert"})
		  if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
			topos(Enemie.HumanoidRootPart.CFrame * Pos)
			EquipWeapon()
			pcall(function()
				AutoHaki()
			end)
		  else
			topos(CFrame.new(-1461, 30, -51))
		  end
		  
		elseif plrChar and VerifyTool("Relic") then
			topos(CFrame.new(-1408, 30, 3))
			EquipToolName("Relic")
		elseif SickManProgress == 1 and RichSonProgress == 0 and not workspace.Map.Desert.Burn.Part.CanCollide then
		  local Enemie = GetEnemies({"Mob Leader"})
		  if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
			topos(Enemie.HumanoidRootPart.CFrame * Pos)
			EquipWeapon()
			pcall(function()
				AutoHaki()
			end)
		  end
		elseif plrChar:FindFirstChild("Cup") and not plrChar["Cup"].Handle:FindFirstChild("TouchInterest") then
		  FireRemote("ProQuestProgress", "SickMan")
		elseif plrChar:FindFirstChild("Cup") and plrChar["Cup"].Handle:FindFirstChild("TouchInterest") then
			topos(CFrame.new(1393, 37, -1324, -0.408640295, 0, -0.912695527, 0, 1, 0, 0.912695527, 0, -0.408640295))
		elseif plrBag:FindFirstChild("Cup") then
			EquipToolName("Cup")
		elseif not workspace.Map.Desert.Burn.Part.CanCollide then
			topos(workspace.Map.Desert.Cup.CFrame)
		elseif plrChar:FindFirstChild("Torch") then
			topos(CFrame.new(1113, 5, 4352))
		elseif plrBag:FindFirstChild("Torch") then
			EquipToolName("Torch")
		elseif Plates:FindFirstChild("Door") and Plates.Door.CanCollide then
		  if Plates then
			local Plate1 = Plates:FindFirstChild("Plate1")
			local Plate2 = Plates:FindFirstChild("Plate2")
			local Plate3 = Plates:FindFirstChild("Plate3")
			local Plate4 = Plates:FindFirstChild("Plate4")
			local Plate5 = Plates:FindFirstChild("Plate5")
			if Plate1 and Plate1:FindFirstChild("Button") and Plate1.Button.BrickColor ~= BrickColor.new("Camo") then
				topos(Plate1.Button.CFrame)
			elseif Plate2 and Plate2:FindFirstChild("Button") and Plate2.Button.BrickColor ~= BrickColor.new("Camo") then
				topos(Plate2.Button.CFrame)
			elseif Plate3 and Plate3:FindFirstChild("Button") and Plate3.Button.BrickColor ~= BrickColor.new("Camo") then
				topos(Plate3.Button.CFrame)
			elseif Plate4 and Plate4:FindFirstChild("Button") and Plate4.Button.BrickColor ~= BrickColor.new("Camo") then
				topos(Plate4.Button.CFrame)
			elseif Plate5 and Plate5:FindFirstChild("Button") and Plate5.Button.BrickColor ~= BrickColor.new("Camo") then
				topos(Plate5.Button.CFrame)
			end
		  end
		elseif plrRP and Plates:FindFirstChild("Door") and not Plates.Door.CanCollide then
			topos(workspace.Map.Jungle.Torch.CFrame)
		end
	  end
	end
  end

  local function AutoDarkbeard()
	while _ENV.AutoDarkCoat and World2 do task.wait()
	  local Darkbeard = GetEnemies({"Darkbeard"})
	  if Darkbeard and Darkbeard:FindFirstChild("HumanoidRootPart") then
		topos(Darkbeard.HumanoidRootPart.CFrame * Pos)
		pcall(function()
			AutoHaki()
			EquipWeapon()
		end)
	  elseif VerifyTool("Fist of Darkness") then
		topos(workspace.Map.DarkbeardArena.Summoner.Detection.CFrame)
	  else
		topos(CFrame.new(3746, 13, -3632))
	  end
	end
  end

local AutoWhiteBelt = function()
    task.spawn(function()
        while _ENV.AutoWhiteBelt do
            pcall(function()
                game:GetService("ReplicatedStorage").Modules.Net["RF/InteractDragonQuest"]:InvokeServer({
                    ["NPC"] = "Dojo Trainer",
                    ["Command"] = "RequestQuest"
                })
                Workspace.Map.Waterfall.HydraIslandClient.RemoteFunction:InvokeServer("progress")
            end)
            task.wait(1)
        end
    end)
    while _ENV.AutoWhiteBelt do
        task.wait()
        local enemy = GetEnemies({"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"})
        if enemy and enemy:FindFirstChild("HumanoidRootPart") then
            topos(enemy.HumanoidRootPart.CFrame * Pos)
            pcall(function()
                EquipWeapon()
                AutoHaki()
                BringMob(enemy.Name, enemy.HumanoidRootPart.CFrame)
            end)
        else
            topos(CFrame.new(-9506, 172, 6117))
        end
    end
end

local AutoPurpleBelt = function()
    task.spawn(function()
        while _ENV.AutoPurpleBelt do
            pcall(function()
                game:GetService("ReplicatedStorage").Modules.Net["RF/InteractDragonQuest"]:InvokeServer({
                    ["NPC"] = "Dojo Trainer",
                    ["Command"] = "RequestQuest"
                })
                Workspace.Map.Waterfall.HydraIslandClient.RemoteFunction:InvokeServer("progress")
            end)
            task.wait(1)
        end
    end)
    while _ENV.AutoPurpleBelt do
        task.wait()
		local Elites = "EliteHunter"
		if VerifyQuest("Diablo") then
			Elites = "Diablo"
		elseif VerifyQuest("Deandre") then
			Elites = "Deandre"
		elseif VerifyQuest("Urban") then
			Elites = "Urban"
		else
			task.spawn(function()
				FireRemote("EliteHunter")
			end)
		end
        local enemy = GetEnemies({Elites})
        if enemy and enemy:FindFirstChild("HumanoidRootPart") then
            topos(enemy.HumanoidRootPart.CFrame * Pos)
             Calls(function()
                EquipWeapon()
                AutoHaki()
                BringMob(enemy.Name, enemy.HumanoidRootPart.CFrame)
            end)
        else
			topos(CFrame.new(-5119, 315, -2964))
        end
    end
end


local function AutoCursedCaptain()
	while _ENV.AutoCursedCaptain do task.wait()
		local Enemie = GetEnemies({"Cursed Captain"})
		if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
		  topos(Enemie.HumanoidRootPart.CFrame * Pos)
			pcall(function()EquipWeapon()AutoHaki()end)
		else
		  topos(CFrame.new(912, 186, 33591))
		end
	  end
  end

local function GetButton()
	local Summoner = workspace.Map["Boat Castle"].Summoner
	local Circle = Summoner:FindFirstChild("Circle")
	if Circle then
	  for _,part in pairs(Circle:GetChildren()) do
		if part and part.Name == "Part" and part:FindFirstChild("Part") and part.Part.BrickColor ~= BrickColor.new("Lime green") then
		  return part.Part
		end
	  end
	end
  end

  local function AutoKillRipIndra()
	while _ENV.AutoDarkDagger do task.wait()
		local Enemie = GetEnemies({"rip_indra True Form"})
		if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
		  topos(Enemie.HumanoidRootPart.CFrame * Pos)
		  pcall(function()AutoHaki()EquipWeapon()end)
		elseif VerifyTool("God's Chalice") then
			EquipToolName("God's Chalice")
		  topos(CFrame.new(-5561, 314, -2663))
		else
		  topos(CFrame.new(-5333, 424, -2673))
		end
	  end
  end

local AutoTrainGear = function()
	task.spawn(function()
	  while _ENV.AutoTrain do task.wait()
		if Player.Character and WaitChilds(Player.Character, "RaceEnergy") and WaitChilds(Player.Character, "RaceTransformed") then
		  if Player.Character.RaceEnergy.Value >= 1 and not Player.Character.RaceTransformed.Value then
			  Player.Backpack.Awakening.RemoteFunction:InvokeServer({[1] = true})
		  end
	  end
	end
	end)
	
	while _ENV.AutoTrain do task.wait()
	  if _ENV.TrainMethod == "Bones" then
		local Enemie = GetEnemies({"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"})
		if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
		  topos(Enemie.HumanoidRootPart.CFrame * Pos)
		   Calls(function()
			EquipWeapon()
			AutoHaki()
			BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
		  end)
		  else
			topos(CFrame.new(-9506, 172, 6117))
		  end
		elseif _ENV.TrainMethod == "Cakes" then
			local Enemie = GetEnemies({"Head Baker", "Baking Staff", "Cake Guard", "Cookie Crafter"})
			if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
			  topos(Enemie.HumanoidRootPart.CFrame * Pos)
			   Calls(function()
				EquipWeapon()
				AutoHaki()
				BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
			  end)
			else
			  topos(CFrame.new(-2134, 149, -12340))
			end
		  end
		end
	end

	local function AutoFarmMusketeerHat()
		local QuestActive = Player.PlayerGui.Main.Quest
		
		local BossProgress = false
		local BanditProgress = false
		local QuestProgress = 0
		
		task.spawn(function()
		  while _ENV.AutoMusketeerHat do task.wait()
			BossProgress = FireRemote("CitizenQuestProgress").KilledBoss
			BanditProgress = FireRemote("CitizenQuestProgress").KilledBandits
			QuestProgress = FireRemote("CitizenQuestProgress", "Citizen")
		  end
		end)
		
		while _ENV.AutoMusketeerHat do task.wait()
		  local plrLevel = PlayerLevel.Value
		  local QuestTitle = QuestActive.Container.QuestTitle.Title
		  
		  if plrLevel < 1800 then
		  elseif not BanditProgress then
			local Enemie = GetEnemies({"Forest Pirate"})
			
			if not QuestActive.Visible then
			  QuestTitle.Text = ""
			end
			
			if QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
			  FireRemote("AbandonQuest")
			end
			
			if not QuestActive.Visible and not string.find(QuestTitle.Text, "Forest Pirate") and not string.find(QuestTitle.Text, "50") then
			  StartQuest1("CitizenQuest", 1)
			  FireRemote("CitizenQuestProgress", "Citizen")
			elseif Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
			  topos(Enemie.HumanoidRootPart.CFrame * Pos)
			  pcall(function()
				AutoHaki()
				EquipWeapon()
				BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
			end)
			end
		  elseif not BossProgress then
			local CursedCaptain = GetEnemies({"Captain Elephant"})
			
			if not QuestActive.Visible then
			  QuestTitle.Text = ""
			end
			
			if QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
			  FireRemote("AbandonQuest")
			end
			
			if not QuestActive.Visible and not string.find(QuestTitle.Text, "Captain Elephant") then
			  FireRemote("CitizenQuestProgress", "Citizen")
			elseif CursedCaptain and CursedCaptain:FindFirstChild("HumanoidRootPart") then
			  topos(CursedCaptain.HumanoidRootPart.CFrame * Pos)
			  pcall(function()
				AutoHaki()
				EquipWeapon()
				BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
			end)
			else
			  topos(CFrame.new(-13393, 319, -8423))
			end
		  elseif QuestProgress == 2 then
			topos(CFrame.new(-12512, 340, -9872))
		  end
		end
	  end
	
local function AutoThirdSea()
	local QuestProgress = 0
	local function GetProxyNPC()
	  local Distance = 2000
	  local NPC = nil
	  local plrChar = Player and Player.Character and Player.Character.PrimaryPart
	  
	  for _,npc in pairs(Enemies:GetChildren()) do
		if npc.Name == "rip_indra" then
		  if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
			Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
			NPC = npc
		  end
		end
	  end
	  return NPC
	end
	
	task.spawn(function()
	  while _ENV.AutoThirdSea do task.wait()
		QuestProgress = FireRemote("ZQuestProgress", "Check")
		FireRemote("TravelZou")
	  end
	end)
	
	while _ENV.AutoThirdSea do task.wait()
	  if PlayerLevel.Value < 1500 then
	  else
		local RipIndra = GetProxyNPC()
		if RipIndra and RipIndra:FindFirstChild("HumanoidRootPart") then
		  topos(RipIndra.HumanoidRootPart.CFrame * Pos)
		  EquipWeapon()
		  pcall(function()
			  AutoHaki()
		  end)
		elseif QuestProgress == 0 then
		  if boss and boss:FindFirstChild("HumanoidRootPart") then
			topos(boss.HumanoidRootPart.CFrame * Pos)
			EquipWeapon()
			pcall(function()
				AutoHaki()
			end)
		  else
			local plrChar = Player and Player.Character and Player.Character.PrimaryPart
			if plrChar and (plrChar.Position - Vector3.new(-1926, 13, 1738)).Magnitude < 5 then
			  FireRemote("ZQuestProgress", "Begin")
			  task.wait(2)
			else
			  topos(CFrame.new(-1926, 13, 1738))
			end
		  end
		end
	  end
	end
  end

  local function AutoLawRaid()
	task.spawn(function()
		while _ENV.AutoLawRaid do
			task.wait()
			if not CheckMon("Order") and not VerifyTool("Microchip") then
				FireRemote("BlackbeardReward", "Microchip", "2")
			end
		end
	end)
	task.spawn(function()
		while _ENV.AutoLawRaid do
			task.wait()
			if not CheckMon("Order") and VerifyTool("Microchip") then
				pcall(function()
					fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
				end)
			end
		end
	end)
	while _ENV.AutoLawRaid do task.wait()
		if CheckMon("Order") then
		local OrderBoss = GetEnemies({"Order"})
		if OrderBoss and OrderBoss:FindFirstChild("HumanoidRootPart") then
			topos(OrderBoss.HumanoidRootPart.CFrame * Pos)
			pcall(function()AutoHaki()EquipWeapon()end)
		else
			topos(CFrame.new(-6300, 16, -4997))
		end
	end
	end
  end

  local function HasFruits()
	local function CheckContainer(container)
		for _, v in pairs(container:GetChildren()) do
			if string.find(v.Name, "Fruit") then
				return true
			end
		end
		return false
	end
	local plyr = Player
	return CheckContainer(plyr.Backpack) or CheckContainer(plyr.Character)
  end

	local function AutoObservation()
		task.spawn(function()
			while _ENV.AutoObservation do task.wait(0.1)
				pcall(function()
					if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui["ImageLabel"] then
						return
					end
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):SetKeyDown("0x65")
					wait(2)
					game:GetService("VirtualUser"):SetKeyUp("0x65")
				end)
			end
		end)
	  
		local function HandleEnemies(eName, dPos)
			local enemy = GetEnemies({eName})
			if enemy then
				if Player.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
					repeat
						task.wait(0.1)
						topos(enemy.HumanoidRootPart.CFrame * CFrame.new(3, 0, 0))
					until not _ENV.AutoObservation or not Player.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
				else
					repeat
						task.wait(0.1)
						topos(enemy.HumanoidRootPart.CFrame * CFrame.new(0, 50, 10))
						if not Player.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _ENV.StartObsHop then
							game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
						end
					until not _ENV.AutoObservation or Player.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
				end
			else
				topos(dPos)
			end
		end
	  
		while _ENV.AutoObservation do
			task.wait(0.1)
			if Player:FindFirstChild("VisionRadius") and Player.VisionRadius.Value < 5000 then
				if World1 then
					HandleEnemies("Galley Captain", CFrame.new(5533, 88, 4852))
				elseif World2 then
					HandleEnemies("Lava Pirate", CFrame.new(-5478, 16, -5247))
				elseif World3 then
					HandleEnemies("Venomous Assailant", CFrame.new(4731.27197265625, 1090.177978515625, 1078.1712646484375))
				end
			else
				NotificationLibrary:SendNotification("Warning", "Max Vision", 5)
			end
		end
	  end

	  local function AutoTaskEliteHunter()
		while _ENV.AutoEliteHunter do
			task.wait()
			local NPC = "EliteHunter"
			if VerifyQuest("Diablo") then
				NPC = "Diablo"
			elseif VerifyQuest("Deandre") then
				NPC = "Deandre"
			elseif VerifyQuest("Urban") then
				NPC = "Urban"
			else
				task.spawn(function()
					FireRemote("EliteHunter")
				end)
			end
			local EliteBoss = GetEnemies({NPC})
			if EliteBoss and EliteBoss:FindFirstChild("HumanoidRootPart") then
				topos(EliteBoss.HumanoidRootPart.CFrame * Pos)
				pcall(function()
					EquipWeapon()
					AutoHaki()
				end)
			elseif not CheckMon("Deandre") and not CheckMon("Diablo") and not CheckMon("Urban") then
				topos(CFrame.new(-5119, 315, -2964))
			end
		end
	  end

	  
local function AutoFactory()
	while _ENV.AutoFactory do task.wait()
	  topos(CFrame.new(410, 200, -414))
	  	pcall(function()
		AutoHaki()
		EquipWeapon()
		end)
	end
  end

	  local function AutoTaskRenguko()
		while _ENV.AutoRenguko do task.wait()
			if VerifyTool("Hidden Key") then
				EquipToolName("Hidden Key")
				topos(CFrame.new(6571, 299, -6968))
			elseif VerifyTool("Library Key") then
				EquipToolName("Library Key")
				topos(CFrame.new(6373, 293, -6839))
			elseif CheckMon("Awakened Ice Admiral") then
				local AwakenedIceAdmiral = GetEnemies({"Awakened Ice Admiral"})
				if AwakenedIceAdmiral and AwakenedIceAdmiral:FindFirstChild("HumanoidRootPart") then
					topos(AwakenedIceAdmiral.HumanoidRootPart.CFrame * Pos)
					pcall(function()
						AutoHaki()
						EquipWeapon()
					end)
				end
			else
				local Enemie = GetEnemies({"Arctic Warrior", "Snow Lurker"})
				if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
					topos(Enemie.HumanoidRootPart.CFrame * Pos)
					pcall(function()
						AutoHaki()
						EquipWeapon()
						BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
					end)
				else
					topos(CFrame.new(5707, 28, -6402))
				end
			end
		end
	  end

	  local function AutoSoulReaper()
		while _ENV.AutoFarmBossHallow do task.wait()
			local SoulReaper = GetEnemies({"Soul Reaper"})
			if SoulReaper and SoulReaper:FindFirstChild("HumanoidRootPart") then
			  topos(SoulReaper.HumanoidRootPart.CFrame * Pos)
			  pcall(function()
				AutoHaki()
				EquipWeapon()
			end)
			elseif VerifyTool("Hallow Essence") then
				EquipToolName("Hallow Essence")
			  	pcall(function()
					topos(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
				end)
			else
			  topos(CFrame.new(-9529, 316, 6712))
			end
		  end
	  end

	  local function TrainDummy()
		while _ENV.DummyTraining do task.wait()
			local Enemie = GetEnemies({"Training Dummy"})
			local QuestGui = Player.PlayerGui:FindFirstChild("Main") and Player.PlayerGui.Main:FindFirstChild("Quest")
	  
			if not VerifyQuest("Training Dummy") and not QuestGui.Visible then
				FireRemote("ArenaTrainer")
			end
			if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
				topos(Enemie.HumanoidRootPart.CFrame * Pos)
				pcall(function()
					EquipWeapon()
					AutoHaki()
					BringMob(Enemie.Name, Enemie.HumanoidRootPart.CFrame)
				end)
			else
				topos(CFrame.new(3758, 92, 254))
			end
		end
	  end

	  function round(num)
		return math.floor(num + 0.5)
	end
	
	function PlayerESP()
		for _, player in pairs(game:GetService('Players'):GetChildren()) do
			pcall(function()
				if player == game.Players.LocalPlayer then
					return
				end
				local character = player.Character
				if character and character:FindFirstChild("Head") and character:FindFirstChild("Humanoid") then
					local BillboardName = 'NameEsp' .. player.UserId
					local head = character.Head
					if _ENV.ESPPlayer then
						if not head:FindFirstChild(BillboardName) then
							local BillboardGui = Instance.new('BillboardGui', head)
							BillboardGui.Name = BillboardName
							BillboardGui.ExtentsOffset = Vector3.new(0, 3, 0)
							BillboardGui.Size = UDim2.new(1, 200, 1, 40)
							BillboardGui.Adornee = head
							BillboardGui.AlwaysOnTop = true
	
							local NameLabel = Instance.new('TextLabel', BillboardGui)
							NameLabel.Font = Enum.Font.SourceSansBold
							NameLabel.TextSize = 16
							NameLabel.TextWrapped = true
							NameLabel.Size = UDim2.new(1, 0, 1, 0)
							NameLabel.TextYAlignment = Enum.TextYAlignment.Top
							NameLabel.BackgroundTransparency = 1
							NameLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							NameLabel.TextStrokeTransparency = 0.3
							NameLabel.TextColor3 = (player.Team == game.Players.LocalPlayer.Team) and Color3.fromRGB(3, 255, 158) or Color3.fromRGB(255, 0, 0)
							local Distance = round((game:GetService('Players').LocalPlayer.Character.Head.Position - head.Position).Magnitude / 3)
							local Health = round(character.Humanoid.Health)
							local MaxHealth = round(character.Humanoid.MaxHealth)
							NameLabel.Text = '[ ' .. player.Name .. ' | ' .. Distance .. ' Studs ]\n[ Health: ' .. Health .. '/' .. MaxHealth .. ' ]'
						else
							local ExistLabel = head[BillboardName].TextLabel
							local Distance = round((game:GetService('Players').LocalPlayer.Character.Head.Position - head.Position).Magnitude / 3)
							local Health = round(character.Humanoid.Health)
							local MaxHealth = round(character.Humanoid.MaxHealth)
							ExistLabel.Text = '[ ' .. player.Name .. ' | ' .. Distance .. ' Studs ]\n[ Health: ' .. Health .. '/' .. MaxHealth .. ' ]'
						end
					else
						if head:FindFirstChild(BillboardName) then
							head[BillboardName]:Destroy()
						end
					end
				end
			end)
		end
	end

local Window = Library:CreateWindow('Quantum Onyx')

local Tab = {
	Home = Window:addTab('Home', 'home-quantum'),
	Sub = Window:addTab('Sub Farm', 'swords-quantum'),
	Player = Window:addTab('Player', 'user-quantum'),
	Dragon = Window:addTab('Dragon Update', 'visual-quantum'),
	Raid = Window:addTab('Dungeon', 'raid-quantum'),
	Trial = Window:addTab('Trials', 'rabbit-quantum'),
    Travel = Window:addTab('Travel', 'map-quantum'),
	Shop = Window:addTab('Tiktok Shop', 'cart-quantum'),
	Misc = Window:addTab('Misc', 'misc-quantum'),
}

local Player_Left = Tab.Player:addSection()
local Stats = Player_Left:addMenu("Stats")

if Player and Player:FindFirstChild("Data") and Player.Data:FindFirstChild("Points") and Player.Data:FindFirstChild("Stats") then
    local points = Player.Data.Points
    local stats = Player.Data.Stats

    local PlayerStat = Stats:addLabel("Player Status", "Scanning for Information...")
    local function UpdateStats()
        if not Player or not stats then return end
        pcall(function()
            local melee = stats:FindFirstChild("Melee") and stats.Melee:FindFirstChild("Level") and stats.Melee.Level.Value or 0
            local defense = stats:FindFirstChild("Defense") and stats.Defense:FindFirstChild("Level") and stats.Defense.Level.Value or 0
            local sword = stats:FindFirstChild("Sword") and stats.Sword:FindFirstChild("Level") and stats.Sword.Level.Value or 0
            local gun = stats:FindFirstChild("Gun") and stats.Gun:FindFirstChild("Level") and stats.Gun.Level.Value or 0
            local fruit = stats:FindFirstChild("Demon Fruit") and stats["Demon Fruit"]:FindFirstChild("Level") and stats["Demon Fruit"].Level.Value or 0
            local PointsValue = points and points.Value or 0

            PlayerStat:RefreshDesc("Points Available: " .. tostring(PointsValue) .."\nMelee: " .. melee .."\nDefense: " .. defense .."\nSword: " .. sword .."\nGun: " .. gun .."\nFruit: " .. fruit)
        end)
    end

    task.spawn(function()
        while task.wait(0.5) do
            UpdateStats()
        end
    end)
end

local function AutoStats()
	local function AddStats(Stats)
	  if Player.Data.Points.Value >= 1 then
		local Points = math.clamp(PointsSlider, 1, Player.Data.Points.Value)
			FireRemote("AddPoint", Stats, Points)
	  end
	end
	
	while _ENV.AutoStats do task.wait()
	  if Melee then
		AddStats("Melee")
	  end
	  if Defense then
		AddStats("Defense")
	  end
	  if Sword then
		AddStats("Sword")
	  end
	  if Gun then
		AddStats("Gun")
	  end
	  if DemonFruit then
		AddStats("Demon Fruit")
	  end
	end
  end

Stats:addSlider("Select Points", 0, 100, 10, function(Value)
    PointsSlider = Value
end)

Stats:addToggle("Melee", false, function(Value)
	Melee = Value
end)

Stats:addToggle("Defense", false, function(Value)
	Defense = Value
end)

Stats:addToggle("Sword", false, function(Value)
	Sword = Value
end)

Stats:addToggle("Gun", false, function(Value)
	Gun = Value
end)

Stats:addToggle("Devil Fruit", false, function(Value)
	DemonFruit = Value
end)

Stats:addToggle("Start Adding Stats", false, function(Value)
	_ENV.AutoStats = Value
	AutoStats()
end)

local Player_Right = Tab.Player:addSection()
local LocalPlayer = Player_Right:addMenu("Local Player")

LocalPlayer:addToggle("Player ESP", false, function(Value)
	_ENV.ESPPlayer = Value;PlayerESP()
end)

task.spawn(function()
	while wait() do
		if _ENV.ESPPlayer then
			PlayerESP()
		end
	end
end)


local Home_Left = Tab.Home:addSection()
local Home = Home_Left:addMenu("Main Farm")

Home:addDropdown("Weapon", "Melee", { "Melee", "Sword" },function(Value)
    _ENV.SelectWeapon = Value
end)

Home:addDropdown("Farm Method", "Quest", { "Quest", "No Quest", "Nearest" },function(Value)
	_ENV.FarmMode = Value
end)

Home:addToggle("Auto Farm", false, function(Value)
	_ENV.AutoFarm = Value;AutoFarm_Level()
	if not Value then StopTween() return end
end)

Home:addToggle("Accept Quests", false, function(Value)
	_ENV.AcceptQuests = Value
end, "quest for bones and cakes")

Home:addToggle("Auto Bones", false, function(Value)
	_ENV.Auto_Bone = Value;AutoFarmBones()
	if not Value then StopTween() return end
end)

Home:addToggle("Auto Random Surprise", false, function(Value)
	_ENV.Auto_Random_Surprise = Value
	while _ENV.Auto_Random_Surprise do task.wait()
		FireRemote("Bones", "Buy", 1, 1)
	end
end)

local CakeInfo = Home:addLabel("Cake Status", "Scanning for Information...")

task.spawn(function()
	while task.wait(1) do
		if CheckMon("Dough King") then
			CakeInfo:RefreshDesc("Cake Stats: Spawned | Dough King")
		elseif CheckMon("Cake Prince") then
			CakeInfo:RefreshDesc("Cake Stats: Spawned | Cake Prince")
		else
			local EnemiesCake = FireRemote("CakePrinceSpawner", true)
			local count = 0
			if type(EnemiesCake) == "table" then
				count = EnemiesCake.Enemies or 0
			elseif type(EnemiesCake) == "string" then
				local match = string.match(EnemiesCake, "%d+")
				count = tonumber(match) or 0
			elseif type(EnemiesCake) == "number" then
				count = EnemiesCake
			end
			CakeInfo:RefreshDesc("Cake Stats: " .. count .. "/500")
		end
	end
end)

Home:addToggle("Auto Katakuri", false, function(Value)
	_ENV.AutoFarmPrince = Value;AutoFarmCakePrince()
	if not Value then StopTween() return end
end)

local MaterialLists = {
	World1 = { "Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail" },
	World2 = { "Leather + Scrap Metal", "Radioactive Material", "Ectoplasm", "Mystic Droplet", "Magma Ore", "Vampire Fang" },
	World3 = { "Leather + Scrap Metal", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Fish Tail", "Mini Tusk" }
  }
  local MaterialList = World1 and MaterialLists.World1 or World2 and MaterialLists.World2 or World3 and MaterialLists.World3

Home:addDropdown("Select Material", "Leather + Scrap Metal", MaterialList ,function(Value)
	_ENV.SelectMaterial = Value
end)

Home:addToggle("Auto Farm Material", false, function(Value)
	_ENV.AutoMaterial = Value
	if not Value then StopTween() return end
	task.spawn(function()
		local function GetMaterialData()
			if World1 then
				if _ENV.SelectMaterial == "Angel Wings" then
					return {
						Monsters = { "Shanda", "Royal Squad", "Royal Soldier", "Wysper", "Thunder God" },
						Position = CFrame.new(-4698, 845, -1912)
					}
				elseif _ENV.SelectMaterial == "Leather + Scrap Metal" then
					return {
						Monsters = { "Brute", "Pirate" },
						Position = CFrame.new(-1145, 15, 4350)
					}
				elseif _ENV.SelectMaterial == "Magma Ore" then
					return {
						Monsters = { "Military Soldier", "Military Spy", "Magma Admiral" },
						Position = CFrame.new(-5815, 84, 8820)
					}
				elseif _ENV.SelectMaterial == "Fish Tail" then
					return {
						Monsters = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" },
						Position = CFrame.new(61123, 19, 1569)
					}
				end
			elseif World2 then
				if _ENV.SelectMaterial == "Leather + Scrap Metal" then
					return {
						Monsters = { "Marine Captain" },
						Position = CFrame.new(-2011, 73, -3327)
					}
				elseif _ENV.SelectMaterial == "Magma Ore" then
					return {
						Monsters = { "Magma Ninja", "Lava Pirate" },
						Position = CFrame.new(-5428, 78, -5959)
					}
				elseif _ENV.SelectMaterial == "Ectoplasm" then
					return {
						Monsters = { "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer" },
						Position = CFrame.new(911, 126, 33160)
					}
				elseif _ENV.SelectMaterial == "Mystic Droplet" then
					return {
						Monsters = { "Water Fighter" },
						Position = CFrame.new(-3385, 239, -10542)
					}
				elseif _ENV.SelectMaterial == "Radioactive Material" then
					return {
						Monsters = { "Factory Staff" },
						Position = CFrame.new(295, 73, -56)
					}
				elseif _ENV.SelectMaterial == "Vampire Fang" then
					return {
						Monsters = { "Vampire" },
						Position = CFrame.new(-6033, 7, -1317)
					}
				end
			elseif World3 then
				if _ENV.SelectMaterial == "Leather + Scrap Metal" then
					return {
						Monsters = { "Jungle Pirate" },
						Position = CFrame.new(-11976, 332, -10620)
					}
				elseif _ENV.SelectMaterial == "Demonic Wisp" then
					return {
						Monsters = { "Demonic Soul" },
						Position = CFrame.new(-9506, 172, 6159)
					}
				elseif _ENV.SelectMaterial == "Fish Tail" then
					return {
						Monsters = { "Fishman Raider", "Fishman Captain" },
						Position = CFrame.new(-10993, 332, -8940)
					}
				elseif _ENV.SelectMaterial == "Conjured Cocoa" then
					return {
						Monsters = { "Chocolate Bar Battler", "Cocoa Warrior" },
						Position = CFrame.new(621, 79, -12581)
					}
				elseif _ENV.SelectMaterial == "Dragon Scale" then
					return {
						Monsters = { "Dragon Crew Archer" },
						Position = CFrame.new(6594, 383, 139)
					}
				elseif _ENV.SelectMaterial == "Gunpowder" then
					return {
						Monsters = { "Pistol Billionaire" },
						Position = CFrame.new(-469, 74, 5904)
					}
				elseif _ENV.SelectMaterial == "Mini Tusk" then
					return {
						Monsters = { "Mythological Pirate" },
						Position = CFrame.new(-13545, 470, -6917)
					}
				end
			end
			return nil
		end
		while _ENV.AutoMaterial do
			task.wait()
			local MaterialData = GetMaterialData()
			local Monsters, Position = MaterialData.Monsters, MaterialData.Position
			local Enemy = GetEnemies(Monsters)
			if Enemy and Enemy:FindFirstChild("HumanoidRootPart") then
				topos(Enemy.HumanoidRootPart.CFrame * Pos)
				pcall(function()
					EquipWeapon()
					AutoHaki()
					BringMob(Enemy.Name, Enemy.HumanoidRootPart.CFrame)
				end)
			else
				topos(Position)
			end
		end
	end)
end)

local Chest = Home_Left:addMenu("Chest Farm")

local ChestInfo = Chest:addLabel("Chest Status", "Scanning for chests...")

task.spawn(function()
    while task.wait(0.1) do
        if not Player.Character or not Player.Character:FindFirstChild("HumanoidRootPart") then
            ChestInfo:RefreshDesc("Player character not found.")
            return
        end
        local Count = 0
        local ChestDistance = math.huge
        for _, v in pairs(game.workspace.ChestModels:GetChildren()) do
            if v:IsA("Model") and v.PrimaryPart and string.find(v.Name, "Chest") then
                Count = Count + 1
                local distance = (v.PrimaryPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                if distance < ChestDistance then
                    ChestDistance = distance
                end
            end
        end
        local Status
        if Count > 0 then
            Status = string.format("Chests Found: %d\nPosition: %.2f Studs Away", Count, ChestDistance)
        else
            Status = "No chests detected nearby."
        end
        ChestInfo:RefreshDesc(Status)
    end
end)


Chest:addToggle("Start Farming Chest", false, function(Value)
	_ENV.AutoChestSafe = Value
	AutoChestTween()
	if not Value then StopTween() return end
end)

Chest:addToggle("Stop Farming Chest", false, function(Value)
	_ENV.StopChest = Value
	task.spawn(function()
		while _ENV.StopChest do task.wait()
			if VerifyTool("God's Chalice") or VerifyTool("Fist of Darkness") then
			_ENV.AutoChestSafe = false
		end
	end
end)
end, "Stop Tweening to Chest when\nhave items (God's Chalice/Fist of Darkness)")


local Home_Right = Tab.Home:addSection()
local FarmSet = Home_Right:addMenu("Farm Settings")

FarmSet:addDropdown("Tweening Speed", "300", { "100", "200", "300" },function(Value)
	_ENV.TweenSpeed = tonumber(Value)
end)

FarmSet:addDropdown("Farm Distance", "30", { "20", "30" },function(Value)
	PosY = tonumber(Value)
end)


FarmSet:addDropdown("Bring Radius", "Smooth", { "Super", "Smooth", "Wide" },function(Value)
	_ENV.BringMode = Value
	task.spawn(function()
		while _ENV.BringMode do task.wait()
			if _ENV.BringMode == "Super" then
				_ENV.BringMode = 200
			elseif _ENV.BringMode == "Smooth" then
				_ENV.BringMode = 350
			elseif _ENV.BringMode == "Wide" then
				_ENV.BringMode = 500
			end
		end
	end)
end)

FarmSet:addToggle("Start Bring", true, function(Value)
	_ENV.BringMonster = Value
end)

local DelayMap = {
    ["Very Fast"] = 0,
    ["Fast with Delay"] = 0.12,
    ["Fast and Safe"] = 0.15,
    ["Very Safe"] = 0.185,
    ["Ultimate Safety"] = 0.2,
    ["Delay with Safety"] = 0.3
}

FarmSet:addDropdown("Fast Attack Delay", "Very Fast", { "Very Fast", "Fast with Delay", "Fast and Safe", "Very Safe", "Ultimate Safety", "Delay with Safety" },function(Value)
	_ENV.FastSpeed = DelayMap[Value]
end)


local NetModule = ReplicatedStorage.Modules.Net
local RegisterAttack = NetModule:WaitForChild("RE/RegisterAttack")
local RegisterHit = NetModule:WaitForChild("RE/RegisterHit")
local LocalPlayer = Players.LocalPlayer
local Enemies = workspace:WaitForChild("Enemies")

local FastConfig = {
    Debounce = false,
    AttackSpeed = 0,
}

local function CheckNerfed(Character)
    if not Character then return false end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local Stun = Character:FindFirstChild("Stun")
    local Busy = Character:FindFirstChild("Busy")

    if not Humanoid or Humanoid.Health <= 0 then
        return false
    elseif Humanoid.Sit then
        return false
    elseif Stun and Stun.Value > 0 then
        return false
    elseif Busy and Busy.Value then
        return false
    end
    return true
end

local function GetNearbyTargets()
    local Targets = {}
    local Character = LocalPlayer.Character
    if not Character then return Targets end
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    if not RootPart then return Targets end

    for _, Enemy in pairs(Enemies:GetChildren()) do
        if CheckNerfed(Enemy) then
            local TargetRootPart = Enemy:FindFirstChild("HumanoidRootPart") or Enemy.PrimaryPart
            if TargetRootPart then
                local Distance = (RootPart.Position - TargetRootPart.Position).Magnitude
                if Distance < 60 then
                    table.insert(Targets, {Enemy = Enemy, RootPart = TargetRootPart})
                end
            end
        end
    end

    return Targets
end
function FastConfig:AttackNearbyTargets()
    if self.Debounce then return end
    self.Debounce = true
    local Targets = GetNearbyTargets()
    if #Targets > 0 then
        for _ = 1, 3 do
            RegisterAttack:FireServer(0)
        end
        local Attacks = {}
        for _, TargetData in ipairs(Targets) do
            table.insert(Attacks, {TargetData.Enemy, TargetData.RootPart})
        end
        if #Attacks > 0 then
            for _ = 1, 3 do
                pcall(function()
                    RegisterHit:FireServer(Attacks[1][2], Attacks)
                end)
            end
        end
    end

    task.delay(self.AttackSpeed, function()
        self.Debounce = false
    end)
end
local function StartAutoAttack()
    spawn(function()
        while _ENV.AutoAttack do
            task.wait(FastConfig.AttackSpeed)
            pcall(function()
                FastConfig:AttackNearbyTargets()
            end)
        end
    end)
end
FarmSet:addToggle("Fast Attack", true, function(Value)
    _ENV.AutoAttack = Value
    if Value then
        StartAutoAttack()
    end
end)

FarmSet:addToggle("Disable Damage Counter", true, function(Value)
	ReplicatedStorage.Assets.GUI.DamageCounter.Enabled = not Value
end)

FarmSet:addToggle("Disable Notifications", false, function(Value)
	Player.PlayerGui.Notifications.Enabled = not Value
end)

FarmSet:addToggle("Walk in Water", true, function(Value)
	_ENV.Water = Value
	task.spawn(function()
		local Map = workspace:WaitForChild("Map", 9e9)
		while _ENV.Water do task.wait(0.1)
		  Map:WaitForChild("WaterBase-Plane", 9e9).Size = Vector3.new(1000, 113, 1000)
		end
		Map:WaitForChild("WaterBase-Plane", 9e9).Size = Vector3.new(1000, 80, 1000)
	end)
end)

FarmSet:addToggle("Auto Hop When Admin Joined", true, function(Value)
	_ENV.HopWhenAdmin = Value
	task.spawn(function()
		while _ENV.HopWhenAdmin do task.wait()
			for _, v in pairs(game.Players:GetPlayers()) do
				local AdminList = {
					"red_game43", "rip_indra", "Axiore", "Polkster",
					"wenlocktoad", "Daigrock", "toilamvidamme",
					"oofficialnoobie", "Uzoth", "Azarth", "arlthmetic",
					"Death_King", "Lunoven", "TheGreateAced", "rip_fud",
					"drip_mama", "layandikit12", "Hingoi"
				}
				if table.find(AdminList, v.Name) then
				  		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
					break
				end
			end
		end
	end)
end)

FarmSet:addToggle("Anti Afk", true, function(Value)
	_ENV.AntiAFK = Value
	if not Value then
		local GC = getconnections or get_signal_cons
		if GC then
			for i, v in pairs(GC(Players.LocalPlayer.Idled)) do
				if v["Disable"] then
					v["Disable"](v)
				elseif v["Disconnect"] then
					v["Disconnect"](v)
				end
			end
		end
		return
	end
	local GC = getconnections or get_signal_cons
	if GC then
		for i, v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		local VirtualUser = game:GetService("VirtualUser")
		Players.LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
end)

local Sub_Left = Tab.Sub:addSection()
local QuestFarm = Sub_Left:addMenu("Quest Farming")

QuestFarm:addToggle("Complete Saber Quest", false, function(Value)
	_ENV.Auto_Saber = Value
	AutoUnlockSaber()
	if not Value then StopTween() return end
end)

QuestFarm:addToggle("Complete Tushita Quest", false, function(Value)
	_ENV.AutoTushitaQuest = Value
	if not Value then StopTween() return end
	task.spawn(function()
		local Map = workspace:WaitForChild("Map", 9e9)
		local Turtle = Map:WaitForChild("Turtle", 9e9)
		local QuestTorches = Turtle:WaitForChild("QuestTorches", 9e9)
		
		local Active1 = false
		local Active2 = false
		local Active3 = false
		local Active4 = false
		local Active5 = false
		
		while _ENV.AutoTushitaQuest do task.wait()
		  if not Turtle:FindFirstChild("TushitaGate") then
			local Enemie = Enemies:FindFirstChild("Longma")
			
			if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
			  topos(Enemie.HumanoidRootPart.CFrame * Pos)
			  pcall(function()
				AutoHaki()
				EquipWeapon()
			end)
			else
			  topos(CFrame.new(-10218, 333, -9444))
			end
		  elseif CheckMon("rip_indra True Form") then
			if not VerifyTool("Holy Torch") then
			  topos(CFrame.new(5152, 142, 912))
			else
			  local Torch1 = QuestTorches:FindFirstChild("Torch1")
			  local Torch2 = QuestTorches:FindFirstChild("Torch2")
			  local Torch3 = QuestTorches:FindFirstChild("Torch3")
			  local Torch4 = QuestTorches:FindFirstChild("Torch4")
			  local Torch5 = QuestTorches:FindFirstChild("Torch5")
			  
			  local args1 = Torch1 and Torch1:FindFirstChild("Particles")
			  and Torch1.Particles:FindFirstChild("PointLight") and not Torch1.Particles.PointLight.Enabled
			  local args2 = Torch2 and Torch2:FindFirstChild("Particles")
			  and Torch2.Particles:FindFirstChild("PointLight") and not Torch2.Particles.PointLight.Enabled
			  local args3 = Torch3 and Torch3:FindFirstChild("Particles")
			  and Torch3.Particles:FindFirstChild("PointLight") and not Torch3.Particles.PointLight.Enabled
			  local args4 = Torch4 and Torch4:FindFirstChild("Particles")
			  and Torch4.Particles:FindFirstChild("PointLight") and not Torch4.Particles.PointLight.Enabled
			  local args5 = Torch5 and Torch5:FindFirstChild("Particles")
			  and Torch5.Particles:FindFirstChild("PointLight") and not Torch5.Particles.PointLight.Enabled
			  
			  if not Active1 and args1 then
			   topos(Torch1.CFrame)
			  elseif not Active2 and args2 then
			   topos(Torch2.CFrame)Active1 = true
			  elseif not Active3 and args3 then
			   topos(Torch3.CFrame)Active2 = true
			  elseif not Active4 and args4 then
				topos(Torch4.CFrame)Active3 = true
			  elseif not Active5 and args5 then
				topos(Torch5.CFrame)Active4 = true
			  else
				Active5 = true
			  end
			end
		  else
			if VerifyTool("God's Chalice") then
				EquipToolName("God's Chalice")
			  topos(CFrame.new(-5561, 314, -2663))
			else
			  local NPC = "EliteBossVerify"QuestVisible()
			  
			  if VerifyQuest("Diablo") then
				NPC = "Diablo"
			  elseif VerifyQuest("Deandre") then
				NPC = "Deandre"
			  elseif VerifyQuest("Urban") then
				NPC = "Urban"
			  else
				task.spawn(function()FireRemote("EliteHunter")end)
			  end
			  local EliteBoss = GetEnemies({NPC})
			  if EliteBoss and EliteBoss:FindFirstChild("HumanoidRootPart") then
				topos(EliteBoss.HumanoidRootPart.CFrame * Pos)
				EquipWeapon()
				pcall(function()
					AutoHaki()
				end)
			  end
			end
		  end
		end
	  end)
end)


QuestFarm:addToggle("Complete Bartilo Quest", false, function(Value)
	_ENV.AutoBartilo = Value;AutoBartiloQuest()
	if not Value then StopTween() return end
end)

local SubItem = Sub_Left:addMenu("Swords/Guns")
SubItem:addToggle("Auto Get Yama", false, function(Value)
	_ENV.AutoYama = Value
	task.spawn(function()
		while _ENV.AutoYama do task.wait()
		  pcall(function()
			if FireRemote("EliteHunter", "Progress") >= 30 then
			  fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
			end
		  end)
		end
	end)
end)



SubItem:addToggle("Auto Get Rengoku", false, function(Value)
	_ENV.AutoRenguko = Value;AutoTaskRenguko()
	if not Value then StopTween() return end
end)

function GetWeaponInventory(Gun)
	for i,v in pairs(FireRemote("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Gun" then
				if v.Name == Gun then
					return true
				end
			end
		end
	end
	return false
end
SubItem:addToggle("Auto Skull Guitar Fully", false, function(Value)
	_ENV.AutoSoulGuitar = Value
	if not Value then StopTween() return end
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if GetWeaponInventory("Skull Guitar") == false then
				if _ENV.AutoSoulGuitar then
					if CheckMaterial("Bones") >= 500 and CheckMaterial("Ectoplasm") >= 250 and CheckMaterial("Dark Fragment") >= 1 then
						if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
							if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
								local GuitarProgress = FireRemote("GuitarPuzzleProgress", "Check");
								if not GuitarProgress then 
									local gravestoneEvent = FireRemote("gravestoneEvent", 2);
									if gravestoneEvent == true then
										FireRemote("gravestoneEvent", 2, true);
									else 
										if _ENV.AutoSoulGuitar then
											game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
										end
									end;
								end
								if GuitarProgress then 
									local Swamp = GuitarProgress.Swamp;
									local Gravestones = GuitarProgress.Gravestones;
									local Ghost = GuitarProgress.Ghost;
									local Trophies = GuitarProgress.Trophies;
									local Pipes = GuitarProgress.Pipes;
									local CraftedOnce = GuitarProgress.CraftedOnce;
									if Swamp and Gravestones and Ghost and Trophies and Pipes then 
										_ENV.AutoSoulGuitar = false
									end
									if not Swamp then 
										repeat wait() 
											topos(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0,30,0))
										until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Living Zombie" then
												if v:FindFirstChild('Humanoid') then 
													if v:FindFirstChild('HumanoidRootPart') then 
														if game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 2000 then 
															repeat wait() 
																AutoHaki()
																EquipWeapon()
																topos(v.HumanoidRootPart.CFrame * Pos)
																StartSoulGuitarMagnt = true
																BringMob(v.Name, v.HumanoidRootPart.CFrame)
															until not v.Parent or v.Humanoid.Health <= 0 or not  v:FindFirstChild('HumanoidRootPart') or not v:FindFirstChild('Humanoid') or not _G.Settings.Main["Auto Quest Soul Guitar"]
															StartSoulGuitarMagnt = false
														end
													end
												end
											end
										end   
									end
									wait(1)
									if Swamp and not Gravestones then 
										FireRemote("GuitarPuzzleProgress", "Gravestones");
									end
									wait(1)
									if Swamp and  Gravestones and not Ghost then 
										FireRemote("GuitarPuzzleProgress", "Ghost");
									end 
									wait(1)
									if  Swamp and  Gravestones and Ghost and not Trophies then 
										FireRemote("GuitarPuzzleProgress", "Trophies");
									end
									wait(1)
									if  Swamp and  Gravestones and Ghost and Trophies and not Pipes then 
										FireRemote("GuitarPuzzleProgress", "Pipes");
									end
								end
							else
								if string.find(FireRemote("gravestoneEvent",2), "Error") then
									print("Go to Grave")
									topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
								elseif string.find(FireRemote("gravestoneEvent",2), "Nothing") then
									print("Wait Next Night")
								else
									FireRemote("gravestoneEvent",2,true)
								end
							end
						else
							topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
						end
					else
						if CheckMaterial("Ectoplasm") <= 250 then
							if World2 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" or v.Name == "Arctic Warrior" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													AutoHaki()
													EquipWeapon()
													topos(v.HumanoidRootPart.CFrame * Pos)
													BringMob(v.Name, v.HumanoidRootPart.CFrame)
												until not _ENV.AutoSoulGuitar or not v.Parent or v.Humanoid.Health <= 0
											end
										end
									end
								else
									FireRemote("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							else
								FireRemote("TravelDressrosa")
							end
						elseif CheckMaterial("Dark Fragment") < 1 then
							if World2 then
								if game.ReplicatedStorage:FindFirstChild("Darkbeard") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Darkbeard" and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												AutoHaki()
												EquipWeapon()
												topos(v.HumanoidRootPart.CFrame * Pos)
											until _ENV.AutoSoulGuitar or v.Humanoid.Health <= 0
										end
									end
								else
									topos(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
								end
							else
								FireRemote("TravelDressrosa")
							end
						elseif CheckMaterial("Bones") <= 500 then
							if World3 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													AutoHaki()
													EquipWeapon()
													topos(v.HumanoidRootPart.CFrame * Pos)
													BringMob(v.Name, v.HumanoidRootPart.CFrame)
												until not _ENV.AutoSoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
											end
										end
									end
								else
									topos(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
								end
							else
								FireRemote("TravelZou")
							end
						end
					end
				end
			end
		end)
	end
end)

local Sub_Right = Tab.Sub:addSection()
local TimelyRaidFarm = Sub_Right:addMenu("Timely Raid Farming")

local EliteHunterInfo = TimelyRaidFarm:addLabel("Elite Hunter Status", "Scanning for information")

function EliteInfo()
    local StatusMessage = ""
    pcall(function()
        local SpawnStatus = "Not Spawned"
        local EliteName = ""
        if CheckMon("Diablo") then
			SpawnStatus = ""
            EliteName = "Diablo"
        elseif CheckMon("Deandre") then
			SpawnStatus = ""
            EliteName = "Deandre"
		elseif CheckMon("Urban") then
			SpawnStatus = ""
            EliteName = "Urban"
        end
        local Progress = FireRemote("EliteHunter", "Progress") or "Unknown"
        StatusMessage = "Status: " .. SpawnStatus
        if EliteName ~= "" then
            StatusMessage = StatusMessage .. "Spawned: " .. EliteName
        end
        StatusMessage = StatusMessage .. " [Progress: " .. Progress .. "]"
    end)
    return StatusMessage
end

task.spawn(function()
    while task.wait(1) do
        EliteHunterInfo:RefreshDesc(EliteInfo())
    end
end)


TimelyRaidFarm:addToggle("Auto Elite Hunter", false, function(Value)
	_ENV.AutoEliteHunter = Value;AutoTaskEliteHunter()
  	if not Value then StopTween() return end
end)

TimelyRaidFarm:addToggle("Auto Factory Raid", false, function(Value)
	_ENV.AutoFactory = Value;AutoFactory()
	if not Value then StopTween() return end
end)

TimelyRaidFarm:addToggle("Auto Pirate Raid", false, function(Value)
	_ENV.AutoPirateRaid = Value;AutoPirateRaid()
	if not Value then StopTween() return end
end)

TimelyRaidFarm:addToggle("Auto Hallow Scythe", false, function(Value)
	_ENV.AutoFarmBossHallow = Value;AutoSoulReaper()
	if not Value then StopTween() return end
end)

TimelyRaidFarm:addToggle("Auto Dark Coat", false, function(Value)
	_ENV.AutoDarkCoat = Value;AutoDarkbeard()
	if not Value then StopTween() return end
end)

TimelyRaidFarm:addToggle("Auto Cursed Captain", false, function(Value)
	_ENV.AutoCursedCaptain = Value;AutoCursedCaptain()
	if not Value then StopTween() return end
end)


TimelyRaidFarm:addToggle("Auto Open Colors Plate", false, function(Value)
	_ENV.AutoOpenColors = Value
	task.spawn(function()
	  while _ENV.AutoOpenColors do
		  task.wait(0.1)
		  local plrChar = Player and Player.Character and Player.Character.PrimaryPart
		  if plrChar then
			  local positions = {
				  {pos = Vector3.new(-5415, 314, -2212), color = "Pure Red"},
				  {pos = Vector3.new(-4972, 336, -3720), color = "Snow White"},
				  {pos = Vector3.new(-5420, 1089, -2667), color = "Winter Sky"}
			  }
			  for _, data in pairs(positions) do
				  if (plrChar.Position - data.pos).Magnitude < 5 then
					game:GetService("ReplicatedStorage").Modules.Net["RF/FruitCustomizerRF"]:InvokeServer({
						["StorageName"] = data.color,
						["Type"] = "AuraSkin",
						["Context"] = "Equip"
					})
					  break
				  end
			  end
		  end
	  end
  end)
  task.spawn(function()
	  while _ENV.AutoOpenColors do
		  task.wait(0.2)
		  if not _ENV.AutoFarm and not _ENV.Auto_Bone and not _ENV.AutoFarmPrince then
			  local button = GetButton()
			  if button then
				  topos(button.CFrame)
			  elseif not button and not _ENV.AutoDarkDagger then
				  topos(CFrame.new(-5119, 315, -2964))
			  end
		  end
	  end
  end)
	if not Value then StopTween() return end
end)
TimelyRaidFarm:addToggle("Auto True Form Rip Indra", false, function(Value)
	_ENV.AutoDarkDagger = Value;AutoKillRipIndra()
	if not Value then StopTween() return end
end)

local TasksFarm = Sub_Right:addMenu("Tasks Farm")
TasksFarm:addToggle("Start Farm Observation", false, function(Value)
	_ENV.AutoObservation = Value;AutoObservation()
	if not Value then StopTween() return end
end)

TasksFarm:addToggle("Farm Observation Hopping", false, function(Value)
	_ENV.StartObsHop = Value
	if not Value then StopTween() return end
end)

TasksFarm:addToggle("Auto Dummy Training", false, function(Value)
	_ENV.DummyTraining = Value;TrainDummy()
	if not Value then StopTween() return end
end)

TasksFarm:addToggle("Auto Musketeer Hat", false, function(Value)
	_ENV.AutoMusketeerHat = Value;AutoFarmMusketeerHat()
	if not Value then StopTween() return end
end)

local Dragon_Left = Tab.Dragon:addSection()
local Dragon = Dragon_Left:addMenu("Collectables")

Dragon:addToggle("Auto Collect Berries", false, function(Value)
	_ENV.AutoBerrySafe = Value;AutoBerryCollect()
	if not Value then StopTween() return end
end)

local Belts = Dragon_Left:addMenu("Belts")
Belts:addToggle("Auto White Belt", false, function(Value)
	_ENV.AutoWhiteBelt = Value;AutoWhiteBelt()
	if not Value then StopTween() return end
end)

Belts:addDropdown("Boat [Green Belt]", "PirateBrigade", { 'Dinghy', 'PirateSloop', 'PirateBrigade', 'PirateGrandBrigade' },function(Value)
	BoatSelected = Value
end)

Belts:addToggle("Auto Green Belt", false, function(Value)
	_ENV.AutoGreenBelt = Value
	if not Value then StopTween() return end
end)

spawn(function()
    while task.wait() do
        if _ENV.AutoGreenBelt then
            pcall(function()
                local workspace = game:GetService("Workspace")
                local players = game:GetService("Players")
                local player = players.LocalPlayer
                local character = player.Character
                local humanoid = character:WaitForChild("Humanoid")
                local boat = workspace.Boats:FindFirstChild(BoatSelected)
                if boat then
                    if boat.Owner.Value.Name == player.Name then
                        if not humanoid.Sit then
                            topos(boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                        else
                            PlayBoatsTween(CFrame.new(-38888, 30, -2163) * CFrame.new(0, 70, 0))
                        end
                    else
                        humanoid.Sit = false
                        HandleBoatPurchase()
                    end
                else
                    humanoid.Sit = false
                    HandleBoatPurchase()
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if _ENV.AutoGreenBelt then
            local player = game.Players.LocalPlayer
            local boat = game:GetService("Workspace").Boats:FindFirstChild(BoatSelected)
            if not player.Character or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                if boat then
                    boat:Destroy()
                end
            end
        end
    end
end)

function HandleBoatPurchase()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    topos(CFrame.new(-16927, 9, 434))
    if (CFrame.new(-16927, 9, 434).Position - humanoidRootPart.Position).Magnitude <= 10 then
        local args = {
            [1] = "BuyBoat",
            [2] = BoatSelected
        }
        FireRemote(unpack(args))
        wait(1)
    end
end

Belts:addToggle("Auto Purple Belt", false, function(Value)
	_ENV.AutoPurpleBelt = Value;AutoPurpleBelt()
	if not Value then StopTween() return end
end)

local Dragon_Right = Tab.Dragon:addSection()
local Prehistoric = Dragon_Right:addMenu("Prehistoric Event")


Prehistoric:addToggle("Teleport to Prehistoric Island", false, function(Value)
	_ENV.AutoPrehistoricIsland = Value
	task.spawn(function()
		while _ENV.AutoPrehistoricIsland do task.wait()
			for _, location in pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren()) do
				if location.Name == "Prehistoric Island" then
					topos(location.CFrame * CFrame.new(0, 333, 0))
				end
			end
		end
	end)
	if not Value then StopTween() return end
end)

Prehistoric:addDropdown("Boat [Prehistoric]", "PirateBrigade", { 'Dinghy', 'PirateSloop', 'PirateBrigade', 'PirateGrandBrigade' },function(Value)
	BoatSelected = Value
end)

Prehistoric:addToggle("Auto Find Prehistoric Island", false, function(Value)
	_ENV.AutoFindPrehistoricIsland = Value
	if not Value then StopTween() StopBoatsTween() return end
end)

spawn(function()
    while task.wait() do
        if _ENV.AutoFindPrehistoricIsland then
            pcall(function()
                local workspace = game:GetService("Workspace")
                local players = game:GetService("Players")
                local player = players.LocalPlayer
                local character = player.Character
                local humanoid = character:WaitForChild("Humanoid")
                local boat = workspace.Boats:FindFirstChild(BoatSelected)
                if boat then
                    if boat.Owner.Value.Name == player.Name then
                        if not humanoid.Sit then
                            topos(boat.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                        else
                            local worldOrigin = workspace._WorldOrigin.Locations
                            if worldOrigin:FindFirstChild("Prehistoric Island") then
                                PlayBoatsTween(worldOrigin:FindFirstChild("Prehistoric Island").CFrame * CFrame.new(0, 30, 0))
                            else
                                PlayBoatsTween(CFrame.new(-44542, 30, -1245) * CFrame.new(0, 30, 0))
                            end
                        end
                    else
                        humanoid.Sit = false
                        HandleBoatPurchase()
                    end
                else
                    humanoid.Sit = false
                    HandleBoatPurchase()
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if _ENV.AutoFindPrehistoricIsland then
            local player = game.Players.LocalPlayer
            local boat = game:GetService("Workspace").Boats:FindFirstChild(BoatSelected)
            if not player.Character or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                if boat then
                    boat:Destroy()
                end
            end
        end
    end
end)

function HandleBoatPurchase()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    topos(CFrame.new(-16927, 9, 434))
    if (CFrame.new(-16927, 9, 434).Position - humanoidRootPart.Position).Magnitude <= 10 then
        local args = {
            [1] = "BuyBoat",
            [2] = BoatSelected
        }
        FireRemote(unpack(args))
        wait(1)
    end
end

Prehistoric:addButton("Teleport to Dragon Hunter", function()
	topos(CFrame.new(5865.80811, 1209.50269, 811.746582, -0.675207436, -6.76664627e-08, 0.737627923, 8.33632186e-09, 1, 9.93661047e-08, -0.737627923, 7.32418357e-08, -0.675207436))
end)

Prehistoric:addButton("Teleport to Dragon Wizard", function()
	topos(CFrame.new(5775.35059, 1209.50269, 805.679993, -0.696588516, -7.57756808e-08, 0.717470825, -7.6549334e-08, 1, 3.12936663e-08, -0.717470825, -3.31231078e-08, -0.696588516))
end)

Prehistoric:addToggle("Auto Upgrade Dragon Talon", false, function(Value)
	_ENV.AutoUpgradeDragonTalon = Value
	task.spawn(function()
		while task.wait() do
			if _ENV.AutoUpgradeDragonTalon then
				local UzothNPC = CFrame.new(5661.89014, 1211.31909, 864.836731, 0.811413169, -1.36805838e-08, -0.584473014, 4.75227395e-08, 1, 4.25682458e-08, 0.584473014, -6.23161966e-08, 0.811413169)
				topos(UzothNPC)
				if (UzothNPC.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					local RequestTable = {["NPC"] = "Uzoth",["Command"] = "Upgrade"}
					game:GetService("ReplicatedStorage").Modules.Net["RF/InteractDragonQuest"]:InvokeServer(RequestTable)
				end
			end
		end
	end)
	if not Value then StopTween() StopBoatsTween() return end
end)

local Dungeon_Left = Tab.Raid:addSection()
local Raid = Dungeon_Left:addMenu("Fruit Awakenings")

Raids_Chip = {}
local Raids = require(ReplicatedStorage.Raids)
table.foreach(Raids.raids, function(a, b)table.insert(Raids_Chip, b)end)
table.foreach(Raids.advancedRaids, function(a, b)table.insert(Raids_Chip, b)end)

Raid:addDropdown("Raid Chip", "", Raids_Chip,function(Value)
	_ENV.SelectRaid = Value
end)

Raid:addToggle("Auto Buy Microchip", false, function(Value)
	_ENV.AutoBuyChip = Value
	task.spawn(function()
	  while _ENV.AutoBuyChip do task.wait()
		if not VerifyTool("Special Microchip") then
		  FireRemote("RaidsNpc", "Select", _ENV.SelectRaid)task.wait(1)
		end
	  end
	end)
end)

Raid:addToggle("Auto Raid", false, function(Value)
	_ENV.AutoRaid = Value
	task.spawn(function()
		local Islands = workspace:WaitForChild("_WorldOrigin", 9e9):WaitForChild("Locations", 9e9)
		local Indexed = 0
		local function GetIsland(Island)
			local playerChar = Player and Player.Character
			local playerPP = playerChar and playerChar.PrimaryPart
			if not playerPP then return nil end

			for _, island in ipairs(Islands:GetChildren()) do
				if island and island.Name == Island and island:IsA("Part") then
					local islandPosition = island.Position
					if (islandPosition - playerPP.Position).Magnitude < 5000 then
						return island
					end
				end
			end
			return nil
		end

		local function FindEnemiesOnIsland(island)
			local PlayerChar = Player and Player.Character
			local playerPP = PlayerChar and PlayerChar.PrimaryPart
			if not playerPP then return {} end

			local enemies = {}
			for _, enemy in ipairs(Enemies:GetChildren()) do
				local enemyPP = enemy:FindFirstChild("PrimaryPart") or enemy.PrimaryPart
				if enemyPP and (enemyPP.Position - island.Position).Magnitude < 200 then
					table.insert(enemies, enemyPP)
				end
			end
			return enemies
		end

		local function ToPosToEnemiesOnIsland(island)
			local enemies = FindEnemiesOnIsland(island)
			for _, enemy in ipairs(enemies) do
				topos(enemy.Position + Vector3.new(0, 10, 0))
			end
			return #enemies > 0
		end

		local function HandleRaid()
			while _ENV.AutoRaid do
				task.wait()
				if Player.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
					EquipWeapon()AutoHaki()
					local Island1 = GetIsland("Island 1")
					local Island2 = GetIsland("Island 2")
					local Island3 = GetIsland("Island 3")
					local Island4 = GetIsland("Island 4")
					local Island5 = GetIsland("Island 5")

					local foundEnemies = false
					if Island5 then
						topos(Island5.CFrame + Vector3.new(0, 30, 0))
						foundEnemies = ToPosToEnemiesOnIsland(Island5)
					elseif Island4 then
						topos(Island4.CFrame + Vector3.new(0, 30, 0))
						foundEnemies = ToPosToEnemiesOnIsland(Island4)
					elseif Island3 then
						topos(Island3.CFrame + Vector3.new(0, 30, 0))
						foundEnemies = ToPosToEnemiesOnIsland(Island3)
					elseif Island2 then
						topos(Island2.CFrame + Vector3.new(0, 30, 0))
						foundEnemies = ToPosToEnemiesOnIsland(Island2)
					elseif Island1 then
						topos(Island1.CFrame + Vector3.new(0, 30, 0))
						foundEnemies = ToPosToEnemiesOnIsland(Island1)
					end
					if foundEnemies then
						task.wait(1)
					else
						task.wait(3)
					end
				end
			end
		end
		local function SummonRaid()
			while _ENV.AutoRaid do
				task.wait()
				if not Player.PlayerGui.Main.Timer.Visible and VerifyTool("Special Microchip") then
					local noIslands = not (GetIsland("Island 1") or GetIsland("Island 2") or GetIsland("Island 3") or GetIsland("Island 4") or GetIsland("Island 5"))
					if noIslands then
						pcall(function()
							if World2 then
								local Detector = workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector
								if not Detector then
									topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
								else
									fireclickdetector(Detector)
									repeat task.wait() until GetIsland("Island 1")
									task.wait(1)
								end
							elseif World3 then
								local Detector = workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
								if not Detector then
									topos(CFrame.new(-9517, 142, 5528))
								else
									fireclickdetector(Detector)
									repeat task.wait() until GetIsland("Island 1")
									task.wait(1)
								end
							end
						end)
					end
				end
			end
		end
		task.spawn(SummonRaid)
		task.spawn(HandleRaid)
	end)
	if not Value then StopTween() return end
end)




Raid:addToggle("Auto Awaken", false, function(Value)
	_ENV.AutoAwaken = Value
	task.spawn(function()
	  while _ENV.AutoAwaken do task.wait(0.5)
		  FireRemote("Awakener", "Check")FireRemote("Awakener", "Awaken")
	  end
	end)
end)

Raid:addSlider("Unstore Price", 5000, 1000000, 5000, function(Value)
	_ENV.UnstoreFruitPrice = Value
end)

Raid:addToggle("Auto Unstore", false, function(Value)
	_ENV.UnstoreBadFruit = Value
	task.spawn(function()
		while _ENV.UnstoreBadFruit do task.wait()
			local fruits = FireRemote("getInventoryFruits")
			for _, v in pairs(fruits) do
				if v["Price"] < _ENV.UnstoreFruitPrice then
					if not HasFruits() then
						FireRemote("LoadFruit", v["Name"])
					end
				end
			end
		end
	end)
end)

local LawRaid = Dungeon_Left:addMenu("Law Raid")

LawRaid:addToggle("Start Law Raid Farm", false, function(Value)
	_ENV.AutoLawRaid = Value;AutoLawRaid()
	if not Value then StopTween() return end
end)


local Dungeon_Right = Tab.Raid:addSection()
local Fruit = Dungeon_Right:addMenu("Fruit Info")


Fruit:addToggle("Auto Roll Fruit", false, function(Value)
	_ENV.Random_Auto = Value
	task.spawn(function()
		while _ENV.Random_Auto do task.wait()
		FireRemote("Cousin", "Buy")
		end
	end)
end)

local RarityFruits = {
	Common = {
		"Rocket Fruit", "Spin Fruit", "Chop Fruit", "Spring Fruit", "Bomb Fruit", "Smoke Fruit", "Spike Fruit"},
	Uncommon = {
		"Flame Fruit", "Falcon Fruit", "Ice Fruit", "Sand Fruit", "Diamond Fruit", "Dark Fruit"},
	Rare = {
		"Light Fruit", "Rubber Fruit", "Barrier Fruit", "Ghost Fruit", "Magma Fruit"},
	Legendary = {
		"Quake Fruit", "Budha Fruit", "Love Fruit", "Spider Fruit", "Sound Fruit", "Phoenix Fruit", "Portal Fruit", "Rumble Fruit", "Pain Fruit", "Blizzard Fruit"},
	Mythical = {
		"Gravity Fruit", "Mammoth Fruit", "T-Rex Fruit", "Dough Fruit", "Shadow Fruit", "Venom Fruit", "Control Fruit", "Spirit Fruit", "Dragon Fruit", "Leopard Fruit", "Kitsune Fruit"}
  }
  
  local SelectRarityFruits = {"Common - Mythical", "Uncommon - Mythical", "Rare - Mythical", "Legendary - Mythical", "Mythical"}
  local SetRarityFruits = "Common - Mythical"
  local ResultStoreFruits = {}

Fruit:addDropdown("Select Rarity", "Common - Mythical", SelectRarityFruits, function(Value)
	SetRarityFruits = Value
end)

function CheckFruits()
	local RarityOrder = {
		["Common - Mythical"] = { "Common", "Uncommon", "Rare", "Legendary", "Mythical" },
		["Uncommon - Mythical"] = { "Uncommon", "Rare", "Legendary", "Mythical" },
		["Rare - Mythical"] = { "Rare", "Legendary", "Mythical" },
		["Legendary - Mythical"] = { "Legendary", "Mythical" },
		["Mythical"] = { "Mythical" }
	}
	local SelectedRarities = RarityOrder[SetRarityFruits] or {}
	ResultStoreFruits = {}
	for _, rarity in ipairs(SelectedRarities) do
		if RarityFruits[rarity] then
			for _, fruit in ipairs(RarityFruits[rarity]) do
				table.insert(ResultStoreFruits, fruit)
			end
		end
	end
  end

  Fruit:addToggle("Auto Store Fruit", false, function(Value)
	_ENV.AutoStoreFruit = Value
	task.spawn(function()
		while _ENV.AutoStoreFruit do task.wait()
			for _, v in pairs(Player.Backpack:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					ResultStoreFruits = {}
					CheckFruits()
					for _, Res in pairs(ResultStoreFruits) do
						if v.Name == Res then
							local NameFruit = v.Name
							local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
							if Player.Backpack:FindFirstChild(NameFruit) then
								FireRemote("StoreFruit",FirstNameFruit .. "-" .. FirstNameFruit,
								Player.Backpack:FindFirstChild(NameFruit))
							end
						end
					end
				end
			end
		end
	end)
end, "Store selected fruit by rarity")

local FruitInfo = Fruit:addLabel("Fruit Spawn Status", "Scanning for fruit...")

spawn(function()
	while wait(0.5) do
		local Count = 0
		local FruitDistance = math.huge
		local plrPos = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart.Position
		if plrPos then
			for _, obj in ipairs(game.Workspace:GetChildren()) do
				if obj:IsA("Model") and string.find(obj.Name, "Fruit") then
					local Part = obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChild("Handle")
					if Part and Part:IsA("BasePart") then
						Count = Count + 1
						local distance = (Part.Position - plrPos).Magnitude
						if distance < FruitDistance then
							FruitDistance = distance
						end
					end
				end
			end
			local Status = Count > 0 and string.format("Fruits Found: %d\nPosition: %.2f Studs Away", Count, FruitDistance) or "No fruits detected nearby."
			FruitInfo:RefreshDesc(Status)
		end
	end
end)

Fruit:addToggle("Teleport to Fruit", false, function(Value)
	_ENV.Tweenfruit = Value
	task.spawn(function()
		while _ENV.Tweenfruit do task.wait()
			local plrPos = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart.Position
			local Fruit = nil
			local FruitDistance = math.huge
			if plrPos then
				for _, obj in ipairs(game.Workspace:GetChildren()) do
					if obj:IsA("Model") and string.find(obj.Name, "Fruit") then
						local Part = obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChild("Handle")
						if Part and Part:IsA("BasePart") then
							local distance = (Part.Position - plrPos).Magnitude
							if distance < FruitDistance then
								FruitDistance = distance
								Fruit = Part
							end
						end
					end
				end
				if Fruit then
					topos(Fruit.CFrame)
				end
			end
		end
	end)
	if not Value then StopTween() end
end, "")

Fruit:addButton("Teleport To Advanced Fruit Dealer", function()
	repeat
		wait()
	until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
	if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
		local allNPCs = getnilinstances()
		for _, npc in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
			table.insert(allNPCs, npc)
		end
		for _, npc in pairs(allNPCs) do
			if npc.Name == "Advanced Fruit Dealer" then
				topos(npc.HumanoidRootPart.CFrame)
			end
		end
	end
end)

local MirageStockInfo = Fruit:addLabel("Mirage Stock Status", "Scanning for Information...")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage.Remotes
local Event = Remotes["CommF_"]
local result = Event:InvokeServer("GetFruits", true)

local function addCommas(number)
    local formatted = tostring(number)
    while true do  
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end
local function FruitName(FruitName)
    local parts = string.split(FruitName, "-")
    return parts[1]
end
local FruitsInfoString = ""
local FoundFruit = false
for _, FruitData in pairs(result) do
    if FruitData["OnSale"] == true then
        local Name = FruitName(FruitData["Name"])
        local PriceWithCommas = addCommas(FruitData["Price"])
        local FruitInfo = Name .. " - $" .. PriceWithCommas
        FoundFruit = true
        FruitsInfoString = FruitsInfoString .. FruitInfo .. "\n"
    end
end

if FoundFruit then
    MirageStockInfo:RefreshDesc("\n" .. FruitsInfoString)
else
    MirageStockInfo:RefreshDesc("No fruits on sale.")
end

local Trial_Left = Tab.Trial:addSection()
local Trial = Trial_Left:addMenu("Trials")

function MoonTextureId()
    if L_23_ then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif L_24_ then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif L_25_ then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end

function CheckMoonTexture()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    bluemoon = "http://www.roblox.com/asset/?id=4303207962"
    moonreal = MoonTextureId()
    default = "No Full Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 or moonreal == bluemoon then
            default = "Full Moon"
        elseif moonreal == moon4 then
            default = "Next Night"
        end
    end
    return default
end

function ClockTime()
    return math.floor(game.Lighting.ClockTime)
end

local function CheckAcientOneStatus()
	if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
		return "You Have Yet To Achieve Greatness"
	end;
	local L_529_ = nil;
	local L_530_ = nil;
	local L_531_ = nil;
	L_531_, L_530_, L_529_ = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
	if L_531_ == 1 then
		return "You Need Train More."
	elseif L_531_ == 2 or L_531_ == 4 or L_531_ == 7 then
		return "Can Buy Gear With " .. L_529_ .. " Fragments"
	elseif L_531_ == 3 then
		return "You Need Train More."
	elseif L_531_ == 5 then
		return "You're Done Your Race."
	elseif L_531_ == 6 then
		return "Upgrade completed: " .. L_530_ - 2 .. "/3, Need Trains More"
	end;
	if L_531_ ~= 8 then
		if L_531_ == 0 then
			return "Ready For Trial"
		else
			return "You Have Yet To Achieve Greatness"
		end
	end;
	return "Remaining " .. 10 - L_530_ .. " Training Sessions."
end;

function CheckMoon()
    local L_282_ = game.Lighting
    local L_283_ = L_282_.ClockTime
    if L_283_ >= 18 or L_283_ < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    local moonStatus = CheckMoonTexture()
    local statusText = ""

    if moonStatus == "Full Moon" and L_283_ <= 5 then
        statusText = tostring(ClockTime() .. "h : ") .. "( Will End Moon In " .. math.floor(5 - L_283_) .. " Minutes )"
    elseif moonStatus == "Full Moon" and (L_283_ > 5 and L_283_ < 12) then
        statusText = tostring(ClockTime() .. "h : ") .. "( Fake Moon )"
    elseif moonStatus == "Full Moon" and (L_283_ > 12 and L_283_ < 18) then
        statusText = tostring(ClockTime() .. "h : ") .. "( Will Full Moon In " .. math.floor(18 - L_283_) .. " Minutes )"
    elseif moonStatus == "Full Moon" and (L_283_ > 18 and L_283_ <= 24) then
        statusText = tostring(ClockTime() .. "h : ") .. "( Will End Moon In " .. math.floor(24 + 6 - L_283_) .. " Minutes )"
    end

    if moonStatus == "Next Night" and L_283_ < 12 then
        statusText = tostring(ClockTime() .. "h : ") .. "( Will Full Moon In " .. math.floor(18 - L_283_) .. " Minutes )"
    elseif moonStatus == "Next Night" and L_283_ > 12 then
        statusText = tostring(ClockTime() .. "h : ") .. "( Will Full Moon In " .. math.floor(18 + 12 - L_283_) .. " Minutes )"
    end

    if moonStatus == "No Full Moon" then
        statusText = tostring(ClockTime() .. "h : ") .. "No Full Moon"
    end
    
    statusText = statusText .. "\n" .. CheckAcientOneStatus()
    return statusText
end

local FullMoonInfo = Trial:addLabel("Trial Status", "Scanning for Information...")

task.spawn(function()
    while wait() do
        FullMoonInfo:RefreshDesc(CheckMoon())
    end
end)

Trial:addButton("Go to Race Door", function()
	local Players = game:GetService("Players")
	local Race = Players.LocalPlayer.Data.Race.Value
	local RacePositions = {
		Fishman = CFrame.new(28224.057, 14889.427, -210.587),
		Human = CFrame.new(29237.295, 14889.427, -206.950),
		Cyborg = CFrame.new(28492.414, 14894.427, -422.110),
		Skypiea = CFrame.new(28967.408, 14918.075, 234.312),
		Ghoul = CFrame.new(28672.721, 14889.128, 454.596),
		Mink = CFrame.new(29020.660, 14889.427, -379.268)
	}
	local destination = RacePositions[Race]
	if destination then
		topos(destination)
	end
end)

Trial:addToggle("Auto Complete Trials", false, function(Value)
	_ENV.AutoFinishTrial = Value
	task.spawn(function()
	  while _ENV.AutoFinishTrial do task.wait(0.1)
		  local PlayerRace = Player.Data.Race.Value
		  if typeof(PlayerRace) == "string" then
			  if PlayerRace == "Cyborg" then
				  	topos(CFrame.new(28654, 14898, -30))
			  elseif PlayerRace == "Ghoul" or PlayerRace == "Human" then
				  	KillAura()
				elseif PlayerRace == "Fishman" then
					print("Not working as for now")
			  elseif PlayerRace == "Mink" then
					topos(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, - 5, 0))
			  elseif PlayerRace == "Skypiea" then
					topos(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
			  	end
		  	end
	  	end
  	end)
end)

Trial:addToggle("Auto Kill Players", false, function(Value)
	_ENV.KillPlayer = Value
	if not Value then StopTween() return end
	task.spawn(function()
	  while _ENV.KillPlayer do task.wait()
		local cc
		pcall(function()
		  local TempleCFrame = CFrame.new(28730, 14887, -91, 0.557, 0, 0.83, 0, 1, 0, -0.83, 0, 0.557)
		  if Player.PlayerGui.Main.Timer.Visible and GetDistance(TempleCFrame) <= 380 then
			for _, p in pairs(game.Players:GetChildren()) do
			  local char = p.Character
			  if p.Name ~= Player.Name and char and char:FindFirstChild("HumanoidRootPart") then
				local hrp = char.HumanoidRootPart
				if GetDistance(TempleCFrame, hrp) <= 300 and char.Humanoid.Health > 0 then
				  cc = p
				end
			  end
			end
		  end
		end)
		for _, v in pairs(workspace.Characters:GetChildren()) do
		  if v.Name ~= Player.Name then
			local h, hrp = v:FindFirstChild("Humanoid"), v:FindFirstChild("HumanoidRootPart")
			if h and hrp and h.Health > 0 and 
			   (Player.Character.HumanoidRootPart.Position - hrp.Position).Magnitude <= 100 then
				  repeat task.wait()
					  Target = v.Name
					  AutoHaki()
					  EquipWeapon()
					  topos(hrp.CFrame * CFrame.new(0, 5, 3))
					  if game.Players.LocalPlayer.Team ~= game.Players[Target].Team or tostring(game.Players.LocalPlayer.Team) == "Pirates" then
						topos(hrp.CFrame * CFrame.new(0, 0, 3))
					  end
				  until not _ENV.KillPlayer or h.Health <= 0 or not hrp or not h or not v.Parent
			end
		  end
		end
	  end
	end)
end)

Trial:addDropdown("Select Train Method", "Bones", {"Bones", "Cakes"}, function(Value)
	_ENV.TrainMethod = Value
end)

Trial:addToggle("Start Auto Train", false, function(Value)
	_ENV.AutoTrain = Value
	AutoTrainGear()
	if not Value then StopTween() return end
end)

local Tp = Trial_Left:addMenu("Teleports")

Tp:addButton("Teleport to Top of Great Tree", function()
	topos(CFrame.new(2948, 2282, -7214))
end)

Tp:addButton("Teleport to Temple of Time", function()
	topos(CFrame.new(28286, 14895, 103))
end)

Tp:addButton("Teleport to Acient One", function()
	topos(CFrame.new(28982, 14888, -120))
end)

Tp:addButton("Teleport to Lever Pull", function()
	topos(CFrame.new(28575, 14937, 72))
end)

Tp:addButton("Teleport to Safe Zone", function()
	topos(CFrame.new(28273, 14897, 157))
end)

Tp:addButton("Teleport back to Pvp Zone", function()
	topos(CFrame.new(28767, 14967, -164))
end)

Tp:addButton("Teleport to Clock", function()
	topos(CFrame.new(29552, 15069, -86))
end)

local Trial_Right = Tab.Trial:addSection()
local MTrial = Trial_Right:addMenu("Misc Trial")

MTrial:addToggle("Auto Upgrade Gear", false, function(Value)
	_ENV.BuyGear = Value
	task.spawn(function()
		while _ENV.BuyGear do task.wait()
			FireRemote("UpgradeRace", "Buy")
		end
	end)
end)

MTrial:addToggle("Disable Infinite Stairs", false, function(Value)
	game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = Value
end)

MTrial:addToggle("Auto Activate V3", false, function(Value)
	_ENV.AutoAgility = Value
	task.spawn(function()
		while _ENV.AutoAgility do task.wait()
		game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
		end
	end)
end)

MTrial:addToggle("Auto Activate V4", false, function(Value)
	_ENV.AutoActiveRaceV4 = Value
	task.spawn(function()
		while _ENV.AutoActiveRaceV4 do
			task.wait()
			if Player.Character and Player.Character:FindFirstChild("RaceEnergy") and Player.Character:FindFirstChild("RaceTransformed") then
				if Player.Character.RaceEnergy.Value >= 1 and not Player.Character.RaceTransformed.Value then
					Player.Backpack.Awakening.RemoteFunction:InvokeServer({[1] = true})
				end
			end
		end
	end)
end)


local Travel_Left = Tab.Travel:addSection()
local World = Travel_Left:addMenu("World Travel")

World:addButton("Teleport to World 1", function()
	FireRemote("TravelMain")
end)

World:addButton("Teleport to World 2", function()
	FireRemote("TravelDressrosa")
end)

World:addButton("Teleport to World 3", function()
	FireRemote("TravelZou")
end)

local Island = Travel_Left:addMenu("Island Travel")

local IslandsList = {}
  
if World1 then
IslandsList = {
  "WindMill",
  "Marine",
  "Middle Town",
  "Jungle",
  "Pirate Village",
  "Desert",
  "Snow Island",
  "MarineFord",
  "Colosseum",
  "Sky Island 1",
  "Sky Island 2",
  "Sky Island 3",
  "Prison",
  "Magma Village",
  "Under Water Island",
  "Fountain City"
}
elseif World2 then
IslandsList = {
  "The Cafe",
  "First Spot",
  "Dark Area",
  "Flamingo Mansion",
  "Flamingo Room",
  "Green Zone",
  "Zombie Island",
  "Two Snow Mountain",
  "Punk Hazard",
  "Cursed Ship",
  "Ice Castle",
  "Forgotten Island",
  "Ussop Island"
}
elseif World3 then
IslandsList = {
  "Mansion",
  "Port Town",
  "Great Tree",
  "Castle On The Sea",
  "Hydra Island",
  "Floating Turtle",
  "Haunted Castle",
  "Ice Cream Island",
  "Peanut Island",
  "Cake Island",
  "Candy Cane Island",
  "Tiki Outpost"
}
end

Island:addDropdown("Select Island", "", IslandsList, function(Value)
	_ENV.TeleportIslandSelect = Value
end)

Island:addToggle("Start Traveling", false, function(Value)
    _ENV.TeleportToIsland = Value
    task.spawn(function()
        while _ENV.TeleportToIsland do
            task.wait()
            local Island = _ENV.TeleportIslandSelect
            if World1 then
                local locations = {
                    ["Middle Town"] = CFrame.new(-688, 15, 1585),
                    ["MarineFord"] = CFrame.new(-4810, 21, 4359),
                    ["Marine"] = CFrame.new(-2728, 25, 2056),
                    ["WindMill"] = CFrame.new(889, 17, 1434),
                    ["Desert"] = CFrame.new(944, 21, 4373),
                    ["Snow Island"] = CFrame.new(1298, 87, -1344),
                    ["Pirate Village"] = CFrame.new(-1173, 45, 3837),
                    ["Jungle"] = CFrame.new(-1614, 37, 146),
                    ["Prison"] = CFrame.new(4870, 6, 736),
                    ["Under Water Island"] = CFrame.new(61164, 5, 1820),
                    ["Colosseum"] = CFrame.new(-1535, 7, -3014),
                    ["Magma Village"] = CFrame.new(-5290, 9, 8349),
                    ["Sky Island 1"] = CFrame.new(-4814, 718, -2551),
                    ["Sky Island 2"] = CFrame.new(-4652, 873, -1754),
                    ["Sky Island 3"] = CFrame.new(-7895, 5547, -380)
                }
                if locations[Island] then
                    topos(locations[Island])
                end
            elseif World2 then
                local locations = {
                    ["The Cafe"] = CFrame.new(-382, 73, 290),
                    ["First Spot"] = CFrame.new(-11, 29, 2771),
                    ["Dark Area"] = CFrame.new(3494, 13, -3259),
                    ["Flamingo Mansion"] = CFrame.new(-317, 331, 597),
                    ["Flamingo Room"] = CFrame.new(2285, 15, 905),
                    ["Green Zone"] = CFrame.new(-2258, 73, -2696),
                    ["Zombie Island"] = CFrame.new(-5552, 194, -776),
                    ["Two Snow Mountain"] = CFrame.new(752, 408, -5277),
                    ["Punk Hazard"] = CFrame.new(-5897, 18, -5096),
                    ["Cursed Ship"] = CFrame.new(919, 125, 32869),
                    ["Ice Castle"] = CFrame.new(5505, 40, -6178),
                    ["Forgotten Island"] = CFrame.new(-3050, 240, -10178),
                    ["Ussop Island"] = CFrame.new(4816, 8, 2863)
                }
                if locations[Island] then
                    topos(locations[Island])
                end
            elseif World3 then
                local locations = {
                    ["Mansion"] = CFrame.new(-12471, 374, -7551),
                    ["Port Town"] = CFrame.new(-334, 7, 5300),
                    ["Castle On The Sea"] = CFrame.new(-5073, 315, -3153),
                    ["Hydra Island"] = CFrame.new(4731.27, 1090.18, 1078.17),
                    ["Great Tree"] = CFrame.new(2681, 1682, -7190),
                    ["Floating Turtle"] = CFrame.new(-12528, 332, -8658),
                    ["Haunted Castle"] = CFrame.new(-9517, 142, 5528),
                    ["Ice Cream Island"] = CFrame.new(-902, 79, -10988),
                    ["Peanut Island"] = CFrame.new(-2062, 50, -10232),
                    ["Cake Island"] = CFrame.new(-1897, 14, -11576),
                    ["Candy Cane Island"] = CFrame.new(-1038, 10, -14076),
                    ["Tiki Outpost"] = CFrame.new(-16224, 9, 439)
                }
                if locations[Island] then
                    topos(locations[Island])
                end
            end
        end
    end)
    if not Value then StopTween() return end
end)


local Travel_Right = Tab.Travel:addSection()
local Server = Travel_Right:addMenu("Server Travel")

Server:addTextbox("Enter Job ID", _G.ServerId, function(Value)
    _G.ServerId = Value
end)

Server:addButton("Join Job ID", function()
	_G.ServerId = _G.ServerId:gsub("`", ""):gsub("lua", "")
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _G.ServerId)
end)

Server:addButton("Copy Current Job ID", function()
	setclipboard(tostring(game.JobId))
end)

local MServer = Travel_Right:addMenu("Misc Travel")

MServer:addButton("Server Hop, Random Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MServer:addButton("Hop to lower Player server", function()
	local maxPlayers, gameLink, bestServer, serverData = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	_G.FailedServerID = _G.FailedServerID or {}
	local function searchServers()
		local success, response = pcall(function()
			return game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gameLink))
		end)
		if success and response and response.data then
			for _, server in pairs(response.data) do
				pcall(function()
					if type(server) == "table" and server.id and server.playing 
					and tonumber(maxPlayers) > tonumber(server.playing) 
					and not table.find(_G.FailedServerID, server.id) then
						maxPlayers = server.playing
						bestServer = server.id
					end
				end)
			end
		end
	end
	local function fetchServers()
		searchServers()
		if serverData and serverData.nextPageCursor then
			local cursor = "&cursor=" .. serverData.nextPageCursor
			gameLink = gameLink:gsub("&cursor=.*", "") .. cursor
			fetchServers()
		end
	end
	pcall(fetchServers)
	wait(0.1)
	if bestServer ~= game.JobId and maxPlayers < #game:GetService("Players"):GetChildren() then
		table.insert(_G.FailedServerID, bestServer)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, bestServer)
	end
	while wait(0.1) do
		pcall(function()
			if not game:IsLoaded() then
				game.Loaded:Wait()
			end
			game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function(descendant)
				local errorPrompt = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
				if errorPrompt and errorPrompt.TitleFrame.ErrorTitle.Text == "Disconnected" then
					if #game.Players:GetPlayers() <= 1 then
						game.Players.LocalPlayer:Kick("\nRejoining...")
						wait(0.1)
						game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
					else
						game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
					end
				end
			end)
		end)
	end
end)


local Shop_Left = Tab.Shop:addSection()
local Selection = Shop_Left:addMenu("Selection Shop")

local BuyItem = function(item, category)
	local ItemsToBuy = {
		["Frags"] = {
			["Race Rerol"] = {"BlackbeardReward", "Reroll", "2"},
			["Reset Stats"] = {"BlackbeardReward", "Refund", "2"}
		},
		["Ability"] = {
			["Geppo"] = {"BuyHaki", "Geppo"},
			["Buso Haki"] = {"BuyHaki", "Buso"},
			["Soru"] = {"BuyHaki", "Soru"},
			["Observation Haki"] = {"KenTalk", "Buy"}
		},
		["FightingStyle"] = {
			["Black Leg"] = {"BuyBlackLeg"},
			["Electro"] = {"BuyElectro"},
			["Water Kung Fu"] = {"BuyFishmanKarate"},
			["Dragon Claw"] = {"BlackbeardReward", "DragonClaw", "1"},
			["Death Step"] = {"BuyDeathStep"},
			["Sharkman Karate"] = {"BuySharkmanKarate", true},
			["Electric Claw"] = {"BuyElectricClaw"},
			["Dragon Talon"] = {"BuyDragonTalon"},
			["Superhuman"] = {"BuySuperhuman"},
			["God Human"] = {"BuyGodhuman"},
			["Sanguine Art"] = {"BuySanguineArt", true}
		},
		["Gun"] = {
			["Slingshot"] = {"BuyItem", "Slingshot"},
			["Musket"] = {"BuyItem", "Musket"},
			["Flintlock"] = {"BuyItem", "Flintlock"},
			["Refined Slingshot"] = {"BuyItem", "Refined Flintlock"},
			["Refined Flintlock"] = {"BuyItem", "Refined Flintlock"},
			["Cannon"] = {"BuyItem", "Cannon"},
			["Kabucha"] = {"BlackbeardReward", "Slingshot", "1"},
			["Bizarre Rifle"] = {"Ectoplasm", "Buy", 1}
		},
		["Accessory"] = {
			["Black Cape"] = {"Black Cape"},
			["Swordsman Hat"] = {"Swordsman Hat"},
			["Tomoe Ring"] = {"Tomoe Ring"}
		},
		["Sword"] = {
			["Cutlass"] = {"Cutlass"},
			["Katana"] = {"Katana"},
			["Iron Mace"] = {"Iron Mace"},
			["Dual Katana"] = {"Duel Katana"},
			["Triple Katana"] = {"Triple Katana"},
			["Pipe"] = {"Pipe"},
			["Dual-Headed Blade"] = {"Dual-Headed Blade"},
			["Bisento"] = {"Bisento"},
			["Soul Cane"] = {"Soul Cane"},
			["Pole v.2"] = {"ThunderGodTalk"}
		}
	}
	
	local args = ItemsToBuy[category] and ItemsToBuy[category][item]
	if not args then return end
	if category == "Frags" or category == "Ability" or category == "Accessory" then
		FireRemote(unpack(args))
	elseif category == "Sword" then
		wait(0.1)
		FireRemote(item == "Pole v.2" and args or "BuyItem", args)
	elseif category == "Gun" then
		wait(0.5)
		if item == "Kabucha" then
			FireRemote(args[1], args[2], args[3])
			FireRemote(args[1], args[2], "2")
		else
			FireRemote(unpack(args))
		end
	elseif category == "FightingStyle" then
		FireRemote(unpack(args))
		if item == "Dragon Claw" then
			FireRemote("BlackbeardReward", "DragonClaw", "2")
		elseif item == "Sharkman Karate" then
			FireRemote("BuySharkmanKarate")
		elseif item == "Sanguine Art" then
			FireRemote("BuySanguineArt")
		end
	end
end

Selection:addDropdown("Select Ability", 'Geppo', {'Geppo', 'Buso Haki', 'Soru', 'Observation Haki'}, function(Value)
	_ENV.BuyAbility = Value
end)

Selection:addButton("Buy Ability", function()
	if _ENV.BuyAbility then
		BuyItem(_ENV.BuyAbility, "Ability")
	end
end)

Selection:addDropdown("Select Fighting Style", 'Black Leg', {'Black Leg', 'Electro', 'Water Kung Fu', 'Dragon Claw','Death Step', 'Sharkman Karate', 'Electric Claw', 'Dragon Talon', 'Superhuman', 'God Human', 'Sanguine Art'}, function(Value)
	_ENV.BuyFighting = Value
end)

Selection:addButton("Buy Fighting Style", function()
	if _ENV.BuyFighting then
		BuyItem(_ENV.BuyFighting, "FightingStyle")
	end
end)

Selection:addDropdown("Select Gun", 'Slingshot', {'Slingshot', 'Musket', 'Flintlock', 'Refined Slingshot', 'Refined Flintlock', 'Cannon', 'Kabucha', 'Bizarre Rifle'}, function(Value)
	_ENV.GunSelect = Value
end)

Selection:addButton("Buy Gun", function()
	if _ENV.GunSelect then
		BuyItem(_ENV.GunSelect, "Gun")
	end
end)

Selection:addDropdown("Select Accessory", 'Black Cape', {'Black Cape', 'Swordsman Hat', 'Tomoe Ring'}, function(Value)
	_ENV.BuyAccessories = Value
end)

Selection:addButton("Buy Gun", function()
	if _ENV.BuyAccessories then
		BuyItem(_ENV.BuyAccessories, "Accessory")
	end
end)

local ItemShop = Shop_Left:addMenu("Item Shop")

ItemShop:addToggle("Buy Haki Color", false, function(Value)
	_ENV.AutoBuyEnchancementColor = Value
	task.spawn(function()
		while _ENV.AutoBuyEnchancementColor do task.wait(0.5)
		for i = 1, 2 do
			FireRemote("ColorsDealer", tostring(i))
		end
	end
  end)
end)

ItemShop:addToggle("Buy Legendary Sword", false, function(Value)
	_ENV.BuyLegendSword = Value
	task.spawn(function()
		while _ENV.BuyLegendSword do task.wait()
		for i = 1, 3 do
			FireRemote("LegendarySwordDealer", tostring(i))
			end
		end
	end)
end)

ItemShop:addToggle("Buy True Triple Katana", false, function(Value)
	_ENV.BuyTTK = Value
	task.spawn(function()
		while _ENV.BuyTTK do task.wait()
			FireRemote("MysteriousMan", "2")
		end
	end)
end)

local Shop_Right = Tab.Shop:addSection()
local RaceShop = Shop_Right:addMenu("Race Shop")

RaceShop:addButton("Cyborg Race", function()
	FireRemote("CyborgTrainer", "Buy")
end)

RaceShop:addButton("Ghoul Race", function()
	FireRemote("Ectoplasm", "BuyCheck", 4)
	FireRemote("Ectoplasm", "Change", 4)
end)

local FragShop = Shop_Right:addMenu("Fragment Shop")

FragShop:addButton("Reroll Race", function()
	BuyItem("Race Rerol", "Frags")
end)

FragShop:addButton("Reset Player Stats", function()
	BuyItem("Reset Stats", "Frags")
end)

local Misc_Left = Tab.Misc:addSection()
local TeamSelection = Misc_Left:addMenu("Team Selection")

TeamSelection:addButton("Join Marines Team", function()
	FireRemote("SetTeam","Marines")
end)

TeamSelection:addButton("Join Pirates Team", function()
	FireRemote("SetTeam","Pirates")
end)

local OpenGuis = Misc_Left:addMenu("Menu Openings")

OpenGuis:addButton("Open Title Name", function()
	FireRemote(unpack({[1] = "getTitles"}))
	Player.PlayerGui.Main.Titles.Visible = true
end)

OpenGuis:addButton("Open Haki Colors", function()
	Player.PlayerGui.Main.Colors.Visible = true
end)

OpenGuis:addButton("Open Awakenings", function()
	Player.PlayerGui.Main.AwakeningToggler.Visible = true
end)

local Misc_Right = Tab.Misc:addSection()
local ClientSelection = Misc_Right:addMenu("Players Clients")

ClientSelection:addTextbox("Enter Walk Speed", _ENV.WalkSpeed, function(Value)
    _ENV.WalkSpeed = Value
end)

local oldHook
oldHook = hookmetamethod(Player, "__newindex", function(self, index, value)
	if tostring(self) == "Humanoid" then
		if index == "WalkSpeed" then
			return oldHook(self, index, _ENV.WalkSpeed or value)
		end
	end
	return oldHook(self, index, value)
end)

local transparent = false
function XrayView(Instance)
if Instance then
  for _,i in pairs(workspace:GetDescendants()) do
	if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
	  i.LocalTransparencyModifier = 0.7
	end
  end
else
  for _,i in pairs(workspace:GetDescendants()) do
	if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
	  i.LocalTransparencyModifier = 0
	end
  end
end
end

ClientSelection:addButton("Anti Kick (LocalScript Kick)", function()
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local getnamecallmethod = getnamecallmethod
	if not hookmetamethod or not getnamecallmethod then
		warn("Your exploit does not support the required functions.")
		return
	end
	local oldhmmi
	local oldhmmnc

	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == LocalPlayer and method:lower() == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == LocalPlayer and getnamecallmethod():lower() == "kick" then
			return
		end
		return oldhmmnc(self, ...)
	end)
end)


ClientSelection:addToggle("X-ray Vision", false, function(Value)
	NoWorld = Value
	if NoWorld == true then
	  transparent = true
	  XrayView(transparent)
	elseif NoWorld == false then
	  transparent = false
	  XrayView(transparent)
	end
end)

ClientSelection:addButton("Click Teleport Tool", function()
	local plr = game:GetService("Players").LocalPlayer
	local mouse = plr:GetMouse()
	local tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Teleport Tool"
	tool.Activated:Connect(function()
	local root = plr.Character.HumanoidRootPart
	local pos = mouse.Hit.Position + Vector3.new(0,2.5,0)
	local offset = pos-root.Position
		root.CFrame = root.CFrame + offset
	end)
	tool.Parent = plr.Backpack
end)


ClientSelection:addToggle("Remove Fog", false, function(Value)
	_ENV.NoFog = Value
	task.spawn(function()
		while wait() do
			pcall(function()
				if _ENV.NoFog then
					game.Lighting.FogEnd = math.huge
					if game:GetService("Lighting"):FindFirstChild("FantasySky") then 
						game:GetService("Lighting").FantasySky:Destroy()
					elseif game:GetService("Lighting"):FindFirstChild("LightingLayers") then
						game:GetService("Lighting").LightingLayers:Destroy()
					elseif game:GetService("Lighting"):FindFirstChild("Sky") then
						game:GetService("Lighting").Sky:Destroy()
					end
				else
					game.Lighting.FogEnd = 2500
				end
			end)
		end
	end)
end)

ClientSelection:addButton("Force FPS BOOST", function()
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		task.spawn(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)
	end)
end)

task.spawn(function()
	while true do
	  game.StarterGui:SetCore("SendNotification",
		  {
			  Title = "Quantum Onyx",
			  Text = "Remove Workspace?",
			  Icon = "http://www.roblox.com/asset/?id=80812231439203",
			  Duration = 3850,
			  Button1 = "Yes",
			  Button2 = "No",
			  Callback = function(selected)
				  if selected == "Yes" then
					  game.Workspace:Destroy()
				  end
			  end
		  }
	  )
	  wait(4000)
  end
end)

return Library
