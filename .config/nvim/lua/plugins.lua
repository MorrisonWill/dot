-- Install Packer if it isn't already installed
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.cmd("packadd packer.nvim")
end

return require("packer").startup(function()
	-- Packer manages itself
	use("wbthomason/packer.nvim")

	-- Color scheme
	use({
		"navarasu/onedark.nvim",
		config = function()
			vim.g.onedark_style = "dark"
			vim.cmd([[colorscheme onedark]])
		end,
	})

	-- Surround plugin
	use("tpope/vim-surround")

	-- Comment plugin
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Autoclose pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Fuzzy finding
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({})
			telescope.load_extension("fzf")
		end,
	})

	-- File tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	-- Syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdateSync",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = { enable = true },
			})
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				sections = {
					lualine_a = {},
					lualine_x = { "filetype" },
					lualine_z = {},
				},
				extensions = { "nvim-tree" },
			})
		end,
	})

	-- LSP
	use({
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			lsp.gopls.setup({})
			lsp.rust_analyzer.setup({})
			lsp.pyright.setup({})
			lsp.zls.setup({})
			lsp.svelte.setup({})
			lsp.clangd.setup({})
		end,
	})
	use({
		"folke/trouble.nvim",
		opt = true,
		cmd = { "Trouble", "TroubleToggle" },
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})

	-- Autocompletions
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"onsails/lspkind-nvim",
		},
		config = function()
			require("cmp").setup({
				sources = {
					{ name = "nvim_lsp" },
					{ name = "path" },
					{
						name = "buffer",
						option = {
							get_bufnrs = function()
								return vim.api.nvim_list_bufs()
							end,
						},
					},
				},
				formatting = { format = require("lspkind").cmp_format() },
			})
		end,
	})

	-- Linting and auto fixing
	use({
		"dense-analysis/ale",
		config = function()
			vim.g.ale_fixers = {
				json = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
				yaml = { "prettier" },

				go = { "goimports" },
				rust = { "rustfmt" },
				svelte = { "prettier" },
				lua = { "stylua" },
				python = { "black" },
				c = { "clang-format" },
			}
			vim.g.ale_fix_on_save = 1
			vim.g.ale_disable_lsp = 1
		end,
	})

	-- Bufferline
	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("bufferline").setup({})
		end,
	})

	-- Toggleable terminal
	use({
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				on_config_done = nil,
				size = 20,
				open_mapping = [[<c-t>]],
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = 2,
				start_in_insert = true,
				insert_mappings = true,
				persist_size = false,
				direction = "float",
				close_on_exit = true,
				shell = vim.o.shell,
				float_opts = {
					border = "curved",
					winblend = 0,
					highlights = {
						border = "Normal",
						background = "Normal",
					},
				},
			})
		end,
	})
end)
