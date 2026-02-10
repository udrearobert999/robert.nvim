-- lua/robert/plugins/git.lua

return {
  {
    'tpope/vim-fugitive',
    cmd = {
      'Git',
      'Gstatus',
      'Gcommit',
      'Gpush',
      'Gpull',
      'Gdiffsplit',
    },
  },
}
