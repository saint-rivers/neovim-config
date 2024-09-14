return {
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle Pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
      { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>",          desc = "Delete Other Buffers" },
      { "<leader>br", "<Cmd>BufferLineCloseRight<CR>",           desc = "Delete Buffers to the Right" },
      { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",            desc = "Delete Buffers to the Left" },
      { "<S-h>",      "<cmd>BufferLineCyclePrev<cr>",            desc = "Prev Buffer" },
      { "<S-l>",      "<cmd>BufferLineCycleNext<cr>",            desc = "Next Buffer" },
      { "[b",         "<cmd>BufferLineCyclePrev<cr>",            desc = "Prev Buffer" },
      { "]b",         "<cmd>BufferLineCycleNext<cr>",            desc = "Next Buffer" },
    },
  },
  { "vim-airline/vim-airline" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      local logo = [[
    ██╗  ██╗███████╗██╗     ██╗      ██████╗     ██╗    ██╗ ██████╗ ██████╗ ██╗     ██████╗
        ██║  ██║██╔════╝██║     ██║     ██╔═══██╗    ██║    ██║██╔═══██╗██╔══██╗██║     ██╔══██╗██╗
        ███████║█████╗  ██║     ██║     ██║   ██║    ██║ █╗ ██║██║   ██║██████╔╝██║     ██║  ██║╚═╝
        ██╔══██║██╔══╝  ██║     ██║     ██║   ██║    ██║███╗██║██║   ██║██╔══██╗██║     ██║  ██║▄█╗
        ██║  ██║███████╗███████╗███████╗╚██████╔╝    ╚███╔███╔╝╚██████╔╝██║  ██║███████╗██████╔╝▀═╝
        ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝      ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝
  ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = vim.split(logo, "\n"), --your header
          center = {
            {
              icon = '  ',
              icon_hl = 'Title',
              desc = 'Find File           ',
              desc_hl = 'String',
              key = 'b',
              keymap = 'SPC f f',
              key_hl = 'Number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(2)'
            },
            {
              icon = '  ',
              desc = 'Find Dotfiles',
              key = 'f',
              keymap = 'SPC f d',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(3)'
            },
          },
          footer = {} --your footer
        } }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  }
}
