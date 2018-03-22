--#############################################################################
--# Corona HTML5 Window Size Plugin Demo
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local sizeTxt

local windowSize = require("windowSize")

local function onResize()
  local win = windowSize.getInfo()

  for prop, val in pairs(win) do
    sizeTxt[prop].text = prop..': '..val
  end
end

Runtime:addEventListener( "resize", onResize )
--# Initial `onResize` called below for demo.

--#############################################################################
--# UI
--#############################################################################
local cx = display.contentCenterX
local cy = display.contentCenterY
local font = native.systemFont
local newText = display.newText

--# Title
local title = newText({
  text = "Resize your browser window",
  x = cx,
  y = 40,
  font = font,
  fontSize = 18
})
title:setFillColor(0.97,0.48,0)

--# Sizes
local sizeLbls = {
  'innerWidth',
  'innerHeight',
  'outerWidth',
  'outerHeight',
  'screenLeft',
  'screenTop'
}

sizeTxt = {}

for i=1, #sizeLbls do
  local txt = newText({
    text = sizeLbls[i]..': 0',
    x = cx,
    y = (26*i) + 60,
    font = font,
    fontSize = 12
  })

  sizeTxt[sizeLbls[i]] = txt
end

--# Init Values
onResize()
