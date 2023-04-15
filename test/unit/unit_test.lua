local t = require('luatest')
local g = t.group('simplest')

local lua_debug_helper = require('lua-debug-helper')

local launched_port = 0
lua_debug_helper.run = function(port)
    launched_port = port
end

g.test_run = function()
    lua_debug_helper.run(1111)
    t.assert_equals(launched_port, 1111)
end

g.test_enable_debugger = function()
    lua_debug_helper.enable_debugger(2222)
    t.assert_equals(launched_port, 2222)
end

g.test_arg_init = function()
    lua_debug_helper.arg_init{'--dbg_port=3333'}
    t.assert_equals(launched_port, 3333)
end
