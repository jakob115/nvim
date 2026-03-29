-- set tab length
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- swap files
vim.opt.swapfile = false

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true })

-- keymaps
vim.keymap.set("n", "<leader>gg", "gg0")
vim.keymap.set("n", "<leader>G", "G$")

-- Inline diagnostics
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true
})

