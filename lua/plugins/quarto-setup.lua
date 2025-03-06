return {
    -- Tokyo Night theme configuration
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },

    -- Quarto.nvim plugin configuration
    {
        "quarto-dev/quarto-nvim",
        ft = { "quarto" },
        dev = false,
        opts = {
            codeRunner = {
                enabled = true,
                default_method = "molten",
                ft_runners = {
                    python = "molten",
                },
                never_run = { "yaml" },
            },
        },
        dependencies = {
            "jmbuhr/otter.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        keys = {
            { "<leader>qs", "<cmd>QuartoSend<cr>", desc = "[q]uarto [s]end" },
        },
    },

    -- Neovim LSP configuration
    { "neovim/nvim-lspconfig" },

    -- Jupytext.nvim plugin configuration
    {
        "GCBallesteros/jupytext.nvim",
        config = true,
        opts = {
            custom_language_formatting = {
                python = {
                    extension = "qmd",
                    style = "quarto",
                    force_ft = "quarto",
                },
                r = {
                    extension = "qmd",
                    style = "quarto",
                    force_ft = "quarto",
                },
            },
        },
    },

    -- Luarocks.nvim plugin configuration
    {
        "vhyrro/luarocks.nvim",
        priority = 1001,
        opts = {
            rocks = { "magick" },
        },
    },

    -- Molten.nvim plugin configuration
    {
        "benlubas/molten-nvim",
        enabled = true,
        dependencies = {
            "3rd/image.nvim",
        },
        build = ":UpdateRemotePlugins",
        init = function()
            vim.g.molten_image_provider = "image.nvim"
            vim.g.molten_output_win_max_height = 20
            vim.g.molten_auto_open_output = true
        end,
    },

    -- Image.nvim plugin configuration
    {
        "3rd/image.nvim",
        enabled = true,
        dev = false,
        ft = { "quarto" },
        dependencies = {
            "leafo/magick", -- that's a lua rock
        },
        config = function()
            require("image").setup({
                max_width = 100,
                max_height = 12,
                max_width_window_percentage = math.huge,
                max_height_window_percentage = math.huge,
                window_overlap_clear_enabled = true,
            })
        end,
    },

    -- Headlines.nvim plugin configuration
    {
        "lukas-reineke/headlines.nvim",
        enabled = true,
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = function()
            require("headlines").setup({
                quarto = {
                    query = vim.treesitter.query.parse(
                        "markdown",
                        [[
                (fenced_code_block) @codeblock
                ]]
                    ),
                    codeblock_highlight = "CodeBlock",
                    treesitter_language = "markdown",
                },
                markdown = {
                    query = vim.treesitter.query.parse(
                        "markdown",
                        [[
                (fenced_code_block) @codeblock
                ]]
                    ),
                    codeblock_highlight = "CodeBlock",
                },
            })
        end,
    },

    -- Nvim-treesitter plugin configuration
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            {
                "nvim-treesitter/nvim-treesitter-textobjects",
            },
        },
        run = ":TSUpdate",
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                ensure_installed = {
                    "markdown",
                    "markdown_inline",
                    "python",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = true,
                },
            })
        end,
    },
}
