<a href="http://tarantool.org">
   <img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Lua-Logo.svg"
    width="250" align="right">
</a>

# lua-debug-helper
Module for IDE Lua debug. This is an add-on for
[EmmyLua Debugger](https://github.com/EmmyLua/EmmyLuaDebugger)

## Installation
You can:
* clone the repository:
``` shell
git clone https://github.com/a1div0/lua-debug-helper.git
```
* install the `lua-debug-helper` module using `tarantoolctl`:
```shell
tarantoolctl rocks install https://raw.githubusercontent.com/a1div0/lua-debug-helper/main/lua-debug-helper-1.0.2-1.rockspec
```

## Usage
1. Install EmmyLua
2. Put breakpoints
3. Run your script with the port pointing to the same port
   as you chose in settings EmmyDebugger:

### Variant 1
Not invasive (the order of the arguments is important):
```shell
tarantool -l lua-debug-helper example.lua --dbg_port=9966
```

### Variant 2
Invasive:
1. In your project add this code:
```lua
require('lua-debug-helper').run(9999)
-- or
require('lua-debug-helper').run() -- default port is 9966
```

2.  Run, example:
```shell
tarantool example.lua
```
