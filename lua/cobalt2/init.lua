local M = {}

local colors = {
  bg = "#193549",
  fg = "#ffffff",
  comment = "#003146",
  cyan = "#9effff",
  yellow = "#ffc600",
  orange = "#ff9d00",
  pink = "#ff628c",
  green = "#ccff99",
  blue = "#0088ff",
  magenta = "#fb94ff",
  light = "#e1efff",
  grey = "#aaaaaa",
  black = "#000000",
  line = "#1F4662",
  selection = "#0050A4",
}

local function hl(group, opts)
  opts = opts or {}
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  -- basic groups
  hl("Normal", { fg = colors.fg, bg = colors.bg })
  hl("CursorLine", { bg = colors.line })
  hl("CursorColumn", { bg = colors.line })
  hl("Visual", { bg = colors.selection })
  hl("Search", { bg = colors.yellow, fg = colors.black })
  hl("IncSearch", { bg = colors.yellow, fg = colors.black })
  hl("MatchParen", { bg = colors.line, underline = true })

  -- UI
  hl("StatusLine", { fg = colors.fg, bg = colors.blue })
  hl("StatusLineNC", { fg = colors.grey, bg = colors.bg })
  hl("TabLine", { fg = colors.grey, bg = colors.bg })
  hl("TabLineSel", { fg = colors.fg, bg = colors.line, bold = true })
  hl("TabLineFill", { fg = colors.grey, bg = colors.blue })
  hl("VertSplit", { fg = colors.line, bg = colors.bg })
  hl("LineNr", { fg = colors.grey, bg = colors.bg })
  hl("CursorLineNr", { fg = colors.yellow, bg = colors.line, bold = true })
  hl("SignColumn", { bg = colors.bg })
  hl("Pmenu", { fg = colors.fg, bg = "#15232d" })
  hl("PmenuSel", { fg = colors.bg, bg = colors.yellow })

  -- Syntax
  hl("Comment", { fg = colors.comment, italic = true })
  hl("Constant", { fg = colors.pink })
  hl("String", { fg = colors.green })
  hl("Identifier", { fg = colors.light })
  hl("Function", { fg = colors.yellow })
  hl("Statement", { fg = colors.orange })
  hl("Type", { fg = colors.cyan, italic = true })
  hl("Special", { fg = colors.magenta })
  hl("Underlined", { underline = true })
  hl("Error", { fg = colors.pink, bg = "#A22929" })
  hl("Todo", { fg = colors.black, bg = colors.yellow })
  hl("Operator", { fg = colors.orange })
  hl("Keyword", { fg = colors.orange })
  hl("PreProc", { fg = colors.cyan })
  hl("Argument", { fg = colors.light })

  -- Extra highlights to better match VS Code tokenization
  -- Punctuation/brackets in pink for better visibility
  hl("Punctuation", { fg = colors.pink })
  hl("Delimiter", { fg = colors.pink })
  hl("Bracket", { fg = colors.pink })
  hl("TSPunctDelimiter", { fg = colors.pink })
  hl("TSPunctBracket", { fg = colors.pink })
  hl("TSPunct", { fg = colors.pink })

  -- Parameter / argument highlights (treesitter and generic)
  hl("Parameter", { fg = colors.light })
  hl("TSParameter", { fg = colors.light })
  hl("TSParameterReference", { fg = colors.light })

  -- Make `self` and common variable names more visible (Python / treesitter)
  hl("pythonSelf", { fg = colors.light, italic = true })
  hl("Variable", { fg = colors.light })
  hl("TSVariable", { fg = colors.light })
  hl("TSVariableBuiltin", { fg = colors.pink })

  -- Treesitter comment group (darker)
  hl("TSComment", { fg = colors.comment, italic = true })

  -- Make `local` and other keywords match function color (yellow)
  hl("Keyword", { fg = colors.yellow })
  hl("TSKeyword", { fg = colors.yellow })
  hl("StorageClass", { fg = colors.yellow })

  -- Class properties should be orange
  hl("Property", { fg = colors.orange })
  hl("TSProperty", { fg = colors.orange })

  -- Booleans darker red/pink
  hl("Boolean", { fg = "#A22929" })

  -- Brighter strings
  hl("String", { fg = colors.green })

  -- Treesitter function / keyword / operator mappings
  hl("TSFunction", { fg = colors.yellow })
  hl("TSOperator", { fg = colors.orange })

  -- Treesitter function / keyword mappings
  hl("TSFunction", { fg = colors.yellow })
  hl("TSKeyword", { fg = colors.orange })
  hl("TSOperator", { fg = colors.orange })

  -- Git signs
  hl("DiffAdd", { fg = colors.green })
  hl("DiffChange", { fg = colors.orange })
  hl("DiffDelete", { fg = colors.pink })

  -- LSP diagnostics
  hl("DiagnosticError", { fg = "#A22929" })
  hl("DiagnosticWarn", { fg = colors.yellow })
  hl("DiagnosticInfo", { fg = colors.blue })
  hl("DiagnosticHint", { fg = colors.yellow })

  -- Set terminal colors from the theme (basic mapping)
  local t = {
    "#000000", -- black
    colors.pink, -- red
    colors.green, -- green
    colors.yellow, -- yellow
    colors.blue, -- blue
    colors.magenta, -- magenta
    colors.cyan, -- cyan
    "#ffffff", -- white
    "#0050A4", -- bright black
    colors.pink,
    colors.green,
    colors.yellow,
    colors.blue,
    colors.magenta,
    colors.cyan,
    "#ffffff",
  }
  for i, c in ipairs(t) do
    vim.g["terminal_color_" .. (i - 1)] = c
  end
end

return M
