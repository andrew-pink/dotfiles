local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>e", mark.add_file, { desc = 'Add file to harpoon' })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = 'Toggle happoon quick menu' })

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = 'Move to harpoon 1' })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = 'Move to harpoon 2' })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = 'Move to harpoon 3' })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = 'Move to harpoon 4' })
