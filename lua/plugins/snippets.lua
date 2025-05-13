local M = {}

function M.setup()
  local luasnip = require("luasnip")
  
  -- Load VSCode-style snippets from friendly-snippets 
  require("luasnip.loaders.from_vscode").lazy_load()
  
  -- Configure luasnip for specific filetypes
  luasnip.filetype_extend("python", {})  -- Add custom Python snippets if needed
  luasnip.filetype_extend("lua", {})     -- Add custom Lua snippets if needed
  luasnip.filetype_extend("bash", {})    -- Add custom Bash snippets if needed
  luasnip.filetype_extend("sh", {})      -- Add custom Shell script snippets if needed
  
  -- Add ability to use snippets from other languages (useful for embedded languages)
  luasnip.filetype_extend("markdown", { "python", "lua", "bash", "sh" })
  
  -- Optional: Add custom snippets 
  -- Example snippet for Python:
  --[[
  luasnip.add_snippets("python", {
    luasnip.snippet("def", {
      luasnip.text_node("def "),
      luasnip.insert_node(1, "function_name"),
      luasnip.text_node("("),
      luasnip.insert_node(2, "args"),
      luasnip.text_node("):\n\t"),
      luasnip.insert_node(0),
    }),
  })
  --]]
end

return M
end

return M
