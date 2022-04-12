local lsp_installer = require'nvim-lsp-installer'

local handlers = require'user.lsp.handlers'

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = handlers.on_attach,
		capabilities = handlers.capabilities,
	}

  if server.name == 'sumneko_lua' then
	  local sumneko_opts = require('user.lsp.settings.sumneko')
	  opts = vim.tbl_deep_extend('force', sumneko_opts, opts)
	end

	server:setup(opts)
end)

