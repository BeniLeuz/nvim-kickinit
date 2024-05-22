return {

  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = { 'lua_ls', 'rubocop', 'ruby_ls', 'tsserver', 'cssls', 'solargraph', 'clangd', 'html', 'jdtls'},
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }

      lspconfig.html.setup {
        capabilities = capabilities,
        filetypes = { 'html', 'md' },
      }

      lspconfig.clangd.setup {
        capabilities = capabilities,
      }

      lspconfig.ruby_ls.setup {
        capabilities = capabilities,
        filetypes = { 'ruby' },
      }

      lspconfig.solargraph.setup {
        capabilities = capabilities,
        filetypes = { 'ruby', 'eruby' },
      }

      lspconfig.jdtls.setup {
        capabilities = capabilities,
      }

      -- not actually needed cause solargraph crazy fr
      --      lspconfig.rubocop.setup {
      --        capabilities = capabilities,
      --      }

      lspconfig.tsserver.setup {
        capabilities = capabilities,
      }

      lspconfig.cssls.setup {
        capabilities = capabilities,
      }

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
    end,
  },
}
