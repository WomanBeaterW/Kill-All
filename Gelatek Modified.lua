local Global = (getgenv and getgenv()) or shared
if not isfile and isfolder and writefile and (getsynasset or getcustomasset) then
    warn("Exploit will not run custom songs")
end
if isfile and isfolder and writefile and (getsynasset or getcustomasset) and (not isfolder("GelatekHub")) then
	local Bindable = Instance.new("BindableFunction")
	local function Copy(e)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/packages/AudioPack.lua"))()
		Bindable:Destroy()
	end
	Bindable.OnInvoke = Copy
	game.StarterGui:SetCore("SendNotification",{
		Title = "Audio Package (45 MB) ";
		Text = "Click here to download audio package for every script automatically, otherwise ignore";
		Duration = 10;
		Callback = Bindable,
		Button1 = "Download Data";
	})
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/packages/FunctionPack.lua"))()
Global.GelatekHubConfig = {
	["Permanent Death"] = false,
	["Torso Fling"] = false,
	["Bullet Enabled"] = false,
	["Enable Collisions"] = false,
	["Keep Hats On Head"] = false,
	["Headless On Perma"] = false,
	["Anti Void"] = false,
	["Anti Void Offset"] = 75
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/lib/UILibrary.lua"))()
local Main = Library:Create("Gelatek Hub - V1.0.5", "Thanks for using the hub! :3", Color3.fromRGB(50, 168, 82))
local UserInputService = game:GetService("UserInputService")
if UserInputService.TouchEnabled then
	game.StarterGui:SetCore("SendNotification",{
		Title = "MOBILE USER ALERT! ";
		Text = "This hub was never really meant to support mobile executors for a reasons, check discord for info.";
		Duration = 5
	})
end

local READTHIS = Main:MakeTab("READ THIS PLS")
do
	READTHIS:MakeLabel("HATS ARE OPTIONAL!!!!!")
	READTHIS:MakeLabel("no hats = fake hats")
	READTHIS:MakeLabel("ppl cant see fake hats")
	READTHIS:MakeLabel("")
	READTHIS:MakeLabel("mobile bugs a lot for this hub")
	READTHIS:MakeLabel("dont expect fixes for mobile execs")
end
	
local Home = Main:MakeTab("Home")
local Reanimate = Main:MakeTab("Reanimate")
local FreeScripts = Main:MakeTab("Free Scripts")
local HatScripts = Main:MakeTab("Hat Scripts")
local Animations = Main:MakeTab("Animations")
local Credits = Main:MakeTab("Credits")
local Hats = Main:MakeTab("Hats")
Home:MakeLabel("Hello! Thanks for using the hub.")
Home:MakeButton("Copy Discord Invite", function()
	setclipboard("https://discord.gg/fx5BszFmMY")
end)

local function BetterStopScript()
	StopScript()
	task.wait(0.25)
	StopScript()
end

Reanimate:MakeButton("Reanimate", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/lib/Reanimate.lua"))()
end)
Reanimate:MakeToggle("Permanent Death", function(Bool)
	Global.GelatekHubConfig["Permanent Death"] = Bool
end)
Reanimate:MakeToggle("Torso Fling", function(Bool)
	Global.GelatekHubConfig["Torso Fling"] = Bool
end)
Reanimate:MakeToggle("Bullet Enabled", function(Bool)
	Global.GelatekHubConfig["Bullet Enabled"] = Bool
end)
Reanimate:MakeToggle("Enable Collisions", function(Bool)
	Global.GelatekHubConfig["Enable Collisions"] = Bool
end)
Reanimate:MakeToggle("Keep Hats On Head", function(Bool)
	Global.GelatekHubConfig["Keep Hats On Head"] = Bool
end)
Reanimate:MakeToggle("Headless On Perma", function(Bool)
	Global.GelatekHubConfig["Headless On Perma"] = Bool
end)
Reanimate:MakeToggle("Anti Void", function(Bool)
	Global.GelatekHubConfig["Anti Void"] = Bool
end)
Reanimate:MakeSlider("Anti Void Offset", 75, 200, function(Value)
	Global.GelatekHubConfig["Anti Void Offset"] = Value
end)
FreeScripts:MakeButton(" - [ Stop Script ] - ", BetterStopScript)
HatScripts:MakeButton(" - [ Stop Script ] - ", BetterStopScript)
Animations:MakeButton(" - [ Stop Animation ] - ", BetterStopScript)
do -- [[ Animations ]] --
	Animations:MakeTextBox("Custom Anim", function(Text)
		PlayAnimation(Text)
	end)
	Animations:MakeButton("--- Combat Warriors ---", function()
		PlayAnimation(0)
	end)	
	Animations:MakeButton("Free Default", function()
		PlayAnimation(9233675270)
	end)
	Animations:MakeButton("Free JumpingJackets", function()
		PlayAnimation(6888618024)
	end)
	Animations:MakeButton("Free Sit", function()
		PlayAnimation(6753559181)
	end)
	Animations:MakeButton("--- Combat Warriors Dances ---", function()
		PlayAnimation(0)
	end)	
	Animations:MakeButton("Dance Engineer", function()
		PlayAnimation(6816571022)
	end)
	Animations:MakeButton("Dance GangnamStyle", function()
		PlayAnimation(6816572217)
	end)
	Animations:MakeButton("Dance Monkey", function()
		PlayAnimation(6816573173)
	end)
	Animations:MakeButton("Dance Russia", function()
		PlayAnimation(6816574330)
	end)
	Animations:MakeButton("Dance SideHustle", function()
		PlayAnimation(6816589362)
	end)
	Animations:MakeButton("Dance Smug", function()
		PlayAnimation(6816755513)
	end)
	Animations:MakeButton("Dance Sponge", function()
		PlayAnimation(6888617209)
	end)
	Animations:MakeButton("Dance Yoink", function()
		PlayAnimation(6888616431)
	end)
	Animations:MakeButton("--- Combat Warriors Toxic ---", function()
		PlayAnimation(0)
	end)	
	Animations:MakeButton("Toxic L Dance", function()
		PlayAnimation(6753754362)
	end)
	Animations:MakeButton("Toxic Laugh", function()
		PlayAnimation(6816756595)
	end)
	Animations:MakeButton("Toxic BringItOn", function()
		PlayAnimation(6816591367)
	end)
	Animations:MakeButton("Toxic FacePalm", function()
		PlayAnimation(6816592792)
	end)
	Animations:MakeButton("Toxic Flex", function()
		PlayAnimation(6816593788)
	end)
	Animations:MakeButton("Toxic Confused", function()
		PlayAnimation(6888613637)
	end)
	Animations:MakeButton("Toxic CantHear", function()
		PlayAnimation(6888612549)
	end)
	Animations:MakeButton("Toxic BrushShoulders", function()
		PlayAnimation(6888611390)
	end)
	Animations:MakeButton("--- Combat Warriors Respect ---", function()
		PlayAnimation(9233675270)
	end)	
	Animations:MakeButton("Respect Clap", function()
		PlayAnimation(6816759538)
	end)
	Animations:MakeButton("Respect Kneel", function()
		PlayAnimation(6816760384)
	end)
	Animations:MakeButton("Respect Salute", function()
		PlayAnimation(6816764534)
	end)
	Animations:MakeButton("Respect Bow", function()
		PlayAnimation(6816757869)
	end)
	Animations:MakeButton("Respect BowIdle", function()
		PlayAnimation(6816758800)
	end)
	Animations:MakeButton("Respect Sasagayo", function()
		PlayAnimation(6826035578)
	end)
	Animations:MakeButton("Respect PayRespects", function()
		PlayAnimation(6888619878)
	end)
	Animations:MakeButton("Respect HandsBehind", function()
		PlayAnimation(6888619028)
	end)
	Animations:MakeButton("Respect Cry", function()
		PlayAnimation(6888614640)
	end)
	Animations:MakeButton("--- SuS Emotes ---", function()
		PlayAnimation(0)
	end)
	Animations:MakeButton("BlowJob", function()
		PlayAnimation(4963373273)
	end)
	Animations:MakeButton("Bang", function()
		PlayAnimation(4966833843)
	end)
	Animations:MakeButton("Lay Down Bang", function()
		PlayAnimation(4966879039)
	end)
	Animations:MakeButton("Sit Down", function()
		PlayAnimation(4966880188)
	end)
	Animations:MakeButton("Pushups", function()
		PlayAnimation(4966881089)
	end)
	Animations:MakeButton("Bend Down", function()
		PlayAnimation(4966882047)
	end)
	Animations:MakeButton("Lay Down", function()
		PlayAnimation(4966882955)
	end)	
	Animations:MakeButton("Groundbend Bang", function()
		PlayAnimation(4966886065)
	end)
	Animations:MakeButton("--- New Animations ---", function()
		PlayAnimation(0)
	end)
	Animations:MakeButton("Shuffle", function()
		PlayAnimation(3485013176)
	end)
	Animations:MakeButton("Clean Groove", function()
		PlayAnimation(4776734129)
	end)
	Animations:MakeButton("Penis Music", function()
		PlayAnimation(4776560183)
	end)
	Animations:MakeButton("Penis Music 2.0", function()
		PlayAnimation(4719919809)
	end)
	Animations:MakeButton("Thriller", function()
		PlayAnimation(4846220052)
	end)
	Animations:MakeButton("Thriller 2.0", function()
		PlayAnimation(4699820365)
	end)
	Animations:MakeButton("Peter Parker", function()
		PlayAnimation(4776598075)
	end)
	Animations:MakeButton("Carson Shearer", function()
		PlayAnimation(5806573931)
	end)
	Animations:MakeButton("Rewind", function()
		PlayAnimation(5011408603)
	end)
	Animations:MakeButton("Skibidi", function()
		PlayAnimation(4835795413)
	end)
	Animations:MakeButton("Anthony Shuffle", function()
		PlayAnimation(4719919809)
	end)
	Animations:MakeButton("Spongebob", function()
		PlayAnimation(4896926493)
	end)
	Animations:MakeButton("I dont Know sorry.", function()
		PlayAnimation(4837749916)
	end)
	Animations:MakeButton("Side Hustles (MORE CLEAN)", function()
		PlayAnimation(4863897442)
	end)
	Animations:MakeButton("Peise The Lord", function()
		PlayAnimation(4837753372)
	end)
	Animations:MakeButton("Cruisin", function()
		PlayAnimation(5079952034)
	end)	
	Animations:MakeButton("--- Original Gelatek Emotes ---", function()
		PlayAnimation(0)
	end)	
	Animations:MakeButton("Freestylin'", function()
		PlayAnimation(4432024917, "GelatekHub/Animations/Freestylin.mp3")
	end)
	Animations:MakeButton("Floss", function()
		PlayAnimation(4812941481, "GelatekHub/Animations/Floss.mp3")
	end)
	Animations:MakeButton("Smooth Moves", function()
		PlayAnimation(4900539662, "GelatekHub/Animations/Smooth Moves.mp3")
	end)
	Animations:MakeButton("Aerostepping", function()
		PlayAnimation(4776588732, "GelatekHub/Animations/Aerostepping.mp3")
	end)
	Animations:MakeButton("Electro Swing", function()
		PlayAnimation(3485013176, "GelatekHub/Animations/Electro Swing.mp3")
	end)
	Animations:MakeButton("Minecraft Parrot", function()
		PlayAnimation(4300228160, "GelatekHub/Animations/Parrot.mp3")
	end)
	Animations:MakeButton("CaramellDansen", function()
		PlayAnimation(6607554805, "GelatekHub/Animations/CaramellDansen.mp3")
	end)
	Animations:MakeButton("Breakdown", function()
		PlayAnimation(4558409610, "GelatekHub/Animations/Breakdown.mp3")
	end)
	Animations:MakeButton("Orange Justice", function()
		PlayAnimation(3262592866, "GelatekHub/Animations/Orange Justice.mp3")
	end)
	Animations:MakeButton("Smug", function()
		PlayAnimation(3450125501, "GelatekHub/Animations/Smug.mp3")
	end)
	Animations:MakeButton("Crabby", function()
		PlayAnimation(3643129020, "GelatekHub/Animations/Crabby.mp3")
	end)
	Animations:MakeButton("Conga", function()
		PlayAnimation(4572096542, "GelatekHub/Animations/Conga.mp3")
	end)
	Animations:MakeButton("Dream Feet", function()
		PlayAnimation(4300218011, "GelatekHub/Animations/Dream Feet.mp3")
	end)
	Animations:MakeButton("Kazotsky Kick", function()
		PlayAnimation(4846209506)
	end)
	Animations:MakeButton("Radical", function()
		PlayAnimation(4686555525)
	end)
	Animations:MakeButton("Take The L", function()
		PlayAnimation(4827299133, "GelatekHub/Animations/Take The L.mp3")
	end)
	Animations:MakeButton("Laughing", function()
		PlayAnimation(4846000379, "GelatekHub/Animations/Laughing.mp3")
	end)
	Animations:MakeButton("Drip", function()
		PlayAnimation(4959380041, "GelatekHub/Animations/Drip.mp3")
	end)
end

do -- [[ Scripts ]] --
	HatScripts:MakeButton("Dual Ultima", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/DualUltima.lua"))()
	end)
	HatScripts:MakeButton("The Hotline", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/TheHotline.lua"))()
	end)
	HatScripts:MakeButton("Attack Rifle", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/AttackRifle.lua"))()
	end)
	HatScripts:MakeButton("Carnage", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/TheCarnage.lua"))()
	end)
	HatScripts:MakeButton("Neptunian V", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/NeptunianV.lua"))()
	end)
	HatScripts:MakeButton("Zenith Battle Rifle-70", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/ZenithAttackRifle.lua"))()
	end)
	HatScripts:MakeButton("Chips", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/TheChips.lua"))()
	end)
	HatScripts:MakeButton("Void Scythe", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/VoidScythe.lua"))()
	end)
	HatScripts:MakeButton("Blue-Black Sniper", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/TheSniper.lua"))()
	end)
	HatScripts:MakeButton("Banzai Bazooka", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/BanzaiBazooka.lua"))()
	end)
	HatScripts:MakeButton("Voodoo Doll", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/VoodooDoll.lua"))()
	end)
	HatScripts:MakeButton("Quenox", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/Quenox.lua"))()
	end)
	HatScripts:MakeButton("Goner", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/Goner.lua"))()
	end)
	HatScripts:MakeButton("[BUGS] Lightning Cannon V4", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/LightningCannon.lua"))()
	end)
	
	FreeScripts:MakeButton("Gale Fighter", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/GaleFighter.lua"))()
	end)
	FreeScripts:MakeButton("Ender.", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/Ender.lua"))()
	end)
	FreeScripts:MakeButton("Cadacus.", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/scripts/Cadacus.lua"))()
	end)
end

do -- [[ Hats ]] --
	Hats:MakeButton("Copy R6 Bullet Hat", function()
		setclipboard("48474313")
	end)
	Hats:MakeButton("Copy R15 Bullet Hat", function()
		setclipboard("5973840187")
	end)
	Hats:MakeButton("Copy Dual Ultima Hats", function()
		setclipboard("4524991457,4820152700")
	end)
	Hats:MakeButton("Copy The Hotline Hat", function()
		setclipboard("4962455546")
	end)
	Hats:MakeButton("Copy Attack Rifle Hat", function()
		setclipboard("6202087882")
	end)
	Hats:MakeButton("Copy Carnage Hats", function()
		setclipboard("5134896593,5410674378")
	end)
	Hats:MakeButton("Copy Neptunian V Hat", function()
		setclipboard("4506945409")
	end)
	Hats:MakeButton("Copy Zenith Rifle Hats", function()
		setclipboard("4962510729,4962455546")
	end)
	Hats:MakeButton("Copy Chips Hat", function()
		setclipboard("4964938812")
	end)
	Hats:MakeButton("Copy Blue-Black Sniper Hat", function()
		setclipboard("5063578607")
	end)
	Hats:MakeButton("Copy Void Scythe Hat", function()
		setclipboard("5414429551")
	end)
	Hats:MakeButton("Copy Banzai Bazooka Hat", function()
		setclipboard("4466171123")
	end)
	Hats:MakeButton("Copy Voodoo Doll Hats", function()
		setclipboard("7218265043,7170689370")
	end)
	Hats:MakeButton("Copy Quenox Hats", function()
		setclipboard("4820152700,4794315940,4524991457,4315489767,4458601937,4506945409")
	end)
	Hats:MakeButton("Copy Goner Hat", function()
		setclipboard("6869866014")
	end)
	Hats:MakeButton("Copy Lightning Cannon V4 Hat", function()
		setclipboard("4623059912")
	end)
end

do -- [[ Credits ]] --
	Credits:MakeLabel("Gui: Gelatek")
	Credits:MakeLabel("Reanimate: Gelatek")
	Credits:MakeLabel("Anim ID Player: Gelatek / Derek")
	Credits:MakeLabel("Converts: Gelatek / Emper")
end
