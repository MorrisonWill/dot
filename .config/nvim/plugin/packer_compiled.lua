-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ale = {
    config = { "\27LJ\2\nâ\3\0\0\3\0!\0)6\0\0\0009\0\1\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\5\0015\2\v\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0015\2\17\0=\2\18\0015\2\19\0=\2\20\0015\2\21\0=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\0015\2\29\0=\2\30\1=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\31\0006\0\0\0009\0\1\0)\1\1\0=\1 \0K\0\1\0\20ale_disable_lsp\20ale_fix_on_save\6c\1\2\0\0\17clang-format\vpython\1\2\0\0\nblack\blua\1\2\0\0\vstylua\vsvelte\1\2\0\0\rprettier\trust\1\2\0\0\frustfmt\ago\1\2\0\0\14goimports\tyaml\1\2\0\0\rprettier\rmarkdown\1\2\0\0\rprettier\bcss\1\2\0\0\rprettier\thtml\1\2\0\0\rprettier\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\2\0\0\rprettier\tjson\1\0\0\1\2\0\0\rprettier\15ale_fixers\6g\bvim\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n´\1\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0004\4\0\0=\4\4\0035\4\5\0=\4\6\0034\4\0\0=\4\a\3=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\1\0\0\14lualine_z\14lualine_x\1\2\0\0\rfiletype\14lualine_a\1\0\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n.\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\19nvim_list_bufs\bapi\bvimû\1\1\0\a\0\17\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0004\3\4\0005\4\3\0>\4\1\0035\4\4\0>\4\2\0035\4\5\0005\5\a\0003\6\6\0=\6\b\5=\5\t\4>\4\3\3=\3\v\0025\3\14\0006\4\0\0'\6\f\0B\4\2\0029\4\r\4B\4\1\2=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\flspkind\fsources\1\0\0\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n™\2\0\0\5\0\r\0\"6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\0019\1\5\0009\1\3\0014\3\0\0B\1\2\0019\1\6\0009\1\3\0014\3\0\0B\1\2\0019\1\a\0009\1\3\0014\3\0\0B\1\2\0019\1\b\0009\1\3\0014\3\0\0B\1\2\0019\1\t\0009\1\3\0015\3\v\0005\4\n\0=\4\f\3B\1\2\1K\0\1\0\bcmd\1\0\0\1\2\0\0004/home/user/elixir-ls/release/language_server.sh\relixirls\vclangd\vsvelte\bzls\fpyright\18rust_analyzer\nsetup\ngopls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-magic"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15nvim-magic\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-magic",
    url = "https://github.com/jameshiew/nvim-magic"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\24colorscheme onedark\bcmd\tdark\18onedark_style\6g\bvim\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\4\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\0019\1\3\0'\3\4\0B\1\2\1K\0\1\0\bfzf\19load_extension\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nñ\2\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\rwinblend\3\0\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\18close_on_exit\2\14direction\nfloat\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\2\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-t>\tsize\3\20\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleToggle" },
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/user/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n.\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\19nvim_list_bufs\bapi\bvimû\1\1\0\a\0\17\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0004\3\4\0005\4\3\0>\4\1\0035\4\4\0>\4\2\0035\4\5\0005\5\a\0003\6\6\0=\6\b\5=\5\t\4>\4\3\3=\3\v\0025\3\14\0006\4\0\0'\6\f\0B\4\2\0029\4\r\4B\4\1\2=\4\15\3=\3\16\2B\0\2\1K\0\1\0\15formatting\vformat\1\0\0\15cmp_format\flspkind\fsources\1\0\0\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\4\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\0019\1\3\0'\3\4\0B\1\2\1K\0\1\0\bfzf\19load_extension\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: ale
time([[Config for ale]], true)
try_loadstring("\27LJ\2\nâ\3\0\0\3\0!\0)6\0\0\0009\0\1\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\5\0015\2\v\0=\2\f\0015\2\r\0=\2\14\0015\2\15\0=\2\16\0015\2\17\0=\2\18\0015\2\19\0=\2\20\0015\2\21\0=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\0015\2\29\0=\2\30\1=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\31\0006\0\0\0009\0\1\0)\1\1\0=\1 \0K\0\1\0\20ale_disable_lsp\20ale_fix_on_save\6c\1\2\0\0\17clang-format\vpython\1\2\0\0\nblack\blua\1\2\0\0\vstylua\vsvelte\1\2\0\0\rprettier\trust\1\2\0\0\frustfmt\ago\1\2\0\0\14goimports\tyaml\1\2\0\0\rprettier\rmarkdown\1\2\0\0\rprettier\bcss\1\2\0\0\rprettier\thtml\1\2\0\0\rprettier\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\2\0\0\rprettier\tjson\1\0\0\1\2\0\0\rprettier\15ale_fixers\6g\bvim\0", "config", "ale")
time([[Config for ale]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n™\2\0\0\5\0\r\0\"6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\0019\1\5\0009\1\3\0014\3\0\0B\1\2\0019\1\6\0009\1\3\0014\3\0\0B\1\2\0019\1\a\0009\1\3\0014\3\0\0B\1\2\0019\1\b\0009\1\3\0014\3\0\0B\1\2\0019\1\t\0009\1\3\0015\3\v\0005\4\n\0=\4\f\3B\1\2\1K\0\1\0\bcmd\1\0\0\1\2\0\0004/home/user/elixir-ls/release/language_server.sh\relixirls\vclangd\vsvelte\bzls\fpyright\18rust_analyzer\nsetup\ngopls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\24colorscheme onedark\bcmd\tdark\18onedark_style\6g\bvim\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nñ\2\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\rwinblend\3\0\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\n\18close_on_exit\2\14direction\nfloat\17persist_size\1\20insert_mappings\2\20start_in_insert\2\19shading_factor\3\2\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-t>\tsize\3\20\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-magic
time([[Config for nvim-magic]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15nvim-magic\frequire\0", "config", "nvim-magic")
time([[Config for nvim-magic]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n´\1\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0004\4\0\0=\4\4\0035\4\5\0=\4\6\0034\4\0\0=\4\a\3=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\14nvim-tree\rsections\1\0\0\14lualine_z\14lualine_x\1\2\0\0\rfiletype\14lualine_a\1\0\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
