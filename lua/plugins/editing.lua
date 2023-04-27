return {
    { "tpope/vim-repeat" },
    { "tpope/vim-surround" },
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup {}
            require('nvim-autopairs').remove_rule('`')
        end
    },
    {
        'numToStr/Comment.nvim',
        version = nil,
        branch = 'master',
        config = true, -- default settings
    },
    {
        "chrishrb/gx.nvim",
        event = { "BufEnter" },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = true, -- default settings
    },
    { 'ekickx/clipboard-image.nvim' },
}
