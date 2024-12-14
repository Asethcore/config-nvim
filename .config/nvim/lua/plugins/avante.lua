return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  config = function ()
    require("avante").setup({})
  end,
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "hrsh7th/nvim-cmp", -- completions
    },
    {
      "nvim-tree/nvim-web-devicons", -- for icons
    },
    {
      "zbirenbaum/copilot.lua", -- copilot
    },
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      config = function ()
        require("img-clip").setup({
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        })
      end,
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      ft = { "markdown", "Avante" },
      config = function ()
        require("render-markdown").setup({
          file_types = { "markdown", "Avante" },
        })
      end,
    },
  },
}
