local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("灾难时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "欢迎使用联合脚本"; Text ="有什么脚本都可以和我说"; Duration = 2; })
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengY4/XINXIWANG/refs/heads/main/Fwngui.lua"))();  
local win = ui:new("Amilkeskx脚本")

local UITab1 = win:Tab("『信息』",'7733701455')

local about = UITab1:section("查看作者信息",true)

about:Label("殺脚本中心")
about:Label("支持Amilkeskx死妈")
about:Button("点击复制Amilkeskx的名字",function()
setclipboard("3814097685")
end)
about:Label("我操你妈Amilkeskx")
about:Button("点击复制主群",function()
setclipboard("877812092")
end)
about:Label("Amilkeskx大人机")
about:Button("点击廾死Amilkeskx",function()
setclipboard("1007844131")
end)
about:Label("风御大帅哥")
about:Button("点击复制风御QQ号",function()
setclipboard("144654048")
end)
about:Label("作者：搬运工")
about:Label("UI是我借别人的，重要的事说三遍")
about:Label("UI是我借别人的，重要的事说三遍")
about:Label("UI是我借别人的，重要的事说三遍")

local about = UITab1:section("查看玩家信息",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Button("怕点不到才加的",function()

end)

local UITab2 = win:Tab("『公告』",'6035145364')

local about = UITab2:section("『公告』",true)

about:Label("感谢所有支持搬运脚本的人")
about:Label("UI是我借别人的，重要的事说三遍")
about:Label("UI是我借别人的，重要的事说三遍")
about:Label("UI是我借别人的，重要的事说三遍")     

local UITab1 = win:Tab("通用",'7733765398')

local about = UITab1:section("『通用』",true)
about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)
about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
end)
about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)
