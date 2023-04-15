local lua_debug_helper = {}

lua_debug_helper.run = function(port)
    local dbg = require('emmy_core')
    dbg.tcpListen('localhost', port or 9966)
    dbg.waitIDE()
end

lua_debug_helper.enable_debugger = function(port)
    lua_debug_helper.run(port)
end

lua_debug_helper.arg_init = function(prog_args)
    for _, arg_i in ipairs(prog_args) do
        local dbg_port = arg_i:match('^--dbg_port=(%d+)$')
        if dbg_port ~= nil then
            lua_debug_helper.run(tonumber(dbg_port))
        end
    end
end

lua_debug_helper.arg_init(arg)

return lua_debug_helper
