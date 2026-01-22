return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- show buffers (not tabpages)
        separator_style = "slant", -- or "thin", "thick"
        diagnostics = "nvim_lsp",  -- show LSP diagnostics in tab
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    })
  end,
}

