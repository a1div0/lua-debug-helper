for i, arg_i in ipairs(arg) do
    local dbg_port = arg_i:match('^--dbg_port=(%d+)$')
    if dbg_port ~= nil then
        dbg_port = tonumber(dbg_port)
        print(('i = %d: %s'):format(i, arg_i))
        print(dbg_port)
    end
end