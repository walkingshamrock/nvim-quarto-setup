# nvim-quarto-setup

This project provides an almost minimal configuration to start using Quarto with Molten in Neovim.

The support will encourage me a lot to keep the project active, create other projects, and explore new ideas.

[![Buy Me A Coffee](https://img.shields.io/badge/-Buy%20me%20a%20coffee-yellow?style=for-the-badge&logo=buy-me-a-coffee&logoColor=white)](https://www.buymeacoffee.com/walkingshamrock)

## Purpose

This project aims to address a common issue faced by macOS users when working with Quarto projects in Neovim: displaying images using the `image.nvim` plugin. Many users encounter difficulties in getting images to render properly within the Neovim editor on macOS. This configuration provides a streamlined setup to resolve these issues, ensuring a smoother experience for those working with Quarto projects and interactive content in Neovim.

## Test Environment

- macOS Sequoia 15.3.1
- Neovim v0.11.0-dev

## Installation

1. Clone the repository:
    Please install the repo in the `~/.config/nvim-whatever` directory.

    ```sh
    git clone https://github.com/yourusername/nvim-quarto-setup.git ~/.config/nvim-whatever
    ```

2. Open Neovim:
    ```sh
    NVIM_APPNAME=nvim-whatever nvim
    ```
    Using `NVIM_APPNAME` ensures that your existing Neovim configuration is not affected. This allows you to try out the Quarto setup without altering your current Neovim environment.

3. Neovim will automatically install the required plugins and dependencies by [lazy](https://github.com/folke/lazy.nvim).

## Key Bindings

- `<leader>qs`: Send code to Quarto.

## Configuration

You can customize the configuration by editing the files in the lua directory.

- quarto-setup.lua: Plugin configurations.

## Tips for Setting Up Quarto

- Ensure you have the latest version of Neovim installed.
- Install Quarto CLI from [quarto.org](https://quarto.org/docs/get-started/).
- Use `:checkhealth` in Neovim to diagnose any configuration issues.
  - Python's virtual environment is troublesome. Ensure you have installed pynvim in the virtual environment if you set python3_host_prog as python in the virtual environment.
- Install jupyter and jupytext in the virtual environment.
  - `pip install jupyter jupytext`.
- Install pkgconf.
  - `brew install pkgconf`

## Acknowledgements

This project was inspired by and builds upon:

- [quarto-nvim-kickstarter](https://github.com/jmbuhr/quarto-nvim-kickstarter) - A comprehensive Neovim configuration for Quarto

### Plugins Used

This setup integrates the following plugins:

- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Color scheme
- [quarto.nvim](https://github.com/quarto-dev/quarto-nvim) - Quarto integration
- [jupytext.nvim](https://github.com/GCBallesteros/jupytext.nvim) - Jupyter notebook support
- [luarocks.nvim](https://github.com/vhyrro/luarocks.nvim) - LuaRocks package manager integration
- [molten.nvim](https://github.com/benlubas/molten-nvim) - Interactive code execution
- [image.nvim](https://github.com/3rd/image.nvim) - Image display support
- [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim) - Markdown heading highlighting
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting and parsing
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Keybinding helper
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
