local miniWindow
local cycle, cyclepos

local function updatecycleinfo(i)
	miniWindow.cycle.xpos:SetText(tostring(cycle[i][3]))
	miniWindow.cycle.ypos:SetText(tostring(cycle[i][4]))
	miniWindow.cycle.mobName:SetText(cycle[i][6])
	miniWindow.cycle.mobArea:SetText(cycle[i][2])
	miniWindow.cycle.mobName.Event.LeftDown="/target "..cycle[i][6]
	if cycle[i][7] == true then
		miniWindow.cycle.mobName:SetFontColor(0, 1, 0)
	elseif cycle[i][7] == false then
		miniWindow.cycle.mobName:SetFontColor(1, 0.5, 0.5)
	else
		miniWindow.cycle.mobName:SetFontColor(1, 1, 1)
	end
end

local function showZoneMenu()
	for i, label in ipairs(miniWindow.zoneMenu) do
		label:SetVisible(true)
	end
	miniWindow.cycle:SetVisible(false)
end

local function hideZoneMenu()
	for i, label in ipairs(miniWindow.zoneMenu) do
		label:SetVisible(false)
	end
end

-- fill mobs to the cycle array in 2 passes. First pass, add all mobs
-- that have index numbers, 2nd pass, add those that don't. So we can
-- use indexes where we have them defined, but we don't need to define
-- them in all zones.

local function zoneMenuClick(zone)
	hideZoneMenu()
	local lang=Inspect.System.Language()
	cycle={}
--	print ("zone='"..zone.."'")
	for name,info in pairs(RareDar_rares[lang]) do
		if (info ~= false) and (zone == info[1]) and info[5] then
			local tmpinfo=info
			tmpinfo[6]=name
			cycle[tmpinfo[5]]=tmpinfo
		end
	end
	for name,info in pairs(RareDar_rares[lang]) do
		if (info ~= false) and (zone == info[1]) and not info[5] then
			local tmpinfo=info
			tmpinfo[6]=name
			table.insert(cycle, tmpinfo)
		end
	end
	cyclepos=1
	updatecycleinfo(cyclepos)
	miniWindow.cycle:SetVisible(true)
end

local function cycleLeft()
	if RareDar.secureMode then return end
	if cyclepos==1 then cyclepos=#cycle else cyclepos=cyclepos-1 end
	updatecycleinfo(cyclepos)
end

local function cycleRight()
	if RareDar.secureMode then return end
	if cyclepos==#cycle then cyclepos=1 else cyclepos=cyclepos+1 end
	updatecycleinfo(cyclepos)
end

local function buildMiniWindow()
	miniWindow=UI.CreateFrame("Frame", "RareDar", context)
	miniWindow:SetPoint("TOPLEFT", UIParent, "TOPLEFT", RareDar.xpos, RareDar.ypos)
	miniWindow:SetWidth(150)
	miniWindow:SetHeight(50)
	miniWindow:SetBackgroundColor(0.1, 0.1, 0.1, 0.8)
	miniWindow:SetVisible(true)
	miniWindow:SetSecureMode("restricted")
	miniWindow.state={}
	function miniWindow.Event:LeftDown()
		if RareDar.secureMode then return end
		miniWindow.state.mouseDown = true
		local mouse = Inspect.Mouse()
		miniWindow.state.startX = miniWindow:GetLeft()
		miniWindow.state.startY = miniWindow:GetTop()
		miniWindow.state.mouseStartX = mouse.x
		miniWindow.state.mouseStartY = mouse.y
		miniWindow:SetBackgroundColor(0.4, 0.4, 0.4, 0.8)
	end

	function miniWindow.Event:MouseMove()
		if miniWindow.state.mouseDown then
			local mouse = Inspect.Mouse()
			RareDar.xpos=mouse.x - miniWindow.state.mouseStartX + miniWindow.state.startX
			RareDar.ypos=mouse.y - miniWindow.state.mouseStartY + miniWindow.state.startY
			miniWindow:SetPoint("TOPLEFT", UIParent, "TOPLEFT",
				RareDar.xpos, RareDar.ypos)
		end
	end

	function miniWindow.Event:LeftUp()
		if miniWindow.state.mouseDown then
			miniWindow.state.mouseDown = false
			miniWindow:SetBackgroundColor(0.1, 0.1, 0.1, 0.8)
		end
	end

	function miniWindow.Event:RightClick()
		if miniWindow.zoneMenu[1]:GetVisible()==true then
			hideZoneMenu()
		else
			showZoneMenu()
		end
	end

	miniWindow.title = UI.CreateFrame("Text", "title", miniWindow)
	miniWindow.title:SetText("RareDar")
	miniWindow.title:SetPoint("CENTER", miniWindow, "TOPLEFT", 100, 25)
	miniWindow.title:SetFontSize(17)
	miniWindow.title:SetWidth(100);

	miniWindow.itembtn = UI.CreateFrame("Texture", "itembtn", miniWindow)
	miniWindow.itembtn:SetPoint("TOPLEFT", miniWindow, "TOPLEFT", 0, 0)
	miniWindow.itembtn:SetWidth(50)
	miniWindow.itembtn:SetHeight(50)
	miniWindow.itembtn:SetTexture("RareDar", "radarred.png")
	miniWindow.itembtn:SetSecureMode("restricted")
	miniWindow.itembtn.Event.RightClick = miniWindow.Event.RightClick
	
	miniWindow.zoneMenu = {}

	local lang=Inspect.System.Language()
	local zoneNames={}
	local zoneNameHash={}
	for name,info in pairs(RareDar_rares[lang]) do
		if info ~= false and not zoneNameHash[info[1]] then
			zoneNameHash[info[1]]=1
			table.insert(zoneNames, info[1])
		end
	end
	table.sort(zoneNames);
	for i,name in ipairs(zoneNames) do
		miniWindow.zoneMenu[i]=UI.CreateFrame("Text", "menu"..i, miniWindow)
		miniWindow.zoneMenu[i]:SetText(name)
		miniWindow.zoneMenu[i]:SetFontSize(14)
		miniWindow.zoneMenu[i]:SetWidth(150)
		miniWindow.zoneMenu[i]:SetVisible(false)
		miniWindow.zoneMenu[i]:SetBackgroundColor(0, 0, 0, 1)
		if i==1 then
			miniWindow.zoneMenu[i]:SetPoint("TOPLEFT", miniWindow, "BOTTOMLEFT", 0, 0)
		else
			miniWindow.zoneMenu[i]:SetPoint("TOPLEFT", miniWindow.zoneMenu[i-1], "BOTTOMLEFT", 0, 0)
		end
		miniWindow.zoneMenu[i].Event.LeftClick=function()
			zoneMenuClick(name)
		end
		miniWindow.zoneMenu[i].Event.MouseIn=function()
			miniWindow.zoneMenu[i]:SetBackgroundColor(0, 0, 0.5, 1)
		end
		miniWindow.zoneMenu[i].Event.MouseOut=function()
			miniWindow.zoneMenu[i]:SetBackgroundColor(0, 0, 0, 1)
		end
	end
	
	miniWindow.cycle=UI.CreateFrame("Frame", "Cycle", miniWindow)
	miniWindow.cycle:SetWidth(150)
	miniWindow.cycle:SetHeight(60)
	miniWindow.cycle:SetVisible(false)
	miniWindow.cycle:SetBackgroundColor(0.1, 0.1, 0.1, 0.8)
	miniWindow.cycle:SetPoint("TOPLEFT", miniWindow, "BOTTOMLEFT", 0, 0)
	miniWindow.cycle:SetSecureMode("restricted")	

	miniWindow.cycle.mobName=UI.CreateFrame("Text", "CycleMobName", miniWindow.cycle)
	miniWindow.cycle.mobName:SetWidth(120)
	miniWindow.cycle.mobName:SetHeight(20)
	miniWindow.cycle.mobName:SetFontSize(14)
	miniWindow.cycle.mobName:SetPoint("TOPLEFT", miniWindow.cycle, "TOPLEFT", 15, 0)
	miniWindow.cycle.mobName:SetSecureMode("restricted")	

	miniWindow.cycle.mobArea=UI.CreateFrame("Text", "CycleMobName", miniWindow.cycle)
	miniWindow.cycle.mobArea:SetWidth(120)
	miniWindow.cycle.mobArea:SetHeight(20)
	miniWindow.cycle.mobArea:SetFontSize(14)
	miniWindow.cycle.mobArea:SetPoint("TOPLEFT", miniWindow.cycle.mobName, "BOTTOMLEFT", 0, 0)
	
	miniWindow.cycle.leftshift=UI.CreateFrame("Texture", "CycleLeft", miniWindow.cycle)
	miniWindow.cycle.leftshift:SetWidth(15)
	miniWindow.cycle.leftshift:SetHeight(60)
	miniWindow.cycle.leftshift:SetTexture("RareDar", "arrowleft.png")
	miniWindow.cycle.leftshift:SetPoint("TOPLEFT", miniWindow.cycle, "TOPLEFT", 0, 0)
	miniWindow.cycle.leftshift.Event.LeftClick=cycleLeft
	
	miniWindow.cycle.rightshift=UI.CreateFrame("Texture", "CycleRight", miniWindow.cycle)
	miniWindow.cycle.rightshift:SetWidth(15)
	miniWindow.cycle.rightshift:SetHeight(60)
	miniWindow.cycle.rightshift:SetTexture("RareDar", "arrowright.png")
	miniWindow.cycle.rightshift:SetPoint("TOPRIGHT", miniWindow.cycle, "TOPRIGHT", 0, 0)
	miniWindow.cycle.rightshift.Event.LeftClick=cycleRight
	
	miniWindow.cycle.xpos=UI.CreateFrame("Text", "CycleMobXPos", miniWindow.cycle)
	miniWindow.cycle.xpos:SetWidth(60)
	miniWindow.cycle.xpos:SetFontSize(14)
	miniWindow.cycle.xpos:SetPoint("TOPLEFT", miniWindow.cycle.mobArea, "BOTTOMLEFT", 0, 0)

	miniWindow.cycle.ypos=UI.CreateFrame("Text", "CycleMobYPos", miniWindow.cycle)
	miniWindow.cycle.ypos:SetWidth(60)
	miniWindow.cycle.ypos:SetFontSize(14)
	miniWindow.cycle.ypos:SetPoint("TOPRIGHT", miniWindow.cycle.mobArea, "BOTTOMRIGHT", 0, 0)
end

function RareDar_SetZoneMobs(list)
	local str=""
	local n=0
	for i,name in ipairs(list) do
		n=i
		str=str .. "target " .. name .. "\n"
	end
	if (n>0) then
		miniWindow.itembtn:SetTexture("RareDar", "radargreen.png")
	else
		miniWindow.itembtn:SetTexture("RareDar", "radarred.png")
	end
	miniWindow.title:SetText("RareDar (" .. n .. ")")
	miniWindow.itembtn.Event.LeftDown=str
end

function RareDar_SetCloseMobs()
   local player=Inspect.Unit.Detail("player");
   if (not RareDar.secureMode) 
   and (player.locationName ~= nil)		-- while porting
   and (player.locationName ~= lastLocationName) then
      local lang=Inspect.System.Language()
      print ("Location is now "..player.locationName)
      local moblist={}
      for name, info in pairs(RareDar_rares[lang]) do
         if info then
	     --print (name .. "/" .. (info[1] or "x") .. "/" .. (info[2] or "y"))
	     --dump(info)
	 end
         if info
	 and (     info[1] == player.locationName and info[2] == ""
		or info[2] == player.locationName               
	     ) then
	    print(name .. " might be close")
	    table.insert(moblist, name)
	 end
      end
      RareDar_SetZoneMobs(moblist)
      lastLocationName=player.locationName
   end
end

function RareDar_createUI()
	context=UI.CreateContext("RareDar")
	context:SetSecureMode("restricted")
	
	if (miniWindow == nil) then
		buildMiniWindow()
	end
end
