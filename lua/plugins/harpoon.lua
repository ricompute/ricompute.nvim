return {
    { "theprimeagen/harpoon",
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")
            local wk = require("which-key")
            wk.register({
                h = {
                    name = "Harpoon",
                    a = { mark.add_file, "add file" },
                    h = { ui.toggle_quick_menu, "show Harpoon" },
                    ["1"] = { function() ui.nav_file(1) end, "go to file 1" },
                    ["2"] = { function() ui.nav_file(2) end, "go to file 2" },
                    ["3"] = { function() ui.nav_file(3) end, "go to file 3" },
                    ["4"] = { function() ui.nav_file(4) end, "go to file 4" }
                },
            }, { prefix = "<leader>" })

            -- vim.keymap.set("n", "<leader>ha", mark.add_file)
            -- vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu)
            --
            -- vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
            -- vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
            -- vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
            -- vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
        end
    }
}
