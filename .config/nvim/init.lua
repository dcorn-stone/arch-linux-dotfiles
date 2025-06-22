-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false, -- Show files that begin with "."
      hide_gitignored = false, -- Show files that are normally ignored by git
      -- Optionally, you can also add or clear other filters:
      hide_by_name = {}, -- List of filenames to hide (empty here)
      never_show = {}, -- List of filenames to never show
    },
    use_libuv_file_watcher = true, -- Automatically update the tree when files/directories change
  },
  -- You can add configurations for buffers, git_status, etc., if needed.
})

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP Rename" })

