--#############################################################################
--# Corona HTML5 Window Size Plugin
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local lib

local platform = system.getInfo("platform")

if platform == 'html5' then
  lib = require("windowSize_js")
else
	-- wrapper for non web platforms
	local CoronaLibrary = require "CoronaLibrary"
	-- Create stub library for simulator
	lib = CoronaLibrary:new{ name='windowSize', publisherId='com.develephant' }
  -- Alert for non-HTML5 platforms
	local function defaultFunction()
		print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
  end
  
  lib.getInfo = defaultFunction
end

return lib
