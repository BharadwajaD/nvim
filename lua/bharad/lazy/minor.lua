return {
    -- harpoon
    {
        'theprimeagen/harpoon',
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set("n", "<leader>ha", mark.add_file)
            vim.keymap.set("n", "<leader>ht", ui.toggle_quick_menu)

            vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
        end
    },

    -- fugitive
    {
        'tpope/vim-fugitive',
        config = function()
            vim.keymap.set("n", "<leader>go", ":Git<cr>");
            vim.keymap.set("n", "<leader>gp", ":Git push<cr>");
            vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<cr>");
        end
    },
    {
        'lewis6991/gitsigns.nvim',

        config = function ()

            local gitsigns = require('gitsigns')
            gitsigns.setup()
            vim.keymap.set('n', ']c', function()
                if vim.wo.diff then
                    vim.cmd.normal({']c', bang = true})
                else
                    gitsigns.nav_hunk('next')
                end
            end)

            vim.keymap.set('n', '[c', function()
                if vim.wo.diff then
                    vim.cmd.normal({'[c', bang = true})
                else
                    gitsigns.nav_hunk('prev')
                end
            end)

        end
    },

    -- undotree
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<cr>");
        end
    },

    {
        "jbyuki/venn.nvim"
    },
    -- go plugin
    {
        "fatih/vim-go"
    }
}
