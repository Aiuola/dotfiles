local plugins = {
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    config = function ()
      require "plugins.configs.telescope"
      require "custom.configs.telescope"
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    event = "VeryLazy",
    run = function()
      -- To install manually
      -- :call mkdp#util#install()
      vim.fn["mkdp#util#install"]()
    end,
    config = function ()
      require "custom.configs.markdown"
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      require("dapui").setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      require "custom.configs.dap"
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "js-debug-adapter",
        "prettier",
        "typescript-language-server",
        "jdtls"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'ThePrimeagen/vim-be-good'
  }
}
return plugins
