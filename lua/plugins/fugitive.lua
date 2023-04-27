return {
	{ "tpope/vim-fugitive",
	config = function()
            local wk = require("which-key")
            wk.register({
                g = {
                    name = "go/git",
                    s = { vim.cmd.Git, "git status" }
                }
            }, { prefix = "<leader>" })
		--vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
	end
}
}
