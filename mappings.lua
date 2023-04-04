-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "[S]ave File" },
    -- harpoon
    ["<leader>ba"] = {
      require('harpoon.mark').add_file,
      desc = '[A]dd file'
    },
    ["<leader>bq"] = {
      require('harpoon.ui').toggle_quick_menu,
      desc = '[T]oggle quick menu'
    },
    ["<leader>bk"] = {
      function() require('harpoon.ui').nav_next() end,
      desc = 'Nav to next file'
    },
    ["<leader>bj"] = {
      function() require('harpoon.ui').nav_prev() end,
      desc = 'Nav to previous file'
    },
    ["<leader>br"] = {
      require('harpoon.mark').rm_file,
      desc = '[R]emove file'
    },
    ["<leader>bf"] = {
      function()
        local count = vim.v.count > 0 and vim.v.count or 1
        require('harpoon.ui').nav_file(count)
      end,
      desc = 'Nav to specific file'
    },
    -- projects
    ["<leader>fp"] = { "<CMD>Telescope projects<CR>", desc = "[F]ind [P]rojects" },
    -- spider
    ["w"] = { "<cmd>lua require('spider').motion('w')<CR>", desc = "Spider-w" },
    ["e"] = { "<cmd>lua require('spider').motion('e')<CR>", desc = "Spider-w" },
    ["b"] = { "<cmd>lua require('spider').motion('b')<CR>", desc = "Spider-w" },
    ["ge"] = { "<cmd>lua require('spider').motion('ge')<CR>", desc = "Spider-w" },
  },
  o = {
    ["w"] = { "<cmd>lua require('spider').motion('w')<CR>", desc = "Spider-w" },
    ["e"] = { "<cmd>lua require('spider').motion('e')<CR>", desc = "Spider-w" },
    ["b"] = { "<cmd>lua require('spider').motion('b')<CR>", desc = "Spider-w" },
    ["ge"] = { "<cmd>lua require('spider').motion('ge')<CR>", desc = "Spider-w" },
  },
  x = {
    ["w"] = { "<cmd>lua require('spider').motion('w')<CR>", desc = "Spider-w" },
    ["e"] = { "<cmd>lua require('spider').motion('e')<CR>", desc = "Spider-w" },
    ["b"] = { "<cmd>lua require('spider').motion('b')<CR>", desc = "Spider-w" },
    ["ge"] = { "<cmd>lua require('spider').motion('ge')<CR>", desc = "Spider-w" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
