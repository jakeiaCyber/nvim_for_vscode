local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- clipboard
vim.opt.clipboard = "unnamedplus"
-- cmdheight
vim.opt.cmdheight = 1
keymap("n", ";", ":")
-- better indent handling
keymap("v", "<S-Tab>", "<gv", opts)
keymap("v", "<Tab>", ">gv", opts)
-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- H L -> fastmove
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)
-- split window
keymap("n", "\\", "<cmd>lua require('vscode').action('workbench.action.splitEditor')<CR>")
keymap("n", "|", "<cmd>lua require('vscode').action('workbench.action.splitEditorDown')<CR>")
-- navigate window
keymap("n", "<C-h>", "<cmd>lua require('vscode').action('workbench.action.navigateLeft')<CR>")
keymap("n", "<C-l>", "<cmd>lua require('vscode').action('workbench.action.navigateRight')<CR>")
keymap("n", "<C-j>", "<cmd>lua require('vscode').action('workbench.action.navigateDown')<CR>")
keymap("n", "<C-k>", "<cmd>lua require('vscode').action('workbench.action.navigateUp')<CR>")
-- general keymaps
keymap("n", "<leader>e", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")
keymap("n", "<leader>w", "<cmd>lua require('vscode').action('workbench.action.files.save')<CR>")
keymap("n", "]d", "<cmd>lua require('vscode').action('editor.action.marker.nextInFiles')<CR>")
keymap("n", "[d", "<cmd>lua require('vscode').action('editor.action.marker.prevInFiles')<CR>")
keymap("n", "<leader>db", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap("n", "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
-- find
keymap("n", "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap("n", "<leader>fw", "<cmd>lua require('vscode').action('workbench.action.quickTextSearch')<CR>")
keymap("n", "<leader>fp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap("n", "<leader>ft", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap("n", "<leader>fc", [[<cmd>lua require('vscode').action('workbench.action.findInFiles', { args = { query = vim.fn.expand("<cword>") } })<CR>]])
-- problem
keymap("n", "<leader>xx", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
-- tab
keymap("n", "<leader>cc", "<cmd>Tabclose<CR>")
keymap("n", "<Tab>", "<cmd>Tabnext<CR>")
keymap("n", "<S-Tab>", "<cmd>Tabprev<CR>")
-- expand keymaps
keymap("n", "<cr>", "<cmd>lua require('vscode').action('expand_region')<CR>")
-- project manager keymaps
keymap("n", "<leader>pa", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>")
keymap("n", "<leader>po", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>")
keymap("n", "<leader>pe", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>")
-- dynoFileUtils keymaps
keymap("n", "<leader>na", "<cmd>lua require('vscode').action('dynoFileUtils.newItems')<CR>")
-- code runner keymaps
keymap("n", "<leader>cr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
-- lsp keymaps
keymap("n", "K", "<cmd>lua require('vscode-neovim').action('editor.action.showHover')<CR>")
keymap("n", "gI", "<cmd>lua require('vscode-neovim').action('editor.action.goToImplementation')<CR>")
keymap("n", "gd", "<cmd>lua require('vscode-neovim').action('editor.action.revealDefinition')<CR>")
keymap("n", "gD", "<cmd>lua require('vscode-neovim').action('editor.action.revealDeclaration')<CR>")
keymap("n", "gr", "<cmd>lua require('vscode-neovim').action('editor.action.goToReferences')<CR>")
keymap("n", "gy", "<cmd>lua require('vscode-neovim').action('editor.action.goToTypeDefinition')<CR>")
keymap("n", "<Leader>la", "<cmd>lua require('vscode-neovim').action('editor.action.quickFix')<CR>")
keymap("n", "<Leader>lG", "<cmd>lua require('vscode-neovim').action('workbench.action.showAllSymbols')<CR>")
keymap("n", "<Leader>lR", "<cmd>lua require('vscode-neovim').action('editor.action.goToReferences')<CR>")
keymap("n", "<Leader>lr", "<cmd>lua require('vscode-neovim').action('editor.action.rename')<CR>")
keymap("n", "<Leader>ls", "<cmd>lua require('vscode-neovim').action('workbench.action.gotoSymbol')<CR>")
keymap("n", "<Leader>lf", "<cmd>lua require('vscode-neovim').action('editor.action.formatDocument')<CR>")
