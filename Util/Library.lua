pcall(
    game.HttpGet,
    game,
    setmetatable({}, {
        __tostring = function()
            print("Attempted to exploit: Kick Player")
            return ""
        end
    })
)

local functions = {print, warn, error, writefile, makefolder, rconsoleprint, setclipboard, rconsoleerr, rconsolewarn}
local keywords = {"githubusercontent", "NOOB_SCRIPT20002"}

local function isMalicious(str)
    local lowerStr = string.lower(tostring(str))
    for _, keyword in ipairs(keywords) do
        if string.find(lowerStr, string.lower(keyword)) then
            return true
        end
    end
    return false
end

for _, func in ipairs(functions) do
    hookfunction(func, function(...)
        local args = {...}
        for _, arg in ipairs(args) do
            if isMalicious(arg) then
                while true do end
            end
        end
        return func(...)
    end)
end


local Library = {}

local LocalizationService = game:GetService("LocalizationService")
local http = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TweenInfo = TweenInfo.new

local UISettings = {}

local function CreateInstance(class, properties, parent)
    local instance = Instance.new(class)
    for key, value in pairs(properties) do
        instance[key] = value
    end
    instance.Parent = parent
    return instance
end

local function ApplyUIStroke(parent, color, transparency, size, mode)
    return CreateInstance("UIStroke", {
        Parent = parent,
        Color = color,
        Transparency = transparency,
		Thickness = size or 1,
        ApplyStrokeMode = mode or Enum.ApplyStrokeMode.Border
    }, parent)
end
function UISettings:Tween(instance, properties, duration, ...)
	TweenService:Create(instance, TweenInfo(duration, ...), properties):Play()
end

function Library:DestroyGui(Name)
    local gui = game.CoreGui:FindFirstChild(Name)
    if gui then gui:Destroy() end
end

local function HoverEffect(button, enterProps, leaveProps)
    button.MouseEnter:Connect(function()
        UISettings:Tween(button, enterProps, 0.15)
    end)
    button.MouseLeave:Connect(function()
        UISettings:Tween(button, leaveProps, 0.15)
    end)
end

function Library:CreateWindow(namehub)
	self:DestroyGui(namehub)

    local ScreenGui = CreateInstance("ScreenGui", {
        Name = namehub,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    }, game.CoreGui)


	local Body = CreateInstance("Frame", {
        Name = "Body",
        BackgroundColor3 = Color3.fromRGB(20, 20, 20),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, -300, 0.5, -175),
        Size = UDim2.new(0, 550, 0, 350),
        ClipsDescendants = true
    }, ScreenGui)

    CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, Body)
    ApplyUIStroke(Body, Color3.fromRGB(255, 255, 255), 0.8, 1)

	local TopFrame = CreateInstance("Frame", {
		Name = "TopFrame",
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, 30),
		ClipsDescendants = true
	}, Body)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, TopFrame)

    CreateInstance("TextLabel", {
        Name = "TitleHub",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 5, 0, 0),
        Size = UDim2.new(0, 558, 0, 30),
        Font = Enum.Font.SourceSansBold,
        Text = "    " .. namehub .. " Project",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 15,
        TextXAlignment = Enum.TextXAlignment.Left
    }, Body)


    local MinimizeButton = CreateInstance("TextButton", {
        Name = "Minimize_Button",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 515, 0, 0),
        Size = UDim2.new(0, 30, 0, 30),
        Rotation = -315,
        Font = Enum.Font.SourceSans,
        Text = "+",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        TextSize = 40
    }, Body)

	local Tiktok = CreateInstance("TextButton", {
        Name = "Tiktok",
        BackgroundColor3 = Color3.fromRGB(40, 40, 40),
        Position = UDim2.new(0, 430, 0, 2),
        Size = UDim2.new(0, 85, 0, 25),
		Text = "",
        AutoButtonColor = false
    }, Body)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, Tiktok)
	ApplyUIStroke(Tiktok, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)

	CreateInstance("ImageLabel", {
		Name = "TiktokLogo",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 6, 0, 2),
		Size = UDim2.new(0, 20, 0, 20),
		Image = "http://www.roblox.com/asset/?id=14620084334"
	}, Tiktok)

	CreateInstance("TextLabel", {
		Name = "TiktokTitle",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 35, 0, 0),
		Size = UDim2.new(0, 40, 0, 25),
		Font = Enum.Font.GothamBold,
		Text = "Tiktok",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left
	}, Tiktok)

	HoverEffect(Tiktok, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) }, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })

	Tiktok.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)("https://www.tiktok.com/@trustmenotcondom?_t=ZS-8syewdU3Bxq&_r=1")
		wait(.1)
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Tiktok",
			Text = "Tiktok copied on your clipboard",
			Button1 = "Okay",
			Duration = 20
		})
	end)

	local Discord = CreateInstance("TextButton", {
		Name = "Discord",
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		Position = UDim2.new(0, 340, 0, 2),
		Size = UDim2.new(0, 85, 0, 25),
		Text = "",
		AutoButtonColor = false
	}, Body)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, Discord)
	ApplyUIStroke(Discord, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)

	CreateInstance("ImageLabel", {
		Name = "DiscordLogo",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 6, 0, 2),
		Size = UDim2.new(0, 20, 0, 20),
		Image = "http://www.roblox.com/asset/?id=129297846250682"
	}, Discord)
	
	CreateInstance("TextLabel", {
		Name = "DiscTitle",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 35, 0, 0),
		Size = UDim2.new(0, 40, 0, 25),
		Font = Enum.Font.GothamBold,
		Text = "Discord",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left
	}, Discord)
	HoverEffect(Discord, { BackgroundColor3 = Color3.fromRGB(30, 30, 30) }, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })

	Discord.MouseButton1Click:Connect(function()
		(setclipboard or toclipboard)("https://discord.gg/2qMwBeAtsd")
		wait(.1)
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Discord",
			Text = "Discord copied on your clipboard",
			Button1 = "Okay",
			Duration = 20
		})
	end)

	local ServerTime = CreateInstance("TextLabel", {
		Name = "ServerTime",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 450, 0, 320),
		Size = UDim2.new(0, 120, 0, 25),
		Font = Enum.Font.SourceSansSemibold,
		Text = "",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	}, Body)

	local ServerTimeFunc = {}
	function ServerTimeFunc:Refresh(textadd)
		ServerTime.Text = textadd
	end
	local function LiveTime()
		local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
		local Hour = math.floor(GameTime / (60 ^ 2)) % 24
		local Minute = math.floor(GameTime / (60 ^ 1)) % 60
		local Second = math.floor(GameTime / (60 ^ 0)) % 60
		local FormatTime = string.format("%02dh %02dm %02ds", Hour, Minute, Second)
		ServerTimeFunc:Refresh("Time : " .. FormatTime)
	end
	
	spawn(function()
		while game:GetService('RunService').Heartbeat:Wait() do
			LiveTime()
		end
	end)

	local UserID = game.Players.LocalPlayer.UserId
	local ThumbType = Enum.ThumbnailType.HeadShot
	local ThumbSize = Enum.ThumbnailSize.Size420x420
	local Content = game.Players:GetUserThumbnailAsync(UserID, ThumbType, ThumbSize)

	local UserInfo = CreateInstance("TextButton", {
		Name = "UserInfo",
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 5, 0, 320),
		Size = UDim2.new(0, 85, 0, 25),
		AutoButtonColor = false,
		Text = ""
	}, Body)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 5) }, UserInfo)

	local UserInfoLogo = CreateInstance("ImageLabel", {
		Name = "UserInfoLogo",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 5, 0, 1),
		Size = UDim2.new(0, 23, 0, 23),
		Image = Content
	}, UserInfo)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 5) }, UserInfoLogo)

	CreateInstance("TextLabel", {
		Name = "UserInfoTitle",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 35, 0, 0),
		Size = UDim2.new(0, 40, 0, 25),
		Font = Enum.Font.SourceSansSemibold,
		Text = "User INFO : Freemium Access",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	}, UserInfo)

	local ListTile = CreateInstance("Frame", {
		Name = "ListTile",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 30),
		Size = UDim2.new(1, 0, 0, 2)
	}, Body)

	CreateInstance("UIGradient", {
		Name = "TileGradient",
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 100, 255)),
		})
	}, ListTile)

	local ToggleClose = CreateInstance("Frame", {
		Name = "Toggle",
		BackgroundColor3 = Color3.fromRGB(60, 60, 60),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.0160791595, 0, 0.219451368, 0),
		Size = UDim2.new(0, 40, 0, 40),
		Draggable = true
	}, ScreenGui)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 5) }, ToggleClose)

	local ToggleLogo = CreateInstance("ImageButton", {
		Name = "ToggleLogo",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0, 40, 0, 40),
		Image = "rbxassetid://80812231439203",
		Draggable = true
	}, ToggleClose)

	local Dialog = CreateInstance("Frame", {
		Name = "ComfirmDialog",
		BackgroundColor3 = Color3.fromRGB(18, 18, 18),
		BackgroundTransparency = 0.1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0.5, 0, 0.4, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Visible = false,
		ZIndex = 10
	}, Body)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 10) }, Dialog)
	ApplyUIStroke(Dialog, Color3.fromRGB(255, 255, 255), 0.8, 1)

	CreateInstance("TextLabel", {
		Name = "DialogTitle",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -20, 0.6, 0),
		Position = UDim2.new(0, 10, 0, 10),
		Text = "Are you sure you want to destroy this?",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		Font = Enum.Font.SourceSans,
		TextWrapped = true,
		TextSize = 18,
		ZIndex = 11,
	}, Dialog)

	local ComfirmDialog = CreateInstance("TextButton", {
		Name = "ConfirmButton",
		BackgroundColor3 = Color3.fromRGB(34, 33, 33),
		TextColor3 = Color3.fromRGB(255, 255, 255),
		Size = UDim2.new(0.4, -10, 0.2, 0),
		Position = UDim2.new(0.1, 0, 0.7, 0),
		Text = "Yes",
		Font = Enum.Font.SourceSans,
		TextSize = 16,
		ZIndex = 11
	}, Dialog)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, ComfirmDialog)
	ApplyUIStroke(ComfirmDialog, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)

	local CancelDialog = CreateInstance("TextButton", {
		Name = "CancelButton",
		BackgroundColor3 = Color3.fromRGB(34, 33, 33),
		TextColor3 = Color3.fromRGB(255, 255, 255),
		Size = UDim2.new(0.4, -10, 0.2, 0),
		Position = UDim2.new(0.5, 10, 0.7, 0),
		Text = "No",
		Font = Enum.Font.SourceSans,
		TextSize = 16,
		ZIndex = 11
	}, Dialog)
	CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, CancelDialog)
	ApplyUIStroke(CancelDialog, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)
	local function Center()
		Dialog.Position = UDim2.new(0.5, 0, 0.5, 0)
	end
	Center()

	Body:GetPropertyChangedSignal("Size"):Connect(Center)
	Body:GetPropertyChangedSignal("Position"):Connect(Center)

	MinimizeButton.MouseButton1Click:Connect(function()
		Dialog.Visible = true
	end)
	ComfirmDialog.MouseButton1Click:Connect(function()
		self:DestroyGui(namehub)
	end)
	CancelDialog.MouseButton1Click:Connect(function()
		Dialog.Visible = false
	end)


local isMinimized = false
local centerPosition = Body.Position

ToggleLogo.MouseButton1Click:Connect(function()
    if isMinimized then
		Body:TweenSize(UDim2.new(0, 550, 0, 350),"Out","Quad",0,true)
        MinimizeButton.Text = "+"
    else
        Body:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0,true)
        MinimizeButton.Text = "-"
    end
    isMinimized = not isMinimized
end)

	local dragging = false
	local dragInput, touchPos, framePos
	
	TopFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			touchPos = input.Position
			framePos = Body.Position
	
			local connection
			connection = RunService.RenderStepped:Connect(function()
				if not dragging then
					connection:Disconnect()
					return
				end
	
				if dragInput then
					local delta = dragInput.Position - touchPos
					Body.Position = UDim2.new(
						framePos.X.Scale,
						framePos.X.Offset + delta.X,
						framePos.Y.Scale,
						framePos.Y.Offset + delta.Y
					)
				end
			end)
		end
	end)
	
	TopFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	TopFrame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
	
	local TabContainer = CreateInstance("Frame", {
		Name = "Tab_Container",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 30),
		Position = UDim2.new(0, 0, 0, 36),
		ClipsDescendants = true
	}, Body)

	local TabList = CreateInstance("Frame", {
		Name = "Tab_List",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 2),
		Position = UDim2.new(0, 0, 0, 28)
	}, TabContainer)

	CreateInstance("UIGradient", {
		Name = "TabList_Gradient",
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 100, 255)),
		})
	}, TabList)

	local TabScroll = CreateInstance("ScrollingFrame", {
		Name = "Tab_Scroll",
		Active = true,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 10, 0, 0),
		Size = UDim2.new(1, -20, 0, 30),
		CanvasPosition = Vector2.new(0, 150),
		ScrollBarThickness = 0
	}, TabContainer)

	local TabLayout = CreateInstance("UIListLayout", {
		Name = "Tab_Layout",
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 5)
	}, TabScroll)

	TabLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		TabScroll.CanvasSize = UDim2.new(0, 0 + TabLayout.Padding.Offset + TabLayout.AbsoluteContentSize.X, 0, 0)
	end)

	TabScroll.ChildAdded:Connect(function()
		TabScroll.CanvasSize = UDim2.new(0, 0 + TabLayout.Padding.Offset + TabLayout.AbsoluteContentSize.X, 0, 0)
	end)

	local MainContainer = CreateInstance("Frame", {
		Name = "Main_Container",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0, 590, 0, 300),
		Position = UDim2.new(0, 5, 0, 70)
	}, Body)

	CreateInstance("UIGradient", {
		Name = "ContainerGradients",
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(0.3, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(0.7, Color3.fromRGB(150, 100, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 100, 255)),
		})
	}, MainContainer)


	local Container = CreateInstance("Folder", {
		Name = "Container"
	}, MainContainer)

	local Tabs = {}
	local FirstTab = true

	function Tabs:AddTab(Tab_Title, Tab_Icon)
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
		
		local Tab = CreateInstance("TextButton", {
			Name = "Tab_Items",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 0, 0, 24),
			AutoButtonColor = false,
			Font = Enum.Font.SourceSansSemibold,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 14.000,
			TextXAlignment = Enum.TextXAlignment.Right,
			Text = "" .. Tab_Title
		}, TabScroll)
	
		CreateInstance("UICorner", { CornerRadius = UDim.new(0, 7) }, TabScroll)
	
		CreateInstance("ImageLabel", {
			Name = "Tab_Icon",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 16, 0, 16),
			Position = UDim2.new(0, 5, 0.5, -8),
			Image = IconMapping[Tab_Icon] or ""
		}, Tab)
	
		local TabUnderline = CreateInstance("Frame", {
			Name = "Tab_Underline",
			BackgroundColor3 = Color3.fromRGB(150, 100, 255),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 3),
			Position = UDim2.new(0, 0, 1, 0),
			Visible = false
		}, Tab)
		CreateInstance("UICorner", { CornerRadius = UDim.new(1, 0) }, TabUnderline)
	
		UISettings:Tween(Tab, { Size = UDim2.new(0, 30 + Tab.TextBounds.X, 0, 24) }, .15)
	
		local ScrollFrame = CreateInstance("ScrollingFrame", {
			Name = "ScrollingFrame",
			Active = true,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
			ScrollBarThickness = 0,
			Visible = false
		}, Container)
	
		local ScrollLayout = CreateInstance("UIListLayout", {
			Name = "Scrolling_Layout",
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 19)
		}, ScrollFrame)
	
		ScrollLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollFrame.CanvasSize = UDim2.new(0, ScrollLayout.AbsoluteContentSize.X, 0, 0)
		end)
	
		ScrollFrame.ChildAdded:Connect(function()
			ScrollFrame.CanvasSize = UDim2.new(0, ScrollLayout.AbsoluteContentSize.X, 0, 0)
		end)
	
		if FirstTab then
			FirstTab = false
			Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
			TabUnderline.Visible = true
			ScrollFrame.Visible = true
		end
	
		Tab.MouseButton1Click:Connect(function()
			for _, v in next, TabScroll:GetChildren() do
				if v:IsA("TextButton") then
					v.TextColor3 = Color3.fromRGB(200, 200, 200)
					local line = v:FindFirstChild("Tab_Underline")
					if line then
						line.Visible = false
					end
				end
			end
			Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
			TabUnderline.Visible = true
			for _, v in next, Container:GetChildren() do
				if v.Name == "ScrollingFrame" then
					v.Visible = false
				end
			end
			ScrollFrame.Visible = true
		end)
	
		local Section = {}
		function Section:addSection()

			local SectionScroll = CreateInstance("ScrollingFrame", {
				Name = "SectionScroll",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 260, 0, 245),
				ScrollBarImageColor3 = Color3.fromRGB(150, 100, 255),
				ScrollBarThickness = 3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ClipsDescendants = true,
				ScrollingDirection = Enum.ScrollingDirection.Y 
			}, ScrollFrame)

			local SectionLayout = CreateInstance("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 6)
			}, SectionScroll)

			local function CanvasSize()
				local Height = SectionLayout.AbsoluteContentSize.Y + SectionLayout.Padding.Offset + 5
				SectionScroll.CanvasSize = UDim2.new(0, 0, 0, Height)
			end

			SectionLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(CanvasSize)
			SectionScroll.ChildAdded:Connect(CanvasSize)
			SectionScroll.ChildRemoved:Connect(CanvasSize)

			local isScrolling = false

			SectionScroll.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
					isScrolling = true
				end
			end)
		
			SectionScroll.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
					task.wait(0.2)
					isScrolling = false
				end
			end)

			local Menus = {}
			function Menus:addMenu(Menu_Title)
				local Section = CreateInstance("Frame", {
					Name = "Section",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0.48, 0, 0, 25)
				}, SectionScroll)
			
				local InnerSection = CreateInstance("Frame", {
					Name = "InnerSection",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 0.3,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 5, 0, 0),
					Size = UDim2.new(1, -10, 0, 25)
				}, Section)
			
				CreateInstance("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 18, 18)),
						ColorSequenceKeypoint.new(0.3, Color3.fromRGB(18, 18, 18)),
						ColorSequenceKeypoint.new(0.7, Color3.fromRGB(18, 18, 18)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 18, 18)),
					})
				}, InnerSection)
			
				local SectionListLayout = CreateInstance("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 3)
				}, InnerSection)
			
				CreateInstance("UICorner", { CornerRadius = UDim.new(0, 4) }, InnerSection)
			
				local TitleContainer = CreateInstance("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 20),
				}, InnerSection)
			
				CreateInstance("Frame", {
					BackgroundColor3 = Color3.fromRGB(150, 100, 255),
					BorderSizePixel = 0,
					Size = UDim2.new(0.2, 0, 0, 2),
					Position = UDim2.new(0, 0, 0.5, -1)
				}, TitleContainer)
			
				CreateInstance("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(0.6, 0, 1, 0),
					Position = UDim2.new(0.2, 0, 0, 0),
					Font = Enum.Font.SourceSansSemibold,
					Text = Menu_Title,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Center
				}, TitleContainer)
			
				CreateInstance("Frame", {
					BackgroundColor3 = Color3.fromRGB(150, 100, 255),
					BorderSizePixel = 0,
					Size = UDim2.new(0.2, 0, 0, 2),
					Position = UDim2.new(0.8, 0, 0.5, -1)
				}, TitleContainer)
			
				local function SectionSize()
					local Height = SectionListLayout.AbsoluteContentSize.Y + SectionListLayout.Padding.Offset + 5
					Section.Size = UDim2.new(1, 0, 0, Height)
					InnerSection.Size = UDim2.new(1, -10, 0, Height)
				end
			
				SectionListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(SectionSize)
				SectionSize()

				local Funcs = {}
				function Funcs:addButton(Title_Button, callback)
					callback = callback or function() end
				
					local MainButton = CreateInstance("TextButton", {
						Name = "MainButton",
						BackgroundColor3 = Color3.fromRGB(32, 32, 32),
						BorderSizePixel = 0,
						Size = UDim2.new(1, -15, 0, 30),
						AutoButtonColor = false,
						Font = Enum.Font.Gotham,
						TextColor3 = Color3.fromRGB(220, 220, 220),
						Text = Title_Button,
						TextScaled = true,
						ClipsDescendants = true,
					}, InnerSection)
				
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 6) }, MainButton)
					ApplyUIStroke(MainButton, Color3.fromRGB(180, 180, 180), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local TextSizeConstraint = CreateInstance("UITextSizeConstraint", {
						MaxTextSize = 14,
						MinTextSize = 10
					}, MainButton)
				
					MainButton.MouseEnter:Connect(function()
						MainButton.BackgroundColor3 = Color3.fromRGB(22, 23, 22)
					end)
				
					MainButton.MouseLeave:Connect(function()
						MainButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					end)

					MainButton.MouseButton1Click:Connect(function()
						callback()
					end)
				end
				

				function Funcs:addToggle(toggle_title, default, callback)
					callback = callback or function() end
					default = default or false
				
					local ToggleFrame = CreateInstance("TextButton", {
						BackgroundColor3 = Color3.fromRGB(32, 32, 32),
						Size = UDim2.new(1, -15, 0, 30),
						Position = UDim2.new(0, 5, 0, 0),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						Text = "",
					}, InnerSection)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 6) }, ToggleFrame)
					ApplyUIStroke(ToggleFrame, Color3.fromRGB(200, 200, 200), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local BGFrame = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(35, 35, 45),
						Position = UDim2.new(1, -50, 0.5, -8),
						Size = UDim2.new(0, 36, 0, 16),
						BorderSizePixel = 0
					}, ToggleFrame)
					CreateInstance("UICorner", { CornerRadius = UDim.new(1, 0) }, BGFrame)
					ApplyUIStroke(BGFrame, Color3.fromRGB(180, 180, 180), 0.8, 2, Enum.ApplyStrokeMode.Border)
				
					local SlideButton = CreateInstance("Frame", {
						BackgroundColor3 = default and Color3.fromRGB(120, 85, 255) or Color3.fromRGB(100, 100, 100),
						Position = default and UDim2.new(1, -16, 0, 1) or UDim2.new(0, 1, 0, 1),
						Size = UDim2.new(0, 14, 1, -2),
						BorderSizePixel = 0
					}, BGFrame)
					CreateInstance("UICorner", { CornerRadius = UDim.new(1, 0) }, SlideButton)
				
					local ToggleIcon = CreateInstance("ImageLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 10, 0, 5),
						Image = "rbxassetid://109617819538646",
						ImageColor3 = Color3.fromRGB(220, 220, 220),
						Size = UDim2.new(0, 20, 0, 20)
					}, ToggleFrame)
				
					local ToggleTitle = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 38, 0, 5),
						Size = UDim2.new(1, -90, 0, 20),
						Font = Enum.Font.Gotham,
						Text = toggle_title,
						TextColor3 = default and Color3.fromRGB(180, 140, 255) or Color3.fromRGB(220, 220, 220),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextScaled = true,
					}, ToggleFrame)
				
					local TextSizeConstraint = CreateInstance("UITextSizeConstraint", {
						MaxTextSize = 14,
						MinTextSize = 10
					}, ToggleTitle)
				
					local ToggleState = default
				
					local function UpdateToggle()
						SlideButton:TweenPosition(ToggleState and UDim2.new(1, -16, 0, 1) or UDim2.new(0, 1, 0, 1), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.25, true)
						SlideButton.BackgroundColor3 = ToggleState and Color3.fromRGB(180, 140, 255) or Color3.fromRGB(120, 120, 120)
						ToggleTitle.TextColor3 = ToggleState and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(200, 200, 200)
						ToggleIcon.ImageTransparency = ToggleState and 0 or 0.6
						callback(ToggleState)
					end
				
					UpdateToggle()
				
					local function ToggleInput()
						ToggleState = not ToggleState
						UpdateToggle()
					end
				
					ToggleFrame.Activated:Connect(ToggleInput)
					HoverEffect(ToggleFrame, { BackgroundColor3 = Color3.fromRGB(22, 23, 22) }, { BackgroundColor3 = Color3.fromRGB(32, 32, 32) })
				end
				
				
				function Funcs:addSlider(slider_title, min, max, default, callback)
					callback = callback or function() end
					min = min or 0
					max = max or 100
					default = math.clamp(default or min, min, max)
				
					local SliderFrame = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(32, 32, 32),
						Size = UDim2.new(1, -15, 0, 50),
						Position = UDim2.new(0, 5, 0, 0),
						BorderSizePixel = 0,
					}, InnerSection)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 8) }, SliderFrame)
					ApplyUIStroke(SliderFrame, Color3.fromRGB(180, 180, 180), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local SliderTitle = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -55, 0, 20),
						Position = UDim2.new(0, 5, 0, 5),
						Font = Enum.Font.Gotham,
						Text = slider_title,
						TextSize = 14,
						TextColor3 = Color3.fromRGB(220, 220, 220),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextScaled = true,
					}, SliderFrame)
				
					local TextSizeConstraint = CreateInstance("UITextSizeConstraint", {
						MaxTextSize = 14,
						MinTextSize = 10,
					}, SliderTitle)
				
					local ValueCount = CreateInstance("TextBox", {
						BackgroundColor3 = Color3.fromRGB(35, 35, 45),
						Position = UDim2.new(1, -55, 0, 5),
						Size = UDim2.new(0, 45, 0, 20),
						Font = Enum.Font.Gotham,
						Text = tostring(default),
						TextSize = 14,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextXAlignment = Enum.TextXAlignment.Center,
						ClearTextOnFocus = false,
					}, SliderFrame)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0.4, 0) }, ValueCount)
					ApplyUIStroke(ValueCount, Color3.fromRGB(180, 180, 180), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local BGSlider = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(35, 35, 45),
						Position = UDim2.new(0, 5, 0, 30),
						Size = UDim2.new(1, -15, 0, 13),
					}, SliderFrame)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0.5, 0) }, BGSlider)
					ApplyUIStroke(BGSlider, Color3.fromRGB(180, 180, 180), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local SliderFill = CreateInstance("Frame", {    
						BackgroundColor3 = Color3.fromRGB(150, 100, 255),
						Size = UDim2.new((default - min) / (max - min), 0, 1, 0),
					}, BGSlider)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0.5, 0) }, SliderFill)
				
					local function LiveSlider(InputPosition)
						local RelativePosition = math.clamp((InputPosition - BGSlider.AbsolutePosition.X) / BGSlider.AbsoluteSize.X, 0, 1)
						local value = math.floor((min + (max - min) * RelativePosition) + 0.5)
				
						SliderFill:TweenSize(UDim2.new(RelativePosition, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
						ValueCount.Text = tostring(value)
						callback(value)
					end

					local function SetDefault()
						local RelativePosition = (default - min) / (max - min)
						SliderFill.Size = UDim2.new(RelativePosition, 0, 1, 0)
						ValueCount.Text = tostring(default)
						callback(default)
					end
				
					SetDefault()
				
					local dragging = false
				
					local function onInputChanged(input)
						if dragging then
							LiveSlider(input.Position.X)
						end
					end
				
					local function onInputBegan(input)
						if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true
							LiveSlider(input.Position.X)
						end
					end
				
					local function onInputEnded(input)
						if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
						end
					end

					ValueCount.FocusLost:Connect(function()
						local newValue = tonumber(ValueCount.Text)
						if newValue then
							newValue = math.clamp(newValue, min, max)
							ValueCount.Text = tostring(newValue)
							local RelativePosition = (newValue - min) / (max - min)
							SliderFill:TweenSize(UDim2.new(RelativePosition, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
							callback(newValue)
						else
							SetDefault()
						end
					end)
					BGSlider.InputBegan:Connect(onInputBegan)
					game:GetService("UserInputService").InputChanged:Connect(onInputChanged)
					game:GetService("UserInputService").InputEnded:Connect(onInputEnded)
				end
				function Funcs:addDropdown(title, default, options, callback)
					options = options or {}
					callback = callback or function() end
				
					local defaultIndex = 1
					if type(default) == "number" then
						defaultIndex = math.clamp(default, 1, #options)
					elseif type(default) == "string" then
						for i, v in ipairs(options) do
							if v == default then
								defaultIndex = i
								break
							end
						end
					end
					
					local selectedOption = options[defaultIndex] or "None"
					
					local DropdownFrame = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(32, 32, 32),
						BorderColor3 = Color3.fromRGB(255, 255, 255),
						BorderSizePixel = 1,
						Size = UDim2.new(1, -15, 0, 32)
					}, InnerSection)
					
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 6) }, DropdownFrame)
					ApplyUIStroke(DropdownFrame, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)
					
					local DropdownTitle = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 12, 0, 6),
						Size = UDim2.new(1, -150, 0, 20),
						Font = Enum.Font.GothamBold,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = "  " .. title,
						TextScaled = true,
						ClipsDescendants = true,
					}, DropdownFrame)
					
					local TitleConstraint = CreateInstance("UITextSizeConstraint", {
						MaxTextSize = 16,
						MinTextSize = 8
					}, DropdownTitle)
					
					local SelectedBox = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(50, 50, 50),
						BorderColor3 = Color3.fromRGB(255, 255, 255),
						BorderSizePixel = 1,
						Position = UDim2.new(0, 115, 0, 4),
						Size = UDim2.new(1, -150, 0, 24)
					}, DropdownFrame)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 6) }, SelectedBox)
					ApplyUIStroke(SelectedBox, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)
					
					local function AdjustTitleSize()
						while DropdownTitle.TextBounds.X > (SelectedBox.AbsoluteSize.X - 10) and DropdownTitle.TextSize > 8 do
							DropdownTitle.TextSize = DropdownTitle.TextSize - 1
						end
					end
					
					DropdownTitle:GetPropertyChangedSignal("TextBounds"):Connect(AdjustTitleSize)
					DropdownTitle:GetPropertyChangedSignal("AbsoluteSize"):Connect(AdjustTitleSize)
					
					local SelectedText = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -5, 1, 0),
						Position = UDim2.new(0, 5, 0, 0),
						Font = Enum.Font.GothamSemibold,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextXAlignment = Enum.TextXAlignment.Center,
						Text = selectedOption
					}, SelectedBox)
					
					CreateInstance("UITextSizeConstraint", {
						MaxTextSize = 14,
						MinTextSize = 10
					}, SelectedText)
					
					local DropIcon = CreateInstance("ImageButton", {
						BackgroundTransparency = 1,
						Position = UDim2.new(1, -30, 0, 4),
						Size = UDim2.new(0, 20, 0, 20),
						Image = "rbxassetid://95968409641902"
					}, DropdownFrame)
					
					local DropdownScroll = CreateInstance("Frame", {
						Name = "ScrollDown",
						BackgroundColor3 = Color3.fromRGB(40, 40, 40),
						BorderColor3 = Color3.fromRGB(255, 255, 255),
						BorderSizePixel = 1,
						Size = UDim2.new(0.8, -10, 0, 0),
						ClipsDescendants = true
					}, InnerSection)
					
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 6) }, DropdownScroll)
					ApplyUIStroke(DropdownScroll, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)
					
					local DropdownListLayout = CreateInstance("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 3)
					}, DropdownScroll)
					
					local function RotateIcon(open)
						UISettings:Tween(DropIcon, { Rotation = open and 180 or 0 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
					end
					
					DropIcon.MouseButton1Click:Connect(function()
						local isOpen = DropdownScroll.Size.Y.Offset > 0
						UISettings:Tween(DropdownScroll, { Size = UDim2.new(0.8, -10, 0, isOpen and 0 or DropdownListLayout.AbsoluteContentSize.Y + 5) }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
						RotateIcon(not isOpen)
					end)
					
					for _, value in ipairs(options) do
						local Option = CreateInstance("TextButton", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, 28),
							Font = Enum.Font.Gotham,
							TextSize = 14,
							Text = value,
							TextColor3 = Color3.fromRGB(255, 255, 255)
						}, DropdownScroll)
						HoverEffect(Option, { TextColor3 = Color3.fromRGB(150, 100, 255) }, { TextColor3 = Color3.fromRGB(255, 255, 255) })
					
						Option.MouseButton1Click:Connect(function()
							SelectedText.Text = value
							callback(value)
							UISettings:Tween(DropdownScroll, { Size = UDim2.new(0.8, -10, 0, 0) }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
							RotateIcon(false)
						end)
					end
					AdjustTitleSize()
					callback(selectedOption)
				end
				
				
				function Funcs:addTextbox(text_tile, callback)
					callback = callback or function() end
				
					local TextBoxFrame = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(32, 32, 32),
						BorderSizePixel = 0,
						Size = UDim2.new(1, -15, 0, 25)
					}, InnerSection)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 4) }, TextBoxFrame)
					ApplyUIStroke(TextBoxFrame, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local TextBoxTitle = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 5, 0, 0),
						Size = UDim2.new(0, 150, 0, 25),
						Font = Enum.Font.SourceSansSemibold,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = "   " .. text_tile,
						TextScaled = true,
					}, TextBoxFrame)
				
					local TextBox = CreateInstance("TextBox", {
						BackgroundColor3 = Color3.fromRGB(30, 30, 30),
						BorderSizePixel = 0,
						Position = UDim2.new(0, 160, 0, 2),
						Size = UDim2.new(0, 70, 0, 20),
						Font = Enum.Font.SourceSansSemibold,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 12,
						TextTransparency = 0.5,
						Text = "Enter Here",
						TextScaled = true,
						ClearTextOnFocus = false
					}, TextBoxFrame)
				
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 5) }, TextBox)
					ApplyUIStroke(TextBox, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)
				
					local function Placeholder()
						if TextBox.Text == "" then
							TextBox.Text = "Enter Here"
							TextBox.TextTransparency = 0.5
						else
							TextBox.TextTransparency = 0
						end
					end
				
					TextBox.Focused:Connect(function()
						if TextBox.Text == "Enter Here" then
							TextBox.Text = ""
							TextBox.TextTransparency = 0
						end
					end)

					TextBox.FocusLost:Connect(function()
						Placeholder()
						if TextBox.Text ~= "Enter Here" and TextBox.Text ~= "" then
							callback(TextBox.Text)
							UISettings:Tween(TextBox, { TextColor3 = Color3.fromRGB(150, 100, 255) }, .1)
							UISettings:Tween(TextBoxTitle, { TextColor3 = Color3.fromRGB(150, 100, 255) }, .1)
							wait(.1)
							UISettings:Tween(TextBox, { TextColor3 = Color3.fromRGB(255, 255, 255) }, .5)
							UISettings:Tween(TextBoxTitle, { TextColor3 = Color3.fromRGB(255, 255, 255) }, .5)
						end
					end)
				
					TextBox:GetPropertyChangedSignal("Text"):Connect(function()
						if TextBox.Text ~= "Enter Here" and TextBox.Text ~= "" then
							TextBox.TextTransparency = 0
						end
					end)
				
					return TextBox
				end
				
			function Funcs:addLabel(title_text, description_text)
					local LabelFunc = {}

					local PaddingBetweenLabels = 10
					local PaddingFrame = 15

					local LabelFrame = CreateInstance("Frame", {
						BackgroundColor3 = Color3.fromRGB(30, 30, 30),
						BorderSizePixel = 0,
						Size = UDim2.new(1, -20, 0, 50),
						ClipsDescendants = true
					}, InnerSection)
					CreateInstance("UICorner", { CornerRadius = UDim.new(0, 6) }, LabelFrame)
					ApplyUIStroke(LabelFrame, Color3.fromRGB(255, 255, 255), 0.8, 1, Enum.ApplyStrokeMode.Border)

					local TitleFrame = CreateInstance("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 20),
						Position = UDim2.new(0, 0, 0, 0)
					}, LabelFrame)

					local Title = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -10, 1, 0),
						Position = UDim2.new(0, 5, 0, 7),
						Font = Enum.Font.SourceSansBold,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 14,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Center,
						Text = title_text or "Default Title"
					}, TitleFrame)

					local DescFrame = CreateInstance("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 20),
						Position = UDim2.new(0, 0, 0, 30)
					}, LabelFrame)

					local Description = CreateInstance("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -10, 1, 0),
						Position = UDim2.new(0, 5, 0, 0),
						Font = Enum.Font.SourceSans,
						TextColor3 = Color3.fromRGB(200, 200, 200),
						TextSize = 12,
						TextWrapped = false,
						TextXAlignment = Enum.TextXAlignment.Left,
						Text = (description_text or "Default description."):gsub("\\n", "\n")
					}, DescFrame)

					local function AdjustFrameHeight()
						task.wait()

						local TitleHeight = Title.TextBounds.Y
						local DescriptionHeight = Description.TextBounds.Y

						TitleFrame.Size = UDim2.new(1, 0, 0, TitleHeight)
						DescFrame.Position = UDim2.new(0, 0, 0, TitleHeight + PaddingBetweenLabels)
						DescFrame.Size = UDim2.new(1, 0, 0, DescriptionHeight)

						local TotalHeight = TitleHeight + DescriptionHeight + PaddingBetweenLabels + PaddingFrame
						LabelFrame.Size = UDim2.new(1, -20, 0, TotalHeight)
					end

					Title:GetPropertyChangedSignal("TextBounds"):Connect(AdjustFrameHeight)
					Description:GetPropertyChangedSignal("TextBounds"):Connect(AdjustFrameHeight)

					AdjustFrameHeight()
					function LabelFunc:RefreshTitle(NewTitle)
						if Title.Text ~= NewTitle then
							Title.Text = NewTitle:gsub("\\n", "\n")
							AdjustFrameHeight()
						end
					end

					function LabelFunc:RefreshDesc(NewDesc)
						if Description.Text ~= NewDesc then
							Description.Text = NewDesc:gsub("\\n", "\n")
							AdjustFrameHeight()
						end
					end

					return LabelFunc
				end
				return Funcs
			end


			return Menus
		end

		return Section
	end

	return Tabs
end
return Library
