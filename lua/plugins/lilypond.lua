return {
    { 
        'martineausimon/nvim-lilypond-suite',
        dependencies = 'MunifTanjim/nui.nvim',
        config = function()
            require('nvls').setup({
                -- edit config here (see "Customize default settings" in wiki)
            })
        end
    }
}
