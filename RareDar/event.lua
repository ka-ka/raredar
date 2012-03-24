--------------------------------------------------------------------------------
-- Mapping of event handlers to event types.
--------------------------------------------------------------------------------

-- Notification display
table.insert(Event.Unit.Available, {RareDar_show_notification_from_units, "RareDar", "Display Notification"})

local function update()
	RareDar_fade_notification()
	RareDar_SetCloseMobs()
end

-- Notification fading
table.insert(Event.System.Update.Begin, {update, "RareDar", "Fade Notification"})

-- Initialization
local function init(addon)
   if addon == "RareDar" then
      print("loaded!  We'll do our best to let you know when we find a rare mob!")
      RareDar_createUI()
      local x={"c5C766AF68015CB70",	-- old named mobs
	       "c041CBB02DEA774CE",	-- ember isle
      }
      local lang=Inspect.System.Language()
      for i,achv in ipairs(x) do
	local y=Inspect.Achievement.Detail(achv)
--	print (achv .. " " .. y.name)
	for req,data in pairs(y.requirement) do
	  local name=data.name
	  if (name:sub(1,7) == "Besiegt") then
-- In the german version, ember island achievements are named
-- "Besiegt Tricksy" (vanquish Tricksy), so we need to remove the
-- "Besiegt ". This probably needs to be expanded for the english/french
-- versions.
	    name=name:sub(9)
	  end
--	  print (req..":"..data.type.."-"..name.."-"..tostring(data.complete))
	  if (RareDar_rares[lang][name]) then
	    RareDar_rares[lang][name][7]=(data.complete or false)
	  end
	end
      end
   end
end

table.insert(Event.Addon.Load.End, {init, "RareDar", "Initialization"})

local function enterSecure()
	RareDar.secureMode = true
end

local function leaveSecure()
	RareDar.secureMode = false
end

table.insert(Event.System.Secure.Enter, { enterSecure, "RareDar", "EnterSecure" })
table.insert(Event.System.Secure.Leave, { leaveSecure, "RareDar", "LeaveSecure" })
