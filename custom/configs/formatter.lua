-- https://github.com/mhartington/formatter.nvim
local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    java = {
      require("formatter.filetypes.java").clangformat
    },
    lua = {
      --require("formatter.filetypes.lua").stylua
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
