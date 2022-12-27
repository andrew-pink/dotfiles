require("nvim-tree").setup({
    hijack_cursor = true,
      view = {
        centralize_selection = true,
        adaptive_size = true,
        relativenumber = true,

        mappings = {
          list = {
            { key = "h", action = "dir_up" },
            { key = "l", action = "edit" },
            { key = "u", action = "cd" },
            { key = "i", action = "toggle_file_info" },
          },
        },
      },
    })
