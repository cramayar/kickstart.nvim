return {
  'folke/tokyonight.nvim',
  name = 'tokyonight',

  config = function()
    require('tokyonight').setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      style = 'moon', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = 'day', -- The theme is used when the background is set to light
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = 'dark', -- style for sidebars, see below
        floats = 'dark', -- style for floating windows
      },
      day_brightness = 0.3, -- Adjust the brightnes of the color of the "Day" style
      dim_inactive = false, -- dims inactive window
      lualine_bold = false, -- When `true` section headers in the lua line will be bold.
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors) end,
    }

    vim.cmd 'colorscheme tokyonight'
  end,
}
