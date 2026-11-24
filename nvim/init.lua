require "options"
require "mappings"
require "commands"

-- bootstrap plugins & lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim" -- path where its going to be installed

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require "plugins"

vim.cmd "colorscheme carbonfox"

vim.lsp.config("gopls", {
    cmd = {"/home/gustavo/path/go/bin/gopls"},
    settings = {
        gopls = {
            hoverKind = "FullDocumentation",
            usePlaceholders = true,
            staticcheck = true,
            hints = {
                compositeLiteralTypes = true,
                compositeLiteralFields = true,
                parameterNames = true,
                assignVariableTypes = true,
                constantValues = true,
                rangeVariableTypes = true,
            },
        },
    },
})
vim.lsp.enable("gopls")
vim.diagnostic.config({
    virtual_lines = {
        overflow = "wrap",
    },
})
