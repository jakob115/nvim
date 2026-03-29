return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.pairs").setup() -- ( -> ()
			require("mini.splitjoin").setup() -- gS to split current block into rows
			require("mini.comment").setup()
            -- gc: 
                -- gcc .... current line
                -- gciB .... current inner block
                -- gcaB .... current whole block
			require("mini.move").setup() -- visual mode: alt-lkjh
			require("mini.surround").setup()
            -- sa:
                -- saiw) .... surround current word with (word)
                -- saiw( .... surround current word with ( word )

            require("mini.indentscope").setup({
                draw = { delay = 0 },
                symbol = "|",
            })
            end,
	},
}
