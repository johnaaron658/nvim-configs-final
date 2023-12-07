local lsp = require('lsp-zero')
local cmp = require('cmp')
local mason = require('mason')
local masonlsp = require('mason-lspconfig')
local lspconfig = require('lspconfig')

-- lsp setup
lsp.preset('recommended')
lsp.on_attach(function(client, bufnr)
	-- keymaps when lsp is attached
	lsp.default_keymaps({ buffer = bufnr })

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
	vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end)
	vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format { async = true } end)
	vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end)
end)

-- mason setup
mason.setup({})
masonlsp.setup({
	-- lsps to be installed
	ensure_installed = {
		'html',
		'cssls',
		'tsserver',
		'csharp_ls',
		'eslint',
		'sumneko_lua',
		'dartls',
		'lua_ls',
	},
	handlers = {
		-- setup code for each language lsp
		lsp.default_setup,
		lspconfig.dartls.setup({}),
		lspconfig.lua_ls.setup({})
	},
})

-- completion setup
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- use tab to select completion 
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),

    -- Scroll up and down in the completion documentation
    ['<C-e>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})
