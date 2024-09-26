local M = {}

M.set_tab_options = function()
  -- set default values
  vim.o.tabstop = 4
  vim.o.shiftwidth = 4
  vim.o.softtabstop = 4
  vim.o.expandtab = false

  local exceptions = {
    { 'lua', 2, 2, 2, true },
    { 'yaml', 2, 2, 2, true },
  }

  -- get the current filetype
  local current_filetype = vim.bo.filetype

  -- check if the current filetype is in the specified list
  for _, setting in ipairs(exceptions) do
      local exception_filetype, tabstop, shiftwidth, softtabstop, enable = unpack(setting)

      if current_filetype == exception_filetype and enable then

          -- set buffer-local options directly
          vim.bo.tabstop = tabstop
          vim.bo.shiftwidth = shiftwidth
          vim.bo.softtabstop = softtabstop
          vim.bo.expandtab = true

          return
      end
  end
end

return M

