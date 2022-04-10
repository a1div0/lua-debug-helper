local dbg = require('emmy_core')

local function enable_debugger(port)
    dbg.tcpListen('localhost', port)
    dbg.waitIDE()
end

for _, arg_i in ipairs(arg) do
    local dbg_port = arg_i:match('^--dbg_port=(%d+)$')
    if dbg_port ~= nil then
        enable_debugger(tonumber(dbg_port))
    end
end

return dbg