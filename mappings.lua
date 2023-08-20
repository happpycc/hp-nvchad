local M = {}

M.nvimtree = {
  n = {
    -- toggle
    [",t"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.lspconfig = {
  n = {
    ["gK"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
  },
}
M.tabufline = {
  n = {
    -- close buffer + hide terminal buffer
    ["<leader><backspace>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>H"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },
  },
}

M.general = {
  n = {
    [",w"] = {
      function()
        vim.lsp.buf.format { async = false }
        vim.cmd "write"
      end,
      "LSP formatting && Save file",
    },
    [",q"] = { "<cmd> q <CR>", "Quit neovim" },

    ["H"] = { "^", "Goto line start" },
    ["L"] = { "$", "Goto line start" },
    ["J"] = { "5j", "Goto line start" },
    ["K"] = { "5k", "Goto line start" },

    -- switch between windows
    ["<leader>h"] = { "<C-w>h", "Window left" },
    ["<leader>l"] = { "<C-w>l", "Window right" },
    ["<leader>j"] = { "<C-w>j", "Window down" },
    ["<leader>k"] = { "<C-w>k", "Window up" },

    ["<leader>o"] = { "<cmd> only <CR>", "Close windows except current" },

    ["<A-F>"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },

  v = {
    ["H"] = { "^", "Goto line start" },
    ["L"] = { "$", "Goto line start" },
    ["J"] = { "5j", "Goto line start" },
    ["K"] = { "5k", "Goto line start" },
  },
  t = {
    ["<Esc>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },
}

return M
