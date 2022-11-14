local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/DarksGitHub/darkk.xyz-Library/main/lib.lua")()

local win = DiscordLib:Window("Darkk.xyz Hub")

local serv = win:Server("Scripts", "")

local btns = serv:Channel("Universal")

btns:Button(
    "Universal ESP",
    function()
        DiscordLib:Notification("Notification", "Loaded ESP!", "Okay!")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArcherDevelopment/LUNAESP/main/lunaesp.lua"))()
    end
)

btns:Seperator()

btns:Button(
    "Universal TriggerBot",
    function()
        DiscordLib:Notification("Notification", "Loaded TriggerBot! Aim At Someone And It Will Shoot For You!", "Okay!")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DarksGitHub/RBXTriggerBot/main/Main.lua"))()
    end
)

local tgls = serv:Channel("Arsenal")

tgls:Toggle(
    "Auto-Farm",
    false,
    function(bool)
        print(bool)
    end
)

local sldrs = serv:Channel("Snipers")

local sldr =
    sldrs:Slider(
    "Slide me!",
    0,
    1000,
    400,
    function(t)
        print(t)
    end
)

sldrs:Button(
    "Change to 50",
    function()
        sldr:Change(50)
    end
)

local drops = serv:Channel("Dropdowns")

local drop =
    drops:Dropdown(
    "Pick me!",
    {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"},
    function(bool)
        print(bool)
    end
)

drops:Button(
    "Clear",
    function()
        drop:Clear()
    end
)

drops:Button(
    "Add option",
    function()
        drop:Add("Option")
    end
)

local clrs = serv:Channel("Colorpickers")

clrs:Colorpicker(
    "ESP Color",
    Color3.fromRGB(255, 1, 1),
    function(t)
        print(t)
    end
)

local textbs = serv:Channel("Textboxes")

textbs:Textbox(
    "Gun power",
    "Type here!",
    true,
    function(t)
        print(t)
    end
)

local lbls = serv:Channel("Labels")

lbls:Label("This is just a label.")

local bnds = serv:Channel("Binds")

bnds:Bind(
    "Kill bind",
    Enum.KeyCode.RightShift,
    function()
        print("Killed everyone!")
    end
)

serv:Channel("by dawid#7205")

win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
