local map = vim.keymap.set

-- general mappings
map("n", "<C-s>", "<cmd> w <CR>") -- Save file
map("n", "<C-c>", "<cmd> %y+ <CR>") -- copy whole filecontent
map("n", "<A-S-Down>", ":m .+1<CR>==")
map("n", "<A-S-Up>", ":m .-2<CR>==")

-- nvimtree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
map("n", "<C-h>", "<cmd> NvimTreeFocus <CR>")

-- telescope
map("n", "<C-S-f>", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map("n", "<C-f>", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

-- bufferline, cycle buffers
map("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
map("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
map("n", "<C-q>", "<cmd> bd <CR>")

-- comment.nvim
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end)

map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- format
map("n", "<leader>fm", function()
  require("conform").format()
end)
