vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    -- Let packer manage itself
    use 'wbthomason/packer.nvim'

    -- Caching
    use 'lewis6991/impatient.nvim'

    -- Eye candy:

    -- Dim unused vars
    use {
      "narutoxy/dim.lua",
      requires = { "nvim-treesitter/nvim-treesitter", "neovim/nvim-lspconfig" },
      config = function()
        require('dim').setup({})
      end
    }

    use {
      'luukvbaal/stabilize.nvim',
      config = function ()
        require("stabilize").setup()
      end
    }

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'
    use 'nvim-treesitter/nvim-treesitter-context'
    -- use 'tmsvg/pear-tree'

    -- Status bar
    use 'doums/barow'


    use 'kyazdani42/nvim-web-devicons'

    use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }


    -- Colorscheme
    use {
      'meliora-theme/neovim',
      requires = {'rktjmp/lush.nvim'},
      config = function ()
        vim.cmd("colorscheme meliora")
      end
    }

    -- Colorizer
    use { 'norcalli/nvim-colorizer.lua',
          config = function ()
            require'colorizer'.setup()
          end
    }

    -- Indentation
    use {
      'lukas-reineke/indent-blankline.nvim',
        config = function ()
        vim.opt.list = true
        -- vim.opt.listchars:append('eol:$')

        require('indent_blankline').setup {
            --show_end_of_line = true,
            space_char_blankline = ' ',
        }
        end
    }

    -- Neovim tree
    use {
      'kyazdani42/nvim-tree.lua',
      tag = 'nightly'
    }

    -- Dashboard
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}
    }
    -- Productivity

    -- Project Managment
    use {
      'ahmedkhalf/project.nvim',
      config = function ()
        require('project_nvim').setup{}
      end
    }

    -- LSP, CMP
    use {
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    }

    use {
        'williamboman/nvim-lsp-installer',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    }

    -- Keybinds
    use "folke/which-key.nvim"

    -- Term
    use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
        require("toggleterm").setup()
    end}

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- GitDiff view
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- Comment Toggler
    use {
      'terrortylor/nvim-comment',
      config = function ()
        require('nvim_comment').setup({comment_empty = false})
      end
    }

    -- Bufferline
    use 'noib3/nvim-cokeline'

    -- Github Copilot
    -- use 'github/copilot.vim'

    -- Startup profile
    use "dstein64/vim-startuptime"
end)
