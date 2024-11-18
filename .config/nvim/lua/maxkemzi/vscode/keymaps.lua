local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Clear search highlighting
keymap.set("n", "<Esc>", ":nohlsearch<cr>", opts)

-- Tab management
keymap.set("n", "<S-h>", "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>")
keymap.set("n", "<S-l>", "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>")
keymap.set("n", "<Leader>bd", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")
keymap.set("n", "<Leader>bo", "<cmd>lua require('vscode').action('workbench.action.closeOtherEditors')<CR>")

-- Window navigation
keymap.set("n", "<C-j>", "<cmd>lua require('vscode').action('workbench.action.navigateDown')<CR>")
keymap.set("n", "<C-k>", "<cmd>lua require('vscode').action('workbench.action.navigateUp')<CR>")
keymap.set("n", "<C-h>", "<cmd>lua require('vscode').action('workbench.action.navigateLeft')<CR>")
keymap.set("n", "<C-l>", "<cmd>lua require('vscode').action('workbench.action.navigateRight')<CR>")

keymap.set({ "n", "v" }, "<Leader>ca", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap.set({ "n", "v" }, "<Leader>cf", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap.set("n", "<Leader><Space>", "<cmd>Find<CR>")
keymap.set("n", "<Leader>/", "<cmd>lua require('vscode').action('workbench.action.findInFiles')<CR>")
keymap.set("n", "<Leader>ss", "<cmd>lua require('vscode').action('workbench.action.gotoSymbol')<CR>")
