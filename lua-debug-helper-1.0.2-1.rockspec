package = 'lua-debug-helper'
version = '1.0.2-1'
source  = {
    url    = 'git+https://github.com/a1div0/lua-debug-helper.git',
    branch = 'main',
    tag = '1.0.2',
}
description = {
    summary  = "Module for IDE Lua debug based EmmyLua Debugger",
    homepage = 'https://github.com/a1div0/lua-debug-helper',
    maintainer = "Alexander Klenov <a.a.klenov@ya.ru>",
    license  = 'None',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['lua-debug-helper'] = 'lua-debug-helper/init.lua',
    },
    install = {
        lib = {'lua-debug-helper/emmy_core.so'},
    }
}
