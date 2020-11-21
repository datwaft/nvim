-- =========================
-- COLORSCHEME CONFIGURATION
-- =========================
-- Created by datwaft [github.com/datwaft]

return function()
   -- Activate 24 bit colors
   vim.o.termguicolors = true
   -- Colorscheme modifies cursor color
   vim.g.nightflyCursorColor = 1
   -- Set colorscheme
   vim.cmd [[ colorscheme nightfly ]]
end
