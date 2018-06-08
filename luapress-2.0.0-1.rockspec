-- This file was automatically generated for the LuaDist project.

package = 'Luapress'
version = '2.0.0-1'

-- LuaDist source
source = {
  tag = "2.0.0-1",
  url = "git://github.com/LuaDist-testing/luapress.git"
}
-- Original source
-- source = {
--     url = 'git://github.com/Fizzadar/luapress.git',
--     tag = 'v2.0.0'
-- }

description = {
    summary = 'Luapress builds static blogs from markdown files',
    homepage = 'https://github.com/Fizzadar/luapress',
    license =   'MIT'
}

dependencies = {
    'lua >= 5.1',
    'alt-getopt',
    'luafilesystem'
}

build = {
    type = 'builtin',
    modules = {
        ['luapress'] = 'luapress/press.lua'
    },
    install = {
        lua = {
            ['luapress.config'] = 'luapress/config.lua',
            ['luapress.template'] = 'luapress/template.lua',
            ['luapress.util'] = 'luapress/util.lua',
            ['luapress.default_template'] = 'luapress/default_template.lua',
            ['luapress.lib.markdown'] = 'luapress/lib/markdown.lua'
        },
        bin = {
            'bin/luapress'
        }
    }
}