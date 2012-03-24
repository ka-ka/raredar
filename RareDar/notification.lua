--------------------------------------------------------------------------------
-- Notification frame building function.
--------------------------------------------------------------------------------

--- Creates a Frame which displays a text string with a certain horizontal padding and offset from the top.
--
-- @param text The text to display.
-- @param horizontal_padding The amount of padding to use on the left and right between the frame border and the text.
-- @param horizontal_offset The offset from the top of the screen.
-- @return the bar
--
-- Examples
--
--   display_notification("Hello there!", 100, 250)
--   => Displays "Hello there!" with 100 pixels between the left and right of the border 250 pixels down from the top of the screen.
function display_notification(text, horizontal_padding, horizontal_offset, red, green, blue, alpha)
   local context = UI.CreateContext("raredar_context")
   local bar = UI.CreateFrame("Frame", "Bar", context)
   bar:SetVisible(false)

   bar.solid = UI.CreateFrame("Frame", "Solid", bar)
   bar.text = UI.CreateFrame("Text", "Text", bar)
   bar.time = Inspect.Time.Real()

   -- Set an initial vertical pin to make some of our calculations work properly.
   bar:SetPoint("TOP", UIParent, "TOP")
   bar:SetPoint("BOTTOM", bar.text, "BOTTOM")  -- The bar is set to always be as high as the text is.

   -- Text
   bar.text:SetFontSize(25)
   bar.text:SetText(text)
   bar.text:SetHeight(bar.text:GetFullHeight())
   bar.text:SetWidth(bar.text:GetFullWidth())
   -- TODO: Attaching to the center is broken last I tried, this can be simpler once it's fixed.
--   bar.text:SetPoint("CENTER", bar.solid, "CENTER")
   bar.text:SetPoint("TOPLEFT", bar.solid, "TOPLEFT", horizontal_padding, 0)

   -- Solid background
   bar.solid:SetLayer(-1)  -- Put it behind every other element.
   bar.solid:SetWidth(bar.text:GetFullWidth()+horizontal_padding*2)
   bar.solid:SetPoint("TOPLEFT", bar, "TOPLEFT")
--   bar.solid:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT")
   -- TODO: Custom color configuration.
   bar.solid:SetBackgroundColor(red, green, blue, alpha)

   -- Set the bar to the center of the screen
   bar:SetPoint("TOPCENTER", UIParent, "TOPCENTER", -bar.text:GetFullWidth()/2, horizontal_offset)

   bar:SetVisible(true)

   return bar
end
