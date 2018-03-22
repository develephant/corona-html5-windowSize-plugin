# ![logo](icons/logo.png) Corona HTML5 Window Size Plugin

__Get browser window sizing information on demand or via event.__

## Browser Tests

|![chrome](icons/chrome.png)|![ie](icons/ie.png)|![firefox](icons/firefox.png)|![safari](icons/safari.png)|![opera](icons/opera.png)|
|---------------------------|-------------------|-----------------------------|---------------------------|-------------------------|
|![pass](icons/pass.png)|![untested](icons/untested.png)|![pass](icons/pass.png)|![pass](icons/pass.png)|![untested](icons/pass.png)|


_Windows browser unconfirmed._

## Installation

 - Download the __Corona HTML5 Window Size Plugin__ respository.
 - Move __plugin/windowSize.lua__ and __plugin/windowSize_js.js__ to the ___root___ of your HTML5 project.
 - Require the plugin in your code where you need it.

```lua
local windowSize = require("windowSize")
```

## API

### getSize

Returns a _Table_ of the browser window size properties, or a _Number_ if `property` is supplied.

```lua
windowSize.getSize([property])
```

__Properties__

 - `innerWidth`
 - `innerHeight`
 - `outerWidth`
 - `outerHeight`
 - `screenLeft`
 - `screenTop`

__Example__

_Direct access_

```lua
local windowSize = require("windowSize")

local info = windowSize.getInfo()

print(info.innerWidth) --> 960
```

__Direct access `innerHeight`__

```lua
local windowSize = require("windowSize")

local innerHeight = windowSize.getSize('innerHeight')

print(innerHeight) --> 960
```

_Event listener_

```lua
local windowSize = require("windowSize")

local function onBrowserResize()
  local info = windowSize.getInfo()

  print(info.innerWidth) --> 1020
end

Runtime:addEventListener( "resize", onBrowserResize )
```

## Demo

A [Corona](https://coronalabs.com) project can be found in the __demo__ directory that can be compiled to an HTML5 build for testing.

---

&copy;2018 C. Byerley ([develephant](https://develephant.com))