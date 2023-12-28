return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function() 
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "ruby", "lua", "java", "javascript"}, 
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true
    })
  end
}
