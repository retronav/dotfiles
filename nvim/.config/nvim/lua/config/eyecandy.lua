local g = vim.g
local cmd = vim.cmd

g.material_theme_style = 'ocean'
g.material_terminal_italics = 1

cmd 'colorscheme material'

g.lightline = {colorscheme = 'material_vim'}

-- NERDTree settings
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader><C-n>', ':NERDTree<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader><C-t>', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader><C-f>', ':NERDTreeFind<CR>', {noremap = true})


-- Exit Vim if NERDTree is the only window remaining in the only tab.
cmd "autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"

-- Start NERDTree when Vim is started without file arguments.
cmd "autocmd StdinReadPre * let s:std_in=1"
cmd "autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif"

-- Refresh NERDTree when directory changes.
cmd [[
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END
]] 

-- nvim-treesitter setup
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript", "c", "typescript", "go", "html", "css", "lua", "rust"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
