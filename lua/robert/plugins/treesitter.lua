-- lua/robert/plugins/treesitter.lua

return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    branch = 'master',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'lua',
          'vim',
          'vimdoc',
          'javascript',
          'typescript',
          'json',
          'yaml',
          'html',
          'css',
          'markdown',
          'markdown_inline',
          'rust',
          'go',
          'python',
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },
}
