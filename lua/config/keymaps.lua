local map = vim.keymap.set
local opts = {
  noremap = true,
  silent = true,
}

map('n', ' ', ' ', opts)
map('x', ' ', ' ', opts)

-- Leader mappings
map('n', '<leader>d', ':bdelete<cr>', opts) -- delete buffer
map('n', '<leader>e', require('oil').open)
map('n', '<leader>f', vim.lsp.buf.format)   -- lsp formatting
map('n', '<leader>o', ':only!<cr>', opts)   -- only window
map('n', '<leader>w', ':set wrap!<cr>')     -- toggle wrap
map('n', '<leader>x', ':xa<cr>', opts)      -- save / quit
map('n', '<leader>z', ':only!<cr>', opts)   -- only window

map("n", "<tab>", "<cmd>e #<cr>")           -- switch buffers
map('n', 'H', ':bprev<cr>', opts)
map('n', 'L', ':bnext<cr>', opts)

map('n', '-', require('oil').open, opts) -- open files
map('n', 's', ':w<cr>', opts)            -- save
map('n', 'q', ':qa!<cr>', opts)          -- quit

map("v", "<", "<gv")                     -- better indenting
map("v", ">", ">gv")

map("n", "gw", "*N", opts) -- search word

-- Clear search with <esc>
map("n", "<esc>", "<cmd>noh<cr><esc>", opts)
map({ "n", "v" }, "<leader>d", [["_d]])

-- Highlights under cursor
map("n", "<leader>ui", vim.show_pos)

map({ "n", "v" }, "<leader>s", '!sort -u<cr>')

map("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })
map("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })

-- From theprimeagen
map("v", "J", ":m '>+1<CR>gv=gv") -- move lines
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "J", "mzJ`z")            -- better join
map("n", "<C-d>", "<C-d>zz")      -- scroll up / down
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")            -- search next
map("n", "N", "Nzzzv")            -- search prev

-- From lazy.nvim
--
-- Mini.Trailspace
map('n', '<leader>th', ':lua MiniTrailspace.highlight()<cr>')
map('n', '<leader>tl', ':lua MiniTrailspace.trim_last_lines()<cr>')
map('n', '<leader>tt', ':lua MiniTrailspace.trim()<cr>')
map('n', '<leader>tu', ':lua MiniTrailspace.unhighlight()<cr>')

-- Fuzzy matching
