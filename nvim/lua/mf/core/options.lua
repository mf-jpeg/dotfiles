local opt = vim.opt

-- General
--
-- wrap: Turn off line wrapping.
-- cursorline: Enable cursor line.
-- backspace: Delete indent level by pressing backspace.
-- clipboard: Make clipboard register work properly.
-- swapfile: Disable swap file.
-- mouse: Disable mouse clicks.
opt.wrap = false
opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.clipboard = ""
opt.swapfile = false
opt.mouse = ""

-- Appearance
--
-- termguicolors: Enable all colors.
-- colorscheme: Set colorscheme.
-- SignColumn: Remove sign column color.
opt.termguicolors = true
vim.cmd("colorscheme vim")
vim.cmd([[highlight SignColumn ctermbg=NONE guibg=NONE]])

-- Number line
--
-- number: Enable line numbers.
-- relativenumber: Enable relative numbers.
-- signcolumn: Enable diagnostics.
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- Tabs & Indentation
--
-- tabstop: Replace each tab with X spaces.
-- shiftwidth: Each level is represented by X spaces.
-- expandtab: Insert X spaces when pressing tab.
-- autoindent: Keep indent level when opening a line.
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Searching
--
-- ignorecase: Ignore casing when searching.
-- smartcase: Don't ignore casing when an uppercase character is detected.
opt.ignorecase = true
opt.smartcase = true

-- Splits
--
-- splitright: Split vertical window to the right.
-- splitbelow: Split horizontal window to the bottom.
opt.splitright = true
opt.splitbelow = true

-- Clipboard
--
-- FocusGained: Sync clipboard on focus gain.
-- FocusLost: Sync clipboard on focus lost.
vim.api.nvim_create_autocmd({ "FocusGained" }, {
    pattern = { "*" },
    command = [[call setreg("@", getreg("+"))]],
})

vim.api.nvim_create_autocmd({ "FocusLost" }, {
    pattern = { "*" },
    command = [[call setreg("+", getreg("@"))]],
})
