--vim.cmd('autocmd BufWritePost *.pp silent! !puppet-lint --fix %')
vim.cmd([[
  augroup puppet_lint
    autocmd!
    autocmd BufWritePost *.pp silent! !puppet-lint --fix %
  augroup END
]])
