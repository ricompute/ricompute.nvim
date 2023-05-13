return {
    { 'L3MON4D3/LuaSnip', 
        config = function()
            local ls = require "luasnip"
            ls.config.set_config {
                history = true,
                updateevents = "TextChanged,TextChangedI",
            }
            ls.config.setup({
                enable_autosnippets = true,
            })
            vim.keymap.set({ "i", "s" }, ";n", function()
                if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                end
            end, { silent = true })
            vim.keymap.set({ "i", "s" }, ";N", function()
                if ls.jumpable(-1) then
                    ls.jump(-1)
                end
            end, { silent = true })
            vim.keymap.set( "i", ";s", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end)
        end
    }
}
