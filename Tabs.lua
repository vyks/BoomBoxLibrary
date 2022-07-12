wait()
local SectionFrames = game.CoreGui.NordUi.NordScheme.SectionFrames
TsGet = game:GetService("TweenService")
getgenv().decline = ("<font color='rgb(210, 60, 65)'>%s</font>")
getgenv().accept = ("<font color='rgb(80, 220, 95)'>%s</font>")

local Page = {}
function Page:Section(name)
    name = name or "no name"
    getgenv().MaxPage = getgenv().MaxPage + 1

    local ButtonSection = Instance.new("Frame")
    ButtonSection.Name = name
    ButtonSection.Parent = game.CoreGui.NordUi.NordScheme.ButtonsFrame
    ButtonSection.AnchorPoint = Vector2.new(0.5, 0.5)
    ButtonSection.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
    ButtonSection.BackgroundTransparency = 1.000
    ButtonSection.BorderColor3 = Color3.fromRGB(216, 222, 233)
    ButtonSection.BorderSizePixel = 0
    ButtonSection.Position = UDim2.new(0.5, 0, 0.5, 0)
    ButtonSection.Size = UDim2.new(0, 100, 0, 195)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = ButtonSection
    UIListLayout.Padding = UDim.new(0, 7)

    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = ButtonSection
    UIPadding.PaddingBottom = UDim.new(0, 5)
    UIPadding.PaddingLeft = UDim.new(0, 5)
    UIPadding.PaddingTop = UDim.new(0, 5)

    local Tabs = {}

    function Tabs:Tab(properties)
        local properties = properties or {}

        local SectionButton = Instance.new("TextButton")
        SectionButton.Name = "SectionButton"
        SectionButton.Parent = ButtonSection
        SectionButton.AnchorPoint = Vector2.new(0.5, 0.5)
        SectionButton.BackgroundColor3 = Color3.fromRGB(76, 86, 106)
        SectionButton.BackgroundTransparency = 1.000
        SectionButton.BorderColor3 = Color3.fromRGB(76, 86, 106)
        SectionButton.Position = UDim2.new(0, 47, 0, 25)
        SectionButton.Size = UDim2.new(0, 84, 0, 30)
        SectionButton.Font = Enum.Font.SourceSans
        SectionButton.Text = ""
        SectionButton.TextColor3 = Color3.fromRGB(216, 222, 233)
        SectionButton.TextSize = 14.000

        local Frame = Instance.new("Frame")
        Frame.Parent = SectionButton
        Frame.AnchorPoint = Vector2.new(0.5, 0.5)
        Frame.BackgroundColor3 = Color3.fromRGB(76, 86, 106)
        Frame.BackgroundTransparency = 1.000
        Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
        Frame.Size = UDim2.new(0, 84, 0, 30)
        Frame.ZIndex = 0

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = Frame

        local Button1Name = Instance.new("TextLabel")
        Button1Name.Name = "Button1Name"
        Button1Name.Parent = Frame
        Button1Name.AnchorPoint = Vector2.new(0.5, 0.5)
        Button1Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button1Name.BackgroundTransparency = 1.000
        Button1Name.Position = UDim2.new(0.5, 0, 0.5, 0)
        Button1Name.Size = UDim2.new(0, 84, 0, 30)
        Button1Name.ZIndex = 0
        Button1Name.Font = Enum.Font.Gotham
        Button1Name.Text = properties.Name
        Button1Name.TextColor3 = Color3.fromRGB(216, 222, 233)
        Button1Name.TextSize = 14.000

        local WindowFrame = Instance.new("Frame")
        WindowFrame.Name = properties.Name .. "Window"
        WindowFrame.Parent = SectionFrames
        WindowFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        WindowFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowFrame.BackgroundTransparency = 1.000
        WindowFrame.Size = UDim2.new(0, 230, 0, 210)
        WindowFrame.ZIndex = 0

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = WindowFrame
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.Padding = UDim.new(0, 5)

        local D = Instance.new("Frame")
        D.Name = "D"
        D.Parent = WindowFrame
        D.AnchorPoint = Vector2.new(0.5, 0.5)
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BackgroundTransparency = 1.000
        D.BorderColor3 = Color3.fromRGB(27, 42, 53)
        D.Position = UDim2.new(0.5, 0, 0.40476191, 0)
        D.Size = UDim2.new(0, 200, 0, 50)

        local UIGridLayout = Instance.new("UIGridLayout")
        UIGridLayout.Parent = D
        UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIGridLayout.CellPadding = UDim2.new(0.025, 0, 0.05, 0)
        UIGridLayout.CellSize = UDim2.new(0.475, 0, 0, 25)
        UIGridLayout.FillDirectionMaxCells = 2

        --script

        SectionButton.MouseEnter:Connect(
            function()
                if SectionButton.Frame.BackgroundTransparency < 0.5 then
                    wait()
                else
                    TsGet:Create(
                        SectionButton.Frame,
                        TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end
            end
        )
        SectionButton.MouseLeave:Connect(
            function()
                if SectionButton.Frame.BackgroundTransparency < 0.5 then
                    wait()
                else
                    TsGet:Create(
                        SectionButton.Frame,
                        TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                        {BackgroundTransparency = 1}
                    ):Play()
                end
            end
        )

        SectionButton.MouseButton1Click:Connect(
            function()
                getgenv().Support = false

                SectionFrames.UIPageLayout:JumpTo(SectionFrames[properties.Name .. "Window"])
                for i, v in next, ButtonSection:GetChildren() do
                    if v:IsA("TextButton") then
                        TsGet:Create(v.Frame, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {BackgroundTransparency = 1}):Play(

                        )
                    end
                end
                TsGet:Create(
                    SectionButton.Frame,
                    TweenInfo.new(0.5, Enum.EasingStyle.Sine),
                    {BackgroundTransparency = 0}
                ):Play()
            end
        )

        local TabItems = {}
        function TabItems:Execute(name, func)
            name = name or "Not Given"
            func = func or function()
                end

            local B = Instance.new("TextButton")
            B.Name = "B"
            B.Parent = WindowFrame
            B.AnchorPoint = Vector2.new(0.5, 0.5)
            B.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
            B.BackgroundTransparency = 1.000
            B.ClipsDescendants = true
            B.Position = UDim2.new(0.5, 0, 0.0690476224, 0)
            B.Size = UDim2.new(0, 200, 0, 25)
            B.Font = Enum.Font.Gotham
            B.Text = ""
            B.TextColor3 = Color3.fromRGB(216, 222, 233)
            B.TextSize = 14.000

            local Background = Instance.new("Frame")
            Background.Name = "Background"
            Background.Parent = B
            Background.AnchorPoint = Vector2.new(0.5, 0.5)
            Background.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
            Background.Position = UDim2.new(0.5, 0, 0.5, 0)
            Background.Size = UDim2.new(0, 200, 0, 25)
            Background.ZIndex = 0

            local UICorner = Instance.new("UICorner")
            UICorner.Parent = Background

            local Text = Instance.new("TextLabel")
            Text.Name = "Text"
            Text.Parent = B
            Text.AnchorPoint = Vector2.new(0.5, 0.5)
            Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Text.BackgroundTransparency = 1.000
            Text.Position = UDim2.new(0.5, 0, 0.5, 0)
            Text.Size = UDim2.new(0, 200, 0, 25)
            Text.ZIndex = 0
            Text.Font = Enum.Font.Gotham
            Text.Text = name
            Text.TextColor3 = Color3.fromRGB(216, 222, 233)
            Text.TextSize = 14.000
            local function ExecuteScript() -- B.ExecuteScript
                local script = Instance.new("LocalScript", B)

                local p = script.Parent

                local o = script.Parent.Background
                local TsGet = game:GetService("TweenService")
                local tweeninfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine)

                p.MouseButton1Down:Connect(
                    function()
                        local tween =
                            TsGet:Create(
                            o,
                            tweeninfo,
                            {
                                BackgroundTransparency = 0.5
                            }
                        ):Play()
                    end
                )
                p.MouseButton1Up:Connect(
                    function()
                        local tween =
                            TsGet:Create(
                            o,
                            tweeninfo,
                            {
                                BackgroundTransparency = 0
                            }
                        ):Play()
                    end
                )
                p.MouseButton1Click:Connect(
                    function()
                        func()
                    end
                )
            end
            coroutine.wrap(ExecuteScript)()
        end
        function TabItems:Desc(text)
            text = text or "No text given"

            local C = Instance.new("TextLabel")
            C.Name = "C"
            C.Parent = WindowFrame
            C.AnchorPoint = Vector2.new(0.5, 0.5)
            C.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
            C.BorderColor3 = Color3.fromRGB(216, 222, 233)
            C.Position = UDim2.new(0.5, 0, 0.842857122, 0)
            C.Size = UDim2.new(0, 200, 0, 50)
            C.Font = Enum.Font.Gotham
            C.Text = text
            C.TextColor3 = Color3.fromRGB(216, 222, 233)
            C.TextSize = 13.000
            C.TextWrapped = true
        end
        function TabItems:ClipBoard(name, func)
            name = name or "no name"
            func = func or function()
                end

            local ClipBoard = Instance.new("TextButton")
            ClipBoard.Name = "Discord"
            ClipBoard.Parent = D
            ClipBoard.AnchorPoint = Vector2.new(0.5, 0.5)
            ClipBoard.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
            ClipBoard.BackgroundTransparency = 1.000
            ClipBoard.ClipsDescendants = true
            ClipBoard.Position = UDim2.new(0, 115, 0, 104)
            ClipBoard.Size = UDim2.new(0.475, 0, 0, 25)
            ClipBoard.Font = Enum.Font.Gotham
            ClipBoard.Text = ""
            ClipBoard.TextColor3 = Color3.fromRGB(216, 222, 233)
            ClipBoard.TextSize = 14.000

            local Background = Instance.new("Frame")
            Background.Name = "Background"
            Background.Parent = ClipBoard
            Background.AnchorPoint = Vector2.new(0.5, 0.5)
            Background.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
            Background.Position = UDim2.new(0.5, 0, 0.5, 0)
            Background.Size = UDim2.new(1, 0, 1, 0)
            Background.ZIndex = 0

            local UICorner = Instance.new("UICorner")
            UICorner.Parent = Background

            local Text = Instance.new("TextLabel")
            Text.Name = "Text"
            Text.Parent = ClipBoard
            Text.AnchorPoint = Vector2.new(0.5, 0.5)
            Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Text.BackgroundTransparency = 1.000
            Text.Position = UDim2.new(0.5, 0, 0.5, 0)
            Text.Size = UDim2.new(1, 0, 1, 0)
            Text.ZIndex = 0
            Text.Font = Enum.Font.Gotham
            Text.Text = name
            Text.TextColor3 = Color3.fromRGB(216, 222, 233)
            Text.TextSize = 14.000

            --script

            ClipBoard.MouseButton1Down:Connect(
                function()
                    local tween =
                        TsGet:Create(
                        Background,
                        TweenInfo.new(0.1, Enum.EasingStyle.Sine),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end
            )
            ClipBoard.MouseButton1Up:Connect(
                function()
                    local tween =
                        TsGet:Create(
                        Background,
                        TweenInfo.new(0.1, Enum.EasingStyle.Sine),
                        {BackgroundTransparency = 0}
                    ):Play()
                end
            )
            ClipBoard.MouseButton1Click:Connect(
                function()
                    func()
                end
            )
        end
        function TabItems:Executors(properties)
            properties = properties or {}

            local A = Instance.new("TextLabel")
            A.Name = "A"
            A.Parent = WindowFrame
            A.AnchorPoint = Vector2.new(0.5, 0.5)
            A.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
            A.BorderColor3 = Color3.fromRGB(216, 222, 233)
            A.BorderSizePixel = 0
            A.Position = UDim2.new(0.5, 0, 0.0714285746, 0)
            A.Size = UDim2.new(0, 200, 0, 30)
            A.Font = Enum.Font.Gotham
            A.TextColor3 = Color3.fromRGB(216, 222, 233)
            A.TextSize = 13.000
            A.TextWrapped = true
            A.TextYAlignment = Enum.TextYAlignment.Top
            A.RichText = true
            A.Text = "Supported Executors: "

            --script

            local descrim = 0
            for i, v in next, properties do
                if descrim == 0 then
                    local old = A.Text
                    local new = string.format(old .. "%s", v)
                    A.Text = new
                    descrim = descrim + 1
                else
                    local old = A.Text
                    local new = string.format(old .. ", %s", v)
                    A.Text = new
                end
            end
            A.Size = UDim2.new(0, 200, 0, A.TextBounds.Y)
        end
        return TabItems
    end
    return Tabs
end
return Page
