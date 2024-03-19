require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "lua", "go", "typescript", "html", "css", "sql" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
