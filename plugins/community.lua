return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.project.project-nvim" },             -- project manager
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" }, -- rainbow parentheses
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- motion
  { import = "astrocommunity.motion.leap-nvim" }
}
