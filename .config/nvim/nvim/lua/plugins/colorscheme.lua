return {
  {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    config = function()
      -- Set your preferred background ("dark" or "light")
      vim.o.background = "dark" -- change to "light" if you prefer the light theme

      -- Setup the plugin
      require("vscode").setup({
        -- Enable or disable transparency
        transparent = false,
        -- Use italicized comments (true/false)
        italic_comments = true,
        -- Optionally disable background for nvim-tree (useful for consistency)
        disable_nvimtree_bg = true,
        -- Use these tables to override specific colors or highlight groups if desired
        color_overrides = {},
        group_overrides = {},
      })

      -- Finally load the theme
      vim.cmd("colorscheme vscode")
    end,
  },
}
