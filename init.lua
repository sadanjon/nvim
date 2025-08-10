require("config.bootstrap")

-- Theme
vim.cmd.colorscheme('unokai')

-- Basic settings
vim.opt.number         = true  -- Line numbers
vim.opt.relativenumber = false -- Relative line numbers
vim.opt.cursorline     = true  -- Highlight cursor line
vim.opt.wrap           = false -- Don't wrap lines
vim.opt.scrolloff      = 10    -- Keep some slack to the bottom
vim.opt.sidescrolloff  = 10    -- Keep some slack to the left

-- Indentation
vim.opt.tabstop     = 4    -- Tab width
vim.opt.shiftwidth  = 4    -- Indent width
vim.opt.softtabstop = 4    -- Soft tab width
vim.opt.expandtab   = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart auto indenting
vim.opt.autoindent  = true -- Copy indent from previous line

-- Search settings
vim.opt.ignorecase = true  -- Case insensitive search
vim.opt.smartcase  = true  -- Case sensitive search if using uppercase
vim.opt.hlsearch   = true -- Don't highlight search results
vim.opt.incsearch  = true  -- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true                         -- Enable 24-bit color
vim.opt.signcolumn    = "yes"                        -- Always show sign column
vim.opt.showmatch     = true                         -- Highlight matching brackets
vim.opt.matchtime     = 2                            -- How long to show matching bracket
vim.opt.cmdheight     = 1                            -- Command line height
vim.opt.completeopt   = "menuone,noinsert,noselect"  -- Completion options 
vim.opt.showmode      = false                        -- Don't show mode in command line 
vim.opt.pumheight     = 10                           -- Popup menu height 
vim.opt.pumblend      = 10                           -- Popup menu transparency 
vim.opt.winblend      = 0                            -- Floating window transparency 
vim.opt.conceallevel  = 0                            -- Don't hide markup 
vim.opt.concealcursor = ""                           -- Don't hide cursor line markup 
vim.opt.lazyredraw    = true                         -- Don't redraw during macros
vim.opt.synmaxcol     = 300                          -- Syntax highlighting limit 

-- File handling
vim.opt.backup      = false                           -- Don't create backup files
vim.opt.writebackup = false                           -- Don't create backup before writing
vim.opt.swapfile    = false                           -- Don't create swap files
vim.opt.undofile    = true                            -- Persistent undo
vim.opt.undodir     = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.opt.updatetime  = 300                             -- Faster completion
vim.opt.timeoutlen  = 500                             -- Key timeout duration
vim.opt.ttimeoutlen = 0                               -- Key code timeout
vim.opt.autoread    = true                            -- Auto reload files changed outside vim
vim.opt.autowrite   = false                           -- Don't auto save

-- File exploring
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Behavior settings
vim.opt.hidden                          = true               -- Allow hidden buffers
vim.opt.errorbells                      = false              -- No error bells
vim.opt.backspace                       = "indent,eol,start" -- Better backspace behavior
vim.opt.autochdir                       = false              -- Don't auto change directory
vim.opt.iskeyword:append("-")                                -- Treat dash as part of word
vim.opt.path:append("**")                                    -- include subdirectories in search
vim.opt.wildignore:append("**/node_modules/**")
vim.opt.selection                       = "exclusive"        -- Selection behavior
vim.opt.mouse                           = "a"                -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")                      -- Use system clipboard
vim.opt.modifiable                      = true               -- Allow buffer modifications
vim.opt.encoding                        = "UTF-8"            -- Set encoding

-- Folding settings
-- vim.opt.foldmethod = "expr"                             -- Use expression for folding
-- vim.wo.vim.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
-- vim.opt.foldlevel = 99                                  -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true -- Horizontal splits go below
vim.opt.splitright = true -- Vertical splits go right

-- Key mappings
vim.g.mapleader      = " " -- Set leader key to space
vim.g.maplocalleader = " " -- Set local leader key (NEW)

-- wildmenu
vim.opt.wildmenu = true
vim.opt.wildoptions = "pum,tagfile,fuzzy"
vim.opt.wildmode = "noselect:full"

-- Normal mode mappings
vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Center screen when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- File exploring
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>re", ":NvimTreeFindFile<CR>", { desc = "Reveal file in explorer" })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":exe 'edit ' . stdpath('config') . '/init.lua'<CR>", { desc = "Edit config" })

-- Functions

-- Copy full filepath
vim.keymap.set("n", "<leader>pa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("file:", path)
end)

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Set filetype-specific settings

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "sql" },
  callback = function()
      vim.opt_local.formatprg = "sqlformat --reindent -"
  end,
})

-- Neovide configuration
if vim.g.neovide then
    vim.o.guifont = "CaskaydiaMono Nerd Font,Cascadia Mono:h12"

    vim.g.neovide_scroll_animation_length = 0.1

    vim.keymap.set("n", "<C-->", function()
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1
    end)

    vim.keymap.set("n", "<C-=>", function()
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
    end)
end

require("config.setup")

require("lsp.ts_ls")
