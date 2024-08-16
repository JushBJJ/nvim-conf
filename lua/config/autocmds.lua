vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv()[0]) == 1 then
      vim.cmd.cd(vim.fn.argv()[0])
    end
  end,
})
