-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local defaultField ='Enter Text'

--local text = 'Enter Text'
local displayText = display.newText(defaultField, display.contentCenterX, 20, native.systemFont, 40 )
 
local function textListener( event )
 
    if ( event.phase == "began" ) then
        -- User begins editing "defaultField"
 
    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
        -- Output resulting text from "defaultField"
        print( event.target.text )
 
    elseif ( event.phase == "editing" ) then
        print( event.newCharacters )
        print( event.oldText )
        print( event.startPosition )
        print( event.text )
		displayText.text = event.text
    end
end
 
-- Create text field
defaultField = native.newTextField( display.contentCenterX, 150, 180, 30 )
defaultField.text = 'Enter Text'
defaultField:addEventListener( "userInput", textListener )
