return {
    { 
        "fatih/vim-go",
        build = function()
            vim.cmd([[GoUpdateBinaries]])
        end,
        lazy = false,
        ft = "go",
        config = function() 
            local wk = require("which-key")
            wk.register({
                g = {
                    name = "go/git",
                    b = { vim.cmd.GoBuild, "go build" },
                    r = { "<cmd>GoRun %<cr>", "go run file" },
                },
            }, { prefix = "<leader>" })

        end
    }
}
