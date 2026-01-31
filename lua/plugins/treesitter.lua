return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy=false,
    build = ":TSUpdate",
    opts = {
      indent = { enable = true },
      highlight = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "lua",
        "json",
        "jsonc",
        "javascript",
        "typescript",
        "markdown",
        "html",
        "css",
        "rust"
      },
    },
  },
}
