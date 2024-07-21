return {
  {
    "MunifTanjim/nui.nvim"
  },
  {
    "rcarriga/nvim-notify"
  },
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
    },
    config = function()
      local noice = require("noice")
      noice.setup({
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        }, 
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },   
      })
    end
  },
  {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      local bufferline = require("bufferline")
      bufferline.setup({
        options = {
          mode = "buffers",
          style_preset = bufferline.style_preset.minimal,
          themable = false,
          numbers = "ordinale",
          diagnostics = "nvim_lsp",
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              text_align = "left",
              separator = true
            }
          }
        }
      })
      vim.keymap.set({'n','c'},'<Leader>n','<cmd>BufferLineCycleNext<cr>')
      vim.keymap.set({'n','c'},'<Leader>p','<cmd>BufferLineCyclePrev<cr>')
    end
  }
}

