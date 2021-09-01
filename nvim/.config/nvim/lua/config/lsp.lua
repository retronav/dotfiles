-- Everything in this file is basically ripped off from the lsp-config
-- README file, with some modifications.


local nvim_lsp = require('lspconfig')
local configs = require'lspconfig/configs' 
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not nvim_lsp.emmet_ls then    
  configs.emmet_ls = {    
    default_config = {    
      cmd = {'emmet-ls.cmd', '--stdio'};
      filetypes = {'html', 'css'};
      root_dir = function(fname)    
        return vim.loop.cwd()
      end;    
      settings = {};    
    };    
  }    
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "pyright", "gopls", "tsserver", "emmet_ls", "clangd", "html", "cssls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup{
    capabilities = capabilities,
    on_attach = require('completion').on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

require('nlua.lsp.nvim').setup(require('lspconfig'), {
  -- on_attach = custom_nvim_lspconfig_attach,

  -- Include globals you want to tell the LSP are real :)
  globals = {
    -- Colorbuddy
    "Color", "c", "Group", "g", "s",
  }
})

require'snippets'.use_suggested_mappings()
vim.g.completion_enable_snippet = 'snippets.nvim'
