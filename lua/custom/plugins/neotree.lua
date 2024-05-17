-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_default',
      follow_current_file = {
        enabled = true,
      },
      window = {
        mappings = {
          ['e'] = 'none',
          ['t'] = 'none',
          ['H'] = 'none',
          ['o'] = 'open',
          [';'] = 'toggle_hidden',
          ['<C-T>'] = 'open_tabnew',
          ['oc'] = 'none',
          ['od'] = 'none',
          ['og'] = 'none',
          ['om'] = 'none',
          ['on'] = 'none',
          ['os'] = 'none',
          ['ot'] = 'none',
        },
      },
    },
  },
  event_handlers = {
    {
      event = 'file_opened',
      handler = function(file_path)
        require('neo-tree').close_all()
      end,
    },
  },

  -- default_component_configs = {
  --   icon = {
  --     folder_empty = "󰜌",
  --     folder_empty_open = "󰜌",
  --   },
  --   git_status = {
  --     symbols = {
  --       renamed   = "󰁕",
  --       unstaged  = "u",
  --     },
  --   },
  -- },
  -- document_symbols = {
  --   kinds = {
  --     File = { icon = "󰈙", hl = "Tag" },
  --     Namespace = { icon = "󰌗", hl = "Include" },
  --     Package = { icon = "󰏖", hl = "Label" },
  --     Class = { icon = "󰌗", hl = "Include" },
  --     Property = { icon = "󰆧", hl = "@property" },
  --     Enum = { icon = "󰒻", hl = "@number" },
  --     Function = { icon = "󰊕", hl = "Function" },
  --     String = { icon = "󰀬", hl = "String" },
  --     Number = { icon = "󰎠", hl = "Number" },
  --     Array = { icon = "󰅪", hl = "Type" },
  --     Object = { icon = "󰅩", hl = "Type" },
  --     Key = { icon = "󰌋", hl = "" },
  --     Struct = { icon = "󰌗", hl = "Type" },
  --     Operator = { icon = "󰆕", hl = "Operator" },
  --     TypeParameter = { icon = "󰊄", hl = "Type" },
  --     StaticMethod = { icon = '󰠄 ', hl = 'Function' },
  --   }
  -- },
  -- -- Add this section only if you've configured source selector.
  -- source_selector = {
  --   sources = {
  --     { source = "filesystem", display_name = " 󰉓 Files " },
  --     { source = "git_status", display_name = " 󰊢 Git " },
  --   },
  -- },
  -- Other options ...
}
