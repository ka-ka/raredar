--------------------------------------------------------------------------------
-- Mapping of event handlers to event types.
--------------------------------------------------------------------------------

-- Notification display
table.insert(Event.Unit.Available, {RareDar_show_notification_from_units, "RareDar", "Display Notification"})

local job_coroutine = nil

local function run_job()
   -- Set yield time 10 milli sec from now
   RareDar.next_yield = Inspect.Time.Real() + 0.01

   RareDar_fade_notification()
   RareDar_SetCloseMobs()
end

local function update()
   if (job_coroutine == nil) then
      job_coroutine = coroutine.create(run_job)
   end
   coroutine.resume(job_coroutine)
   if (coroutine.status(job_coroutine) == "dead") then
      job_coroutine = nil
   end
end

-- Notification fading
table.insert(Event.System.Update.Begin, {update, "RareDar", "Fade & Close mobs"})

local raremobachvs={
   "c5C766AF68015CB70",	-- old named mobs
   "c041CBB02DEA774CE",	-- ember isle
}

-- We have to call this function twice, once when the addon is initialized,
-- and again when we get an achievement. When Rift first starts,
-- achivement data isn't loaded yet (but we get an Event when the data
-- becomes available); when we do a /reloadui, the data is there but
-- we don't get the event. So we really have to call this from both
-- places.

local function updateachv(achv)
   local y=Inspect.Achievement.Detail(achv)
   local lang=Inspect.System.Language()
   --  print (achv .. " " .. y.name)
   for req,data in pairs(y.requirement) do
      local name=data.name
      if (name:sub(1,7) == "Besiegt") then
	 -- In the german version, ember island achievements are named
	 -- "Besiegt Tricksy" (vanquish Tricksy), so we need to remove the
	 -- "Besiegt ". This probably needs to be expanded for the english/french
	 -- versions.
	 name=name:sub(9)
      end
      --  print (req..":"..data.type.."-"..name.."-"..tostring(data.complete))

      for zone,info in pairs(RareDar_rares[lang]) do
	 if (info[name]) then
	    info[name][6]=(data.complete or false)
	 end
      end
   end
end

-- Initialization
local function init(addon)
   if (addon == "RareDar") then
      -- make sure the watchdog dont complain during initialization
      Command.System.Watchdog.Quiet()
      print("loaded!  We'll do our best to let you know when we find a rare mob!")
      print("Type /raredar for options.")
      --      Command.System.Strict()
      RareDar_createUI()
      local id,achv
      for id,achv in ipairs(raremobachvs) do
	 updateachv(achv)
      end
   end
end

local function gotachv(tab)
   --  print("got achv")
   for id,b in pairs(tab) do
      for i, achvid in ipairs(raremobachvs) do
	 if id == achvid then
	    updateachv(id)
	 end
      end
   end
end

table.insert(Event.Achievement.Update, { gotachv, "RareDar", "gotachv" })
table.insert(Event.Addon.Load.End, {init, "RareDar", "Initialization"})

local function enterSecure()
   RareDar.secureMode = true
end

local function leaveSecure()
   RareDar.secureMode = false
end

table.insert(Event.System.Secure.Enter, { enterSecure, "RareDar", "EnterSecure" })
table.insert(Event.System.Secure.Leave, { leaveSecure, "RareDar", "LeaveSecure" })

local function help()
   print("Usage: /raredar [option]:")
   print("    show:   show the main window")
   print("    hide:   hide the main window")
   print("    lock:   lock the main window position")
   print("    unlock: unlock the main window position")
end

local function process(param)
   --print(param)
   if (param ~= nil) and (param ~= "") then

      local found = false

      if param == "help" then
         help()
         found = true
      end

      if param == "hide" then
         RareDar_hideMiniWindow()
         found = true
      end

      if param == "show" then
         RareDar_showMiniWindow()
         found = true
      end

      if param == "lock" then
         RareDar.locked = true
         found = true
      end

      if param == "unlock" then
         RareDar.locked = false
         found = true
      end

      if not found then
         print("Unknown option [" .. param .."] type /raredar help for valid options")
      end
   else
      help()
   end
end;

table.insert(Command.Slash.Register("raredar"), {function (params) process(params) end, "RareDar", "Slash command"})
