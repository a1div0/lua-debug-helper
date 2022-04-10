package = 'ide-debug'
version = 'scm-1'
source  = {
    url    = 'git+https://github.com/a1div0/ide-debug.git',
    branch = 'main',
}
description = {
    summary  = "Module for IDE Lua debug based EmmyLua Debugger",
    homepage = 'https://github.com/a1div0/ide-debug',
    maintainer = "Alexander Klenov <a.a.klenov@ya.ru>",
    license  = 'None',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['ide-debug'] = 'ide-debug/init.lua',
    },
    install = {
        lib = {'ide-debug/emmy_core.so'},
    }
}
