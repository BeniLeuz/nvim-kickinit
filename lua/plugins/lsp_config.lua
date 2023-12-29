return {
  {
    "williamboman/mason.nvim", 
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim", 
    config = function() 
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rubocop", "ruby_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig", 
    config = function() 
      local lspconfig = require("lspconfig")

      -- call setup for each lsp that i need
      -- TODO: automate this?
      lspconfig.lua_ls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}
