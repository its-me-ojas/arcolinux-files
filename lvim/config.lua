-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.transparent_window = false
lvim.colorscheme = "vscode"
vim.opt.wrap = true
lvim.plugins = {
  -- "tiagovla/tokyodark.nvim",
  'Mofiqul/vscode.nvim',
  "cpea2506/one_monokai.nvim",
  -- "folke/tokyonight.nvim",
  "catppuccin/nvim",
  -- "Mofiqul/dracula.nvim",
  {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BraceyStop", "BraceyReload", "BraceyEval" },
    build = "npm install --prefix server",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS functions: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "tpope/vim-surround"
  },
  {
    'andweeb/presence.nvim'
  },

}
-- Enable cursor movement in insert mode using CTRL + H/J/K/L
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
