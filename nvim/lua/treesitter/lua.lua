local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    ensure_installed = {
      "go",
      "typescript",
      "javascript",
    },
    highlight = {
      enable = true,
      use_languagetree = true
    },
    indent = {
      enable = true
    }
}
