-- Autocomplete keybindings
local cmd = vim.cmd
cmd [[
nnoremap <silent> K               <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> ff		  <Cmd>Telescope find_files<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" LSP keybindings.
imap <silent> <C-Space> <Plug>(completion_trigger)
nmap <space>ca         lua vim.lsp.buf.code_action()
nmap <space>f          lua vim.lsp.buf.formatting()
" Refrain from using arrow keys ;)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
]]

-- Custom commands.
cmd [[
command! ExtTerminal         lua vim.cmd("!wt.exe -d "..vim.loop.cwd())
command! Format              lua vim.lsp.buf.formatting()
]]
