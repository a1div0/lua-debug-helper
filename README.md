<a href="http://tarantool.org">
   <img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Lua-Logo.svg"
    width="250" align="right">
</a>

# ide-debug
Module for IDE Lua debug. This is an add-on for
[EmmyLua Debugger](https://github.com/EmmyLua/EmmyLuaDebugger)

## Installation
You can:
* clone the repository:
``` shell
git clone https://github.com/a1div0/ide-debug.git
```
* install the `ide-debug` module using `tarantoolctl`:
```shell
tarantoolctl rocks install https://raw.githubusercontent.com/a1div0/ide-debug/main/ide-debug-1.0.1-1.rockspec
```

## Usage
1. Install EmmyLua
2. Put breakpoints
3. Run your script with the port pointing to the same port
   as you chose in settings EmmyDebugger:

### Variant 1
Not invasive:
```shell
tarantool -l ide_debug --dbg_port=9966 example.lua
```

### Variant 2
Invasive:
1. In your project add this code:
```lua
require('ide-debug').run(9966)
```

2.  Run, example:
```shell
tarantool example.lua
```
