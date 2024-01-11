require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },

		python = { "black" },

		nix = { "alejandra" },

		json = { "fixjson" },

		rust = { "rustfmt" },
	},
})
