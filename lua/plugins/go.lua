return {
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup()
            require("go").setup({
                lsp_cfg = false
            })
            local cfg = require'go.lsp'.config()
            require('lspconfig').gopls.setup(cfg)
            local wk = require("which-key")
            wk.register({
                g = {
                    name = "go/git",
                    r = { ":GoRun %", "go run" },
                    b = { vim.cmd.GoBuild, "go build" }
                },
            }, { prefix = "<leader>"})
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    }
}
