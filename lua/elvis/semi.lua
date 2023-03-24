-- define the autocmd to run semistandard on save
vim.cmd([[
augroup semistandard
    autocmd!
    autocmd BufWritePost *.js silent !semistandard % --fix
    autocmd BufWritePost *.js silent :edit
augroup END
]])

-- set autoread option
vim.opt.autoread = true

-- set syntastic options
vim.g.syntastic_javascript_checkers = {'standard'}
vim.g.syntastic_javascript_standard_exec = 'semistandard'

-- load the ftplugin scripts
vim.cmd("runtime! ftplugin/*.lua")

