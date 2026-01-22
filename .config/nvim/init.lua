

require("config.lazy")
-- lua/config/init.lua

local config_path = vim.fn.stdpath("config") .. "/lua/config"

for _, file in ipairs(vim.fn.readdir(config_path, [[v:val =~ '\.lua$']])) do
  local module = "config." .. file:gsub("%.lua$", "")
  if module ~= "config.init" then
    require(module)
  end
end



require('lualine').setup()
require("mason").setup()
require('Comment').setup()
require("ibl").setup()
require('neo-tree').setup({
  filesystem = {
    use_libuv_file_watcher = true
  },
})
require("neo-tree").setup({
  close_if_last_window = false,  -- DON’T auto-close the editor if Neo-tree is the only window
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    indent = { padding = 1 },
    icon = { folder_closed = "", folder_open = "" },
  },
  window = {
    position = "left",
    width = 30,
    mappings = {
      ["<space>"] = "toggle_node",
      ["<cr>"] = "open",
    },
  },
  filesystem = {
    filtered_items = {
      visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      hide_dotfiles = false,
      hide_gitignored = true,
    }
  }
})


vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- Could also be ▸ or ⚠
    spacing = 2,
  },
  signs = true,  -- show gutter symbols
  underline = true,
  update_in_insert = true, -- update while typing
})

-- Open a man page in a vertical split
vim.api.nvim_create_user_command("VMan", function(opts)
  vim.cmd("vsplit")             -- open vertical split
  vim.cmd("Man " .. opts.args)  -- open the man page in that split
end, { nargs = 1 })



vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.hidden = true
vim.opt.background = "dark"
vim.opt.clipboard = "unnamedplus"
vim.cmd("set termguicolors")
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.cmd("set splitright")
vim.cmd("set splitbelow")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

