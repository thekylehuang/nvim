return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      local art = [[
 ██████╗ ██╗   ██╗███████╗██████╗ ████████╗██╗   ██╗██████╗ ███████╗
██╔═══██╗██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔════╝
██║   ██║██║   ██║█████╗  ██████╔╝   ██║   ██║   ██║██████╔╝█████╗  
██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗   ██║   ██║   ██║██╔══██╗██╔══╝  
╚██████╔╝ ╚████╔╝ ███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║███████╗
 ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
]]

      -- Set dashboard colors
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#D79921", bold = true })
      vim.api.nvim_set_hl(0, "DashboardDesc", { fg = "#FBF1C7" })
      vim.api.nvim_set_hl(0, "DashboardKey", { fg = "#FF4A33" })
      vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#D65D0E", italic = true })

      require("dashboard").setup {
        theme = "doom",
        config = {
          header = vim.split(art, "\n"),
          center = {
            {
              desc = "New file",
              key = "e",
              key_format = " %s",
              action = "enew"
            },
            {
              desc = "Manage LSPs",
              key = "m",
              key_format = " %s",
              action = "Mason"
            },
            {
              desc = "Manage Plugins",
              key = "l",
              key_format = " %s",
              action = "Lazy"
            },
            {
              desc = "Update all Lazy.nvim Plugins",
              key = "u",
              key_format = " %s",
              action = "Lazy sync"
            },
            {
              desc = "Open Dashboard Config Files",
              key = "d",
              key_format = " %s",
              action = "e ~/.config/nvim/lua/plugins/dashboard.lua"
            }
          },
          footer = { "\"One is not born, but rather becomes, a rustacean.\"" },
          vertical_center = true,
        }
      }
    end,
    dependencies = { { "nvim-mini/mini.icons" } }
  }
}
