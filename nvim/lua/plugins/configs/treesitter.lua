require("nvim-treesitter").install { "lua", "vim", "vimdoc", "tsx", "html", "css", "go", "python", "terraform", "json", "yaml", "rust" , "markdown", "markdown_inline"}

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    -- highlight
    if not pcall(vim.treesitter.start, args.buf) then
      return
    end
    -- indent
    if vim.treesitter.query.get(vim.treesitter.language.get_lang(args.match), "indents") then
      vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
