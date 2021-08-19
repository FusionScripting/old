local function DestroyUI()
    if game.CoreGui:FindFirstChild("ew87ygt5f") ~= nil then
        game.CoreGui["ew87ygt5f"]:Destroy()
    end
end

DestroyUI()

local Library = {}

function Library:CreateWindow(windowname,windowinfo,windowinfotextsize,togglekey)
    local ew87ygt5f = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local FrameCorner = Instance.new("UICorner")
    local TabContainer = Instance.new("Frame")
    local TabContainerListLayout = Instance.new("UIListLayout")
    local PageContainerCorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local Info = Instance.new("ImageLabel")
    local InfoTitle = Instance.new("TextLabel")
    local InfoTitleCorner = Instance.new("UICorner")
    local PageContainer = Instance.new("Frame")
    local PageContainerCorner_2 = Instance.new("UICorner")
    local PageFolder = Instance.new("Folder")

    ew87ygt5f.Name = "ew87ygt5f"
    ew87ygt5f.Parent = game.CoreGui
    ew87ygt5f.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ew87ygt5f.ResetOnSpawn = false

    Frame.Parent = ew87ygt5f
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.445016086, 0, 0.0655542314, 0)
    Frame.Size = UDim2.new(0, 527, 0, 322)

    FrameCorner.Name = "FrameCorner"
    FrameCorner.Parent = Frame

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Frame
    TabContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0.0208728649, 0, 0.0931676999, 0)
    TabContainer.Size = UDim2.new(0, 116, 0, 281)

    TabContainerListLayout.Name = "TabContainerListLayout"
    TabContainerListLayout.Parent = TabContainer
    TabContainerListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabContainerListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabContainerListLayout.Padding = UDim.new(0, 5)

    PageContainerCorner.Name = "PageContainerCorner"
    PageContainerCorner.Parent = TabContainer

    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.0208728649, 0, 0, 0)
    Title.Size = UDim2.new(0, 474, 0, 30)
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = windowname
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 18.000
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Info.Name = "Info"
    Info.Parent = Frame
    Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Info.BackgroundTransparency = 1.000
    Info.BorderSizePixel = 0
    Info.Position = UDim2.new(0.931688786, 0, 0.00931677036, 0)
    Info.Size = UDim2.new(0, 24, 0, 24)
    Info.Image = "http://www.roblox.com/asset/?id=6294110112"

    InfoTitle.Name = "InfoTitle"
    InfoTitle.Parent = Info
    InfoTitle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    InfoTitle.BackgroundTransparency = 1.000
    InfoTitle.Position = UDim2.new(2.20833325, 0, -0.125, 0)
    InfoTitle.Size = UDim2.new(0, 128, 0, 30)
    InfoTitle.Font = Enum.Font.GothamSemibold
    InfoTitle.Text = windowinfo or "UI Made by Mapple"
    InfoTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    InfoTitle.TextSize = windowinfotextsize or 11
    InfoTitle.TextTransparency = 1

    InfoTitleCorner.Name = "InfoTitleCorner"
    InfoTitleCorner.Parent = InfoTitle

    PageContainer.Name = "PageContainer"
    PageContainer.Parent = Frame
    PageContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    PageContainer.BorderSizePixel = 0
    PageContainer.Position = UDim2.new(0.258064508, 0, 0.0931676999, 0)
    PageContainer.Size = UDim2.new(0, 379, 0, 281)

    PageContainerCorner_2.Name = "PageContainerCorner"
    PageContainerCorner_2.Parent = PageContainer

    PageFolder.Name = "PageFolder"
    PageFolder.Parent = PageContainer

    Info.MouseEnter:Connect(function()
		InfoTitle.BackgroundTransparency = 0.8
		wait(0.05)
		InfoTitle.BackgroundTransparency = 0.5
		Info.ImageColor3 = Color3.fromRGB(34, 130, 202)
		wait(0.05)
		InfoTitle.BackgroundTransparency = 0
		InfoTitle.TextTransparency = 0
	end)

    Info.MouseLeave:Connect(function()
		InfoTitle.BackgroundTransparency = 0.5
		wait(0.05)
		InfoTitle.BackgroundTransparency = 0.8
		Info.ImageColor3 = Color3.fromRGB(255,255,255)
		wait(0.05)
		InfoTitle.BackgroundTransparency = 1
		InfoTitle.TextTransparency = 1
	end)

    function onKeyPress(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode[togglekey] then
        if Frame.Visible == false then
            Frame.Visible = true
        else
            Frame.Visible = false
        end
        end
        end
        
        game:GetService("UserInputService").InputBegan:connect(onKeyPress)

    local UserInputService = game:GetService("UserInputService")
	
	local gui = Frame
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
    end)

    local FrameVisible = true

    local PageYep = {}

    function PageYep:addPage(pagename,scrollsize,visible,elementspacing)
        local TabButton = Instance.new("TextButton")
        local TabButtonCorner = Instance.new("UICorner")
        local Page = Instance.new("ScrollingFrame")
        local PageLayout = Instance.new("UIListLayout")

        TabButton.Name = "TabButton"
        TabButton.Parent = TabContainer
        TabButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        TabButton.BorderSizePixel = 0
        TabButton.Position = UDim2.new(0.0129310349, 0, 0, 0)
        TabButton.Size = UDim2.new(0, 114, 0, 26)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.TextSize = 14.000
        TabButton.Text = pagename or "nil"

        TabButtonCorner.Name = "TabButtonCorner"
        TabButtonCorner.Parent = TabButton

        Page.Name = "Page"
        Page.Parent = PageFolder
        Page.Active = true
        Page.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Page.BackgroundTransparency = 1.000
        Page.BorderSizePixel = 0
        Page.Size = UDim2.new(0, 379, 0, 281)
        Page.CanvasSize = UDim2.new(0,0,scrollsize,0) or UDim2.new(0,0,4,0)
        Page.ScrollBarThickness = 5

        PageLayout.Name = "PageLayout"
        PageLayout.Parent = Page
        PageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0,elementspacing) or UDim.new(0,6)

        for i,v in pairs(PageFolder:GetChildren()) do 
            v.Visible = false
        end

        TabButton.MouseButton1Down:Connect(function()
            for i,v in pairs(PageFolder:GetChildren()) do 
                v.Visible = false
            end
            wait(0.02)
            Page.Visible = true
            TabButton.TextTransparency = 0
            TabButton.TextSize = 14
            for i,v in pairs(PageContainer:GetChildren()) do 
                if v:IsA("GuiButton") and v ~= TabButton then 
                    v.TextTransparency = 0.3
                end
            end

        end)

        if visible == true then 
            TabButton.TextTransparency = 0
            for i,v in pairs(PageFolder:GetChildren()) do 
                if v:IsA("Frame") and v ~= Page then 
                    v.Visible = false
                end
            end
        else
            TabButton.TextTransparency = 0.3
        end
        
        TabButton.MouseEnter:Connect(function()
            TabButton.BackgroundColor3 = Color3.fromRGB(10,10,10)
        end)
        
        TabButton.MouseLeave:Connect(function()
            TabButton.BackgroundColor3 = Color3.fromRGB(15,15,15)
        end)
        -- end

        local PageElements = {}

        function PageElements:addLabel(labelname)
            local LabelHolder = Instance.new("Frame")
            local LabelHolderCorner = Instance.new("UICorner")
            local LabelTitle = Instance.new("TextLabel")
            local LabelTitlePadding = Instance.new("UIPadding")

            LabelHolder.Name = "LabelHolder"
            LabelHolder.Parent = Page
            LabelHolder.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            LabelHolder.BorderSizePixel = 0
            LabelHolder.Position = UDim2.new(0.0620052777, 0, 0, 0)
            LabelHolder.Size = UDim2.new(0, 347, 0, 26)

            LabelHolderCorner.CornerRadius = UDim.new(0.0500000007, 0)
            LabelHolderCorner.Name = "LabelHolderCorner"
            LabelHolderCorner.Parent = LabelHolder

            LabelTitle.Name = "LabelTitle"
            LabelTitle.Parent = LabelHolder
            LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.BackgroundTransparency = 1.000
            LabelTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
            LabelTitle.BorderSizePixel = 0
            LabelTitle.Size = UDim2.new(0, 345, 0, 32)
            LabelTitle.Font = Enum.Font.GothamSemibold
            LabelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.TextSize = 14.000
            LabelTitle.Text = labelname
            LabelTitle.TextXAlignment = Enum.TextXAlignment.Left

            LabelTitlePadding.Name = "LabelTitlePadding"
            LabelTitlePadding.Parent = LabelTitle
            LabelTitlePadding.PaddingLeft = UDim.new(0, 10)
            LabelTitlePadding.PaddingBottom = UDim.new(0, 5)

            LabelHolder.Name = LabelTitle.Text.."_LABEL"
        end 

        function PageElements:addButton(buttonname,callback)
            local ButtonHolder = Instance.new("Frame")
            local ButtonHolderCorner = Instance.new("UICorner")
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")
            local ButtonPadding = Instance.new("UIPadding")

            local callback = callback or function () end

            ButtonHolder.Name = "ButtonHolder"
            ButtonHolder.Parent = Page
            ButtonHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ButtonHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)
            ButtonHolder.BorderSizePixel = 0
            ButtonHolder.Position = UDim2.new(0.04353562, 0, 0.113879003, 0)
            ButtonHolder.Size = UDim2.new(0, 346, 0, 26)

            ButtonHolderCorner.CornerRadius = UDim.new(0, 5)
            ButtonHolderCorner.Name = "ButtonHolderCorner"
            ButtonHolderCorner.Parent = ButtonHolder

            Button.Name = "Button"
            Button.Parent = ButtonHolder
            Button.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            Button.BorderSizePixel = 0
            Button.Size = UDim2.new(0, 346, 0, 26)
            Button.Font = Enum.Font.GothamSemibold
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.Text = buttonname
            Button.TextXAlignment = Enum.TextXAlignment.Left

            ButtonCorner.CornerRadius = UDim.new(0, 5)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            ButtonPadding.Name = "ButtonPadding"
            ButtonPadding.Parent = Button
            ButtonPadding.PaddingLeft = UDim.new(0, 10)

            ButtonHolder.Name = Button.Text.."_BUTTON"

            Button.MouseButton1Down:Connect(function()
                pcall(callback)
            end)
        end

        function PageElements:addToggle(togglename,callback)
            local ToggleHolder = Instance.new("Frame")
            local ToggleHolderCorner = Instance.new("UICorner")
            local ToggleText = Instance.new("TextLabel")
            local ToggleTextPadding = Instance.new("UIPadding")
            local ToggleButton = Instance.new("TextButton")
            local ToggleButtonCorner = Instance.new("UICorner")

            local callback = callback or function() end
            local ToggleEnabled = false

            ToggleHolder.Name = "ToggleHolder"
            ToggleHolder.Parent = Page
            ToggleHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ToggleHolder.BorderSizePixel = 0
            ToggleHolder.Size = UDim2.new(0, 347, 0, 26)

            ToggleHolderCorner.CornerRadius = UDim.new(0.0500000007, 0)
            ToggleHolderCorner.Name = "ToggleHolderCorner"
            ToggleHolderCorner.Parent = ToggleHolder

            ToggleText.Name = "ToggleText"
            ToggleText.Parent = ToggleHolder
            ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.BackgroundTransparency = 1.000
            ToggleText.BorderSizePixel = 0
            ToggleText.Size = UDim2.new(0, 347, 0, 26)
            ToggleText.Font = Enum.Font.GothamSemibold
            ToggleText.Text = togglename
            ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.TextSize = 14.000
            ToggleText.TextXAlignment = Enum.TextXAlignment.Left

            ToggleTextPadding.Name = "ToggleTextPadding"
            ToggleTextPadding.Parent = ToggleText
            ToggleTextPadding.PaddingLeft = UDim.new(0, 10)

            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = ToggleHolder
            ToggleButton.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            ToggleButton.BorderSizePixel = 0
            ToggleButton.Position = UDim2.new(0.922190368, 0, 0.115384616, 0)
            ToggleButton.Size = UDim2.new(0, 19, 0, 19)
            ToggleButton.Font = Enum.Font.SourceSans
            ToggleButton.Text = ""
            ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleButton.TextSize = 14.000

            ToggleButtonCorner.CornerRadius = UDim.new(0, 5)
            ToggleButtonCorner.Name = "ToggleButtonCorner"
            ToggleButtonCorner.Parent = ToggleButton

            ToggleHolder.Name = ToggleText.Text.."_TOGGLE"

            ToggleButton.MouseButton1Down:Connect(function()
                ToggleEnabled = not ToggleEnabled
                if ToggleEnabled then 
                    ToggleButton.BackgroundColor3 = Color3.fromRGB(34, 130, 202)
                else
                    ToggleButton.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
                end
                pcall(callback,ToggleEnabled)
            end)
        end

        function PageElements:addSlider(slidername,minvalue,maxvalue,callback)
            local SliderHolder = Instance.new("Frame")
            local SliderTitle = Instance.new("TextLabel")
            local SliderTitlePadding = Instance.new("UIPadding")
            local SliderNumber = Instance.new("TextLabel")
            local SliderNumberPadding = Instance.new("UIPadding")
            local SliderButton = Instance.new("TextButton")
            local SliderButtonCorner = Instance.new("UICorner")
            local SliderTrail = Instance.new("Frame")
            local SliderTrailCorner = Instance.new("UICorner")
            local SliderHolderCorner = Instance.new("UICorner")

            local callback = callback or function() end

            SliderHolder.Name = "SliderHolder"
            SliderHolder.Parent = Page
            SliderHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            SliderHolder.BorderSizePixel = 0
            SliderHolder.Position = UDim2.new(0.0422163606, 0, 0.341637015, 0)
            SliderHolder.Size = UDim2.new(0, 345, 0, 52)

            SliderTitle.Name = "SliderTitle"
            SliderTitle.Parent = SliderHolder
            SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.BackgroundTransparency = 1.000
            SliderTitle.BorderSizePixel = 0
            SliderTitle.Position = UDim2.new(0.00144092215, 0, 0, 0)
            SliderTitle.Size = UDim2.new(0, 229, 0, 26)
            SliderTitle.Font = Enum.Font.GothamSemibold
            SliderTitle.Text = slidername
            SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderTitle.TextSize = 14.000
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

            SliderTitlePadding.Name = "SliderTitlePadding"
            SliderTitlePadding.Parent = SliderTitle
            SliderTitlePadding.PaddingLeft = UDim.new(0, 10)

            SliderNumber.Name = "SliderNumber"
            SliderNumber.Parent = SliderHolder
            SliderNumber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderNumber.BackgroundTransparency = 1.000
            SliderNumber.BorderSizePixel = 0
            SliderNumber.Position = UDim2.new(0.776811421, 0, 0, 0)
            SliderNumber.Size = UDim2.new(0, 78, 0, 26)
            SliderNumber.Font = Enum.Font.GothamSemibold
            SliderNumber.Text = "16"
            SliderNumber.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderNumber.TextSize = 14.000
            SliderNumber.TextXAlignment = Enum.TextXAlignment.Right

            SliderNumberPadding.Name = "SliderNumberPadding"
            SliderNumberPadding.Parent = SliderNumber
            SliderNumberPadding.PaddingRight = UDim.new(0, 10)

            SliderButton.Name = "SliderButton"
            SliderButton.Parent = SliderHolder
            SliderButton.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            SliderButton.BorderSizePixel = 0
            SliderButton.Position = UDim2.new(0.0405797102, 0, 0.596153855, 0)
            SliderButton.Size = UDim2.new(0, 314, 0, 7)
            SliderButton.Font = Enum.Font.SourceSans
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000

            SliderButtonCorner.Name = "SliderButtonCorner"
            SliderButtonCorner.Parent = SliderButton

            SliderTrail.Name = "SliderTrail"
            SliderTrail.Parent = SliderButton
            SliderTrail.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            SliderTrail.BorderSizePixel = 0
            SliderTrail.Size = UDim2.new(0, 10, 0, 7)

            SliderTrailCorner.Name = "SliderTrailCorner"
            SliderTrailCorner.Parent = SliderTrail

            SliderHolderCorner.CornerRadius = UDim.new(0, 5)
            SliderHolderCorner.Name = "SliderHolderCorner"
            SliderHolderCorner.Parent = SliderHolder

            SliderHolder.Name = SliderTitle.Text.."_SLIDER"

            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value;

            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 314) *SliderTrail.AbsoluteSize.X) + tonumber(minvalue)) or 0
                    callback(SliderNumber.Text)
                SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, 314), 0, 7)
                moveconnection = mouse.Move:Connect(function()
                    SliderNumber.Text = Value
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 314) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue))
                        callback(SliderNumber.Text)
                        SliderHolder.BackgroundColor3 = Color3.fromRGB(14,14,14)
                    SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, 314), 0, 7)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 314) * SliderTrail.AbsoluteSize.X) + tonumber(minvalue))
                            callback(SliderNumber.Text)
                            SliderHolder.BackgroundColor3 = Color3.fromRGB(17,17,17)
                        SliderTrail.Size = UDim2.new(0, math.clamp(mouse.X - SliderTrail.AbsolutePosition.X, 0, 314), 0, 7)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
            --
        end

        function PageElements:addTextBox(textboxname,textboxdefault,callback)
            local TextboxHolder = Instance.new("Frame")
            local TextboxTitle = Instance.new("TextLabel")
            local TextboxTitlePadding = Instance.new("UIPadding")
            local Textbox = Instance.new("TextBox")
            local TextboxCorner = Instance.new("UICorner")
            local TextboxHolderCorner = Instance.new("UICorner")

            local callback = callback or function() end

            TextboxHolder.Name = "TextboxHolder"
            TextboxHolder.Parent = Page
            TextboxHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            TextboxHolder.BorderSizePixel = 0
            TextboxHolder.Position = UDim2.new(-0.0316622704, 0, 0, 0)
            TextboxHolder.Size = UDim2.new(0, 346, 0, 26)

            TextboxTitle.Name = "TextboxTitle"
            TextboxTitle.Parent = TextboxHolder
            TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle.BackgroundTransparency = 1.000
            TextboxTitle.Size = UDim2.new(0, 187, 0, 26)
            TextboxTitle.Font = Enum.Font.GothamSemibold
            TextboxTitle.Text = textboxname
            TextboxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle.TextSize = 14.000
            TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

            TextboxTitlePadding.Name = "TextboxTitlePadding"
            TextboxTitlePadding.Parent = TextboxTitle
            TextboxTitlePadding.PaddingLeft = UDim.new(0, 10)

            Textbox.Name = "Textbox"
            Textbox.Parent = TextboxHolder
            Textbox.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            Textbox.BorderSizePixel = 0
            Textbox.Position = UDim2.new(0.621379018, 0, 0.115384616, 0)
            Textbox.Size = UDim2.new(0, 123, 0, 20)
            Textbox.Font = Enum.Font.GothamSemibold
            Textbox.Text = textboxdefault or "nil"
            Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
            Textbox.TextSize = 14.000

            TextboxCorner.CornerRadius = UDim.new(0, 5)
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.Parent = Textbox

            TextboxHolderCorner.CornerRadius = UDim.new(0, 5)
            TextboxHolderCorner.Name = "TextboxHolderCorner"
            TextboxHolderCorner.Parent = TextboxHolder

            TextboxHolder.Name = TextboxTitle.Text.."_TEXTBOX"

            Textbox.Focused:Connect(function()
                TextboxHolder.BackgroundColor3 = Color3.fromRGB(10,10,10)
            end)
            
            Textbox.FocusLost:Connect(function()
                TextboxHolder.BackgroundColor3 = Color3.fromRGB(17,17,17)
                callback(Textbox.Text)
            end)
        end

        function PageElements:addDropdown(dropdownname,list,scrollsize,callback)
            local DropdownHolder = Instance.new("Frame")
            local DropdownHolderCorner = Instance.new("UICorner")
            local DropdownTitle = Instance.new("TextLabel")
            local DropdownTitlePadding = Instance.new("UIPadding")
            local DropdownButton = Instance.new("TextButton")
            local DropdownIcon = Instance.new("ImageLabel")
            local DropdownContainer = Instance.new("Frame")
            local DropdownContainerCorner = Instance.new("UICorner")
            local DropdownOptionContainer = Instance.new("ScrollingFrame")
            local DropdownOptionContainerLayout = Instance.new("UIListLayout")

            local callback = callback or function() end
            local DropDownEnabled = false

            DropdownHolder.Name = "DropdownHolder"
            DropdownHolder.Parent = Page
            DropdownHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownHolder.BorderSizePixel = 0
            DropdownHolder.Size = UDim2.new(0, 347, 0, 26)

            DropdownHolderCorner.CornerRadius = UDim.new(0, 5)
            DropdownHolderCorner.Name = "DropdownHolderCorner"
            DropdownHolderCorner.Parent = DropdownHolder

            DropdownTitle.Name = "DropdownTitle"
            DropdownTitle.Parent = DropdownHolder
            DropdownTitle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownTitle.BackgroundTransparency = 1.000
            DropdownTitle.BorderSizePixel = 0
            DropdownTitle.Size = UDim2.new(0, 274, 0, 26)
            DropdownTitle.Font = Enum.Font.GothamSemibold
            DropdownTitle.Text = dropdownname
            DropdownTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTitle.TextSize = 14.000
            DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

            DropdownTitlePadding.Name = "DropdownTitlePadding"
            DropdownTitlePadding.Parent = DropdownTitle
            DropdownTitlePadding.PaddingLeft = UDim.new(0, 10)

            DropdownButton.Name = "DropdownButton"
            DropdownButton.Parent = DropdownHolder
            DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownButton.BackgroundTransparency = 1.000
            DropdownButton.BorderSizePixel = 0
            DropdownButton.Size = UDim2.new(0, 346, 0, 26)
            DropdownButton.Font = Enum.Font.SourceSans
            DropdownButton.Text = ""
            DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownButton.TextSize = 14.000

            DropdownIcon.Name = "DropdownIcon"
            DropdownIcon.Parent = DropdownButton
            DropdownIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownIcon.BackgroundTransparency = 1.000
            DropdownIcon.BorderSizePixel = 0
            DropdownIcon.Position = UDim2.new(0.893063784, 0, 0.192307696, 0)
            DropdownIcon.Size = UDim2.new(0, 24, 0, 16)
            DropdownIcon.Image = "rbxassetid://3944690667"
            DropdownIcon.ScaleType = Enum.ScaleType.Fit

            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = DropdownHolder
            DropdownContainer.Active = true
            DropdownContainer.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownContainer.BorderSizePixel = 0
            DropdownContainer.ClipsDescendants = true
            DropdownContainer.Position = UDim2.new(0.0028818443, 0, 1, 0)
            DropdownContainer.Size = UDim2.new(0, 346, 0, 4)
            DropdownContainer.Visible = false

            DropdownContainerCorner.CornerRadius = UDim.new(0, 5)
            DropdownContainerCorner.Name = "DropdownContainerCorner"
            DropdownContainerCorner.Parent = DropdownContainer

            DropdownOptionContainer.Name = "DropdownOptionContainer"
            DropdownOptionContainer.Parent = DropdownContainer
            DropdownOptionContainer.Active = true
            DropdownOptionContainer.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            DropdownOptionContainer.BorderSizePixel = 0
            DropdownOptionContainer.Size = UDim2.new(0, 346, 0, 8)
            DropdownOptionContainer.Visible = false
            DropdownOptionContainer.CanvasSize = UDim2.new(0, 0,scrollsize, 0) or UDim2.new(0,0,5,0)
            DropdownOptionContainer.ScrollBarThickness = 5

            DropdownOptionContainerLayout.Name = "DropdownOptionContainerLayout"
            DropdownOptionContainerLayout.Parent = DropdownOptionContainer
            DropdownOptionContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
            DropdownOptionContainerLayout.Padding = UDim.new(0, 5)

            -- Dropdown Toggle 
             
            local function makeelements(bool)
                for i,v in pairs(Page:GetChildren()) do 
                    if v:IsA("Frame") and v ~= DropdownHolder then 
                        v.Visible = bool
                    end
                end
            end

            DropdownButton.MouseButton1Down:Connect(function()
                if DropDownEnabled == false then 
                    DropDownEnabled = true
                    makeelements(false)
                    DropdownContainer.Visible = true
                    DropdownContainer:TweenSize(UDim2.new(0, 346,0, 115),"Out","Linear",0.3)
                    DropdownIcon.ImageColor3 = Color3.fromRGB(34, 130, 202)
                    wait(0.3)
                    DropdownOptionContainer.Visible = true
                    DropdownOptionContainer:TweenSize(UDim2.new(0, 346,0, 106),"Out","Linear",0.2)
                    wait(0.09)
                    Page.CanvasPosition = Vector2.new(0,0)
                    DropdownContainer:TweenSize(UDim2.new(0, 346,0, 115),"Out","Linear",0.1) -- check
                    DropdownOptionContainer:TweenSize(UDim2.new(0, 346,0, 106),"Out","Linear",0.1)-- check
                else
                    DropDownEnabled = false
                    DropdownIcon.ImageColor3 = Color3.fromRGB(255,255,255)
                    DropdownOptionContainer:TweenSize(UDim2.new(0, 346,0, 8),"Out","Linear",0.2)
                    wait(0.2)
                    DropdownOptionContainer.Visible = false
                    DropdownContainer:TweenSize(UDim2.new(0, 346,0, 4),"Out","Linear",0.3)
                    wait(0.3)
                    makeelements(true)
                    DropdownContainer.Visible = false
                    wait(0.09)
                    DropdownContainer:TweenSize(UDim2.new(0, 346,0, 4),"Out","Linear",0.1) -- check
                    DropdownOptionContainer:TweenSize(UDim2.new(0, 346,0, 8),"Out","Linear",0.1) -- check
                end
            end)	

            for i,v in pairs(list) do  
                local Option = Instance.new("TextButton")
                local OptionCorner = Instance.new("UICorner")

                Option.Name = "Option"
                Option.Parent = DropdownOptionContainer
                Option.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                Option.BorderColor3 = Color3.fromRGB(15, 15, 15)
                Option.Position = UDim2.new(0.0173611119, 0, 0, 0)
                Option.Size = UDim2.new(0, 341, 0, 22)
                Option.AutoButtonColor = false
                Option.Font = Enum.Font.GothamSemibold
                Option.Text = v
                Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                Option.TextSize = 14
                
                OptionCorner.CornerRadius = UDim.new(0, 6)
                OptionCorner.Name = "OptionCorner"
                OptionCorner.Parent = Option

                Option.MouseEnter:Connect(function()
                    Option.BackgroundColor3 = Color3.fromRGB(10,10,10)
                end)
                
                Option.MouseLeave:Connect(function()
                    Option.BackgroundColor3 = Color3.fromRGB(15,15,15)
                end)
                
                Option.MouseButton1Down:Connect(function()
                    for i,v in pairs(Option.Parent:GetChildren()) do
                        if v:IsA("GuiButton") and v ~= Option then
                            v.TextColor3 = Color3.fromRGB(255,255,255)
                        end
                    end
                    Option.TextColor3 = Color3.fromRGB(34, 130, 202)
                end)

                Option.MouseButton1Down:Connect(function()
                    DropDownEnabled = false
                    DropdownIcon.ImageColor3 = Color3.fromRGB(255,255,255)
                    DropdownOptionContainer:TweenSize(UDim2.new(0, 346,0, 8),"Out","Linear",0.2)
                    wait(0.2)
                    DropdownOptionContainer.Visible = false
                    DropdownContainer:TweenSize(UDim2.new(0, 346,0, 4),"Out","Linear",0.3)
                    callback(v)
                    wait(0.3)
                    makeelements(true)
                    DropdownContainer.Visible = false
                    DropdownContainer:TweenSize(UDim2.new(0, 346,0, 4),"Out","Linear",0.1) -- check
                    DropdownOptionContainer:TweenSize(UDim2.new(0, 346,0, 8),"Out","Linear",0.1) -- check
                end) -- droplist ended
            end
        end
        --
        return PageElements
    end
    return PageYep
end
return Library
