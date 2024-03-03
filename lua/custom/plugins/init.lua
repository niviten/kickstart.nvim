-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Getting you where you want with the fewest keystrokes
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- local mark = require 'harpoon.mark'
      -- local ui = require 'harpoon.ui'
      --
      -- vim.keymap.set('n', '<leader>a', mark.add_file)
      -- vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu)

      local harpoon = require("harpoon")

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function() harpoon:list():append() end)
      vim.keymap.set('n', '<leader>e',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end
      )

      vim.keymap.set('n', '<leader>1', function() harpoon:list():select(1) end)
      vim.keymap.set('n', '<leader>2', function() harpoon:list():select(2) end)
      vim.keymap.set('n', '<leader>3', function() harpoon:list():select(3) end)
      vim.keymap.set('n', '<leader>4', function() harpoon:list():select(4) end)
      vim.keymap.set('n', '<leader>5', function() harpoon:list():select(5) end)
      vim.keymap.set('n', '<leader>6', function() harpoon:list():select(6) end)
      vim.keymap.set('n', '<leader>7', function() harpoon:list():select(7) end)
      vim.keymap.set('n', '<leader>8', function() harpoon:list():select(8) end)
      vim.keymap.set('n', '<leader>9', function() harpoon:list():select(9) end)
      vim.keymap.set('n', '<leader>0', function() harpoon:list():select(0) end)

      -- Toggle previous & next buffers stored within Harpoon list
      -- vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end)
      -- vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end)
    end,
  },

  -- Git stuffs
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    end
  },

  -- Autopairs
  'jiangmiao/auto-pairs',
}
