-- https://github.com/mhartington/formatter.nvim

local util = require "formatter.util"

local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    java = {
      function ()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--plugin=prettier-plugin-java"
          },
          stdin = true,
          try_node_modules = true,
        }
      end,
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
