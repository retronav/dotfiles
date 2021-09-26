-- General :set settings
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.number = true

-- General :let settings
function let(key, val)
	vim.cmd('let' .. key .. ' = ' .. val)
end

