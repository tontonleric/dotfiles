-- Configuration de base et mapping
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Configuration des extensions de fichiers pour Salesforce
vim.filetype = on

vim.filetype.add({
  extension = {
    cls = 'apexcode',
    apex = 'apexcode',
    trigger = 'apexcode',
    soql = 'soql',
    sosl = 'sosl',
  }
})



