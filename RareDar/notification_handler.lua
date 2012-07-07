--------------------------------------------------------------------------------
-- A single state variable and functions for controlling notification display.
--------------------------------------------------------------------------------

local bar = nil
local lastShownRare = nil

--- Displays a notification if a rare is found in a list of units.
--
-- @param list The units "the client can see"
function RareDar_show_notification_from_units(units)
   local function found_message(unit)
      return unit .. " found!"
   end
   rares = get_rares(units, RareDar_rares)
   if table.getn(rares) > 0 then
      local raretoshow=rares[1]
      if (raretoshow ~= lastShownRare) then
	 lastShownRare=raretoshow
	 local message = found_message(raretoshow)
	 print(message)
	 RareDar_show_notification(message)
      end
   end
end

function RareDar_show_notification(message)
   -- Hide the currently displayed notification.
   if bar ~= nil then
      bar:SetVisible(false)
   end

   -- Display the new notification.
   bar = display_notification(message,
			      RareDar.horizontal_padding, RareDar.horizontal_offset,
			      RareDar.red, RareDar.green, RareDar.blue, RareDar.alpha)
end

--- Fades a notification out.
--
-- Closes on display_time and fade_time defined in config.lua.
--
-- @param display_time The total duration in seconds to display the notification.
-- @param fade_time The time spent to fade out the notification.
--
-- Examples
--
--   fade_notification with display_time = 10.0 and fade_time = 3.0
--   => When the notification is displayed it will be displayed for a total of 10 total seconds beginning fading out after 7 seconds and completely faded out after 10 seconds.
function RareDar_fade_notification()
   if bar ~= nil then
      dt = Inspect.Time.Real() - bar.time
      if dt > RareDar.display_time then
         bar:SetVisible(false)
	 lastShownRare=nil
      elseif RareDar.display_time-dt < RareDar.fade_time then
	 local normalized_dt
	 local new_alpha
         normalized_dt = RareDar.fade_time - (RareDar.display_time - dt)
         new_alpha = RareDar.alpha-((normalized_dt/RareDar.fade_time)*RareDar.alpha)
         bar:SetAlpha(new_alpha)
      end
   end
end
