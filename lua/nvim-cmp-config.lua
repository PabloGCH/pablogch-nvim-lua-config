local cmp = require'cmp'

-- Global setup.
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item()
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
    }, {
        { name = 'buffer' },
    })
})
-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})
-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
-- Setup lspconfig.
local omnisharp_bin = "/usr/lib/omnisharp/OmniSharp"
local project_library_path = vim.fn.getcwd() .. "/node_modules"
local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}
local csharp_cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(vim.fn.getpid())}
local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp = require('lspconfig')


--local project_library_path = "/usr/lib/node_modules/@angular/language-server/index.js"
--local angular_cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}

lsp.angularls.setup{
  -- cmd = angular_cmd,
  -- on_new_config = function(new_config,new_root_dir)
    --new_config.cmd = angular_cmd
  --end,
}

-- typescript and javascript
lsp.tsserver.setup{}
-- Rust

require("rust-tools").setup()

-- css
lsp.cssls.setup{
    capabilities = caps
}
-- html
lsp.html.setup{
    capabilities = caps
}
local csharp_capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()) 

function omni_on_attach(client)
    client.server_capabilities.semanticTokensProvider = nil
end

lsp.omnisharp.setup{
    cmd = csharp_cmd,
    capabilities = caps,
    on_attach = omni_on_attach
}
