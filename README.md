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
tarantoolctl rocks install https://raw.githubusercontent.com/a1div0/ide-debug/main/ide-debug-1.0.0-1.rockspec
```

## Usage
1. In your project add require on this lib:
```lua
require('ide-debug')
```

2. Run your script with the key pointing to the same port
as you chose in settings EmmyDebugger: `--dbg_port=9966`. Example:
```shell
tarantool example.lua --dbg_port=9966
```
3. Put breakpoint and run Debug.
4. Enjoy...