# BoomBox Library
This is a ui library that can be used when wanting to add/remove hubs from [this project](https://github.com/vyks/vyks).


## How To Use:
First loadstring gets the body of the ui while the second one provides the tab system.
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/BoomBoxLibrary/main/Body.lua"))()
Tabs = loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/BoomBoxLibrary/main/Tabs.lua"))()
```

### Creating a Page
```lua
local Section = Tabs:Section("Name Of Section")
-- local Section = Tabs:Section(name)
```
This creates a section that will then be added onto for the page turner. The names don't matter and don't impact the library's viewing.

### Creating a Tab
```lua
local Tab = Section:Tab({Name = "Name Of Tab"})
-- local Tab = Section:Tab(properties)
```
This creates a button and frame for your new script that you are adding and requires it to be specifically in that format because I was wanting to see if I could replicate what big ui libraries like [Orion](https://github.com/shlexware/Orion) use.

### Adding Buttons:

#### Execute
```lua
local Execute = Tab:Execute("Execute!", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/AuxPineapple.lua"))()
end)
-- local Execute = Tab:Execute(name, func)
```
#### Description
```lua
local Description = Tab:Desc("Describe the script here!")
-- local Description = Tab:Desc(text)
```
#### ClipBoard
```lua
local ClipBoard = Tab:ClipBoard("Name of Clip", function()
  setclipboard("The Clipboard :O")
end)
-- local ClipBoard = Tab:ClipBoard(name, func)
```
#### Compatibility
```lua
local Compatibility = Tab:Executors({
  string.format(accept, "Synapse"),
  string.format(decline, "Jjsploit")
})
--[[ 
local Compatiblity = Tab:Executors(properties)
Table format:
string.format(accept/decline, name)
]]
```
That is all! I hope that this helps you or doesn't make you want to vomit in all honesty I am not the greatest by any standard and probably could have made this way better but that's a future me's problem.
