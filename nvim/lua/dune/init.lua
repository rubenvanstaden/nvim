local M = {}

local colors = {
    red            = "#E06C75",
    green          = "#98C379",
    yellow         = "#E5C07B",
    blue           = "#61AFEF",
    purple         = "#C678DD",
    cyan           = "#56B6C2",
    white          = "#ABB2BF",
    black          = "#282C34",
    foreground     = "#ABB2BF",
    background     = "#282C34",
    comment_grey   = "#5C6370",
    statusline_grey    = "#2C323C",
    visual_grey    = "#3E4452",
    gunmetal       = "#738580",
    blue_grey      = "#647C90",
    string         = "#658594",
    numbers        = "#D27E99",
    tealgreen      = "#7AA880"
    -- string      = '#957FB8',
    -- gray        = "#746C70",
}

local highlights = {

    -- Code
    --
    -- Syntax Groups (descriptions and ordering from `:h w18`)
    {hg = "Constant", fg = colors.foreground},
    -- any string
    {hg = "String", fg = colors.string, gui = "italic"},
    -- a character constant: 'c', '\n'
    {hg = "Character", fg = colors.foreground},
    -- a number constant: 234, 0xff
    {hg = "Number", fg = colors.numbers, gui = "bold"},
    -- a boolean constant: TRUE, false
    {hg = "Boolean", fg = colors.numbers, gui = "bold"},
    -- a floating point constant: 2.3e10
    {hg = "Float", fg = colors.number, gui = "bold"},
    -- any variable name
    {hg = "Identifier", fg = colors.foreground},
    -- function name (also: methods for classes)
    {hg = "Function", fg = colors.foreground, gui = "bold"},
    -- any statement
    {hg = "Statement", fg = colors.foreground},
    -- if, then, else, endif, switch, etc.
    {hg = "Conditional", fg = colors.foreground, gui = "italic"},
    -- for, do, while, etc.
    {hg = "Repeat", fg = colors.foreground, gui = "italic"},
    -- case, default, etc.
    {hg = "Label", fg = colors.foreground},
    -- sizeof", "+", "*", etc.
    {hg = "Operator", fg = colors.foreground},
    -- any other keyword
    {hg = "Keyword", fg = colors.foreground, gui = "bold"},
    -- try, catch, throw
    {hg = "Exception", fg = colors.foreground},
    -- generic Preprocessor
    {hg = "PreProc", fg = colors.foreground},
    -- preprocessor #include
    {hg = "Include", fg = colors.foreground},
    -- preprocessor #define
    {hg = "Define", fg = colors.foreground},
    -- same as Define
    {hg = "Macro", fg = colors.foreground},
    -- preprocessor #if, #else, #endif, etc.
    {hg = "PreCondit", fg = colors.foreground},
    -- int, long, char, etc.
    {hg = "Type", fg = colors.foreground, gui = "bold"},
    -- static, register, volatile, etc.
    {hg = "StorageClass", fg = colors.foreground},
    -- struct, union, enum, etc.
    {hg = "Structure", fg = colors.foreground},
    -- A typedef
    {hg = "Typedef", fg = colors.foreground},
    -- any special symbol
    {hg = "Special", fg = colors.foreground, gui = "bold"},
    -- any erroneous construct
    {hg = "Error", fg = colors.red},
    -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    {hg = "Todo", fg = colors.red},
    -- any comment
    {hg = "Comment", fg = colors.comment_grey, gui = "italic", cterm = "italic"},
    --text that stands out, HTML links
    {hg = "Underlined", gui = "underline", cterm = "underline"},

    --Popup menu: normal item.
    {hg = "Pmenu", fg = colors.white, bg = colors.visual_grey},
    --Popup menu: selected item.
    {hg = "PmenuSel", fg = colors.visual_grey, bg = colors.blue},

    --diff mode: Added line
    {hg = "DiffAdd", fg = colors.black, bg = colors.green},
    --diff mode: Deleted line
    {hg = "DiffDelete", fg = colors.black, bg = colors.red},
    --diff mode: Changed text within a changed line
    {hg = "DiffText", fg = colors.black, bg = colors.yellow},
    --diff mode: Changed line
    {hg = "DiffChange", fg = colors.yellow, gui = "underline", cterm = "underline"},

    -- Status Line
    --
    --status line of current window
    {hg = "StatusLine", fg = colors.white, bg = colors.statusline_grey},
    --status line of current :terminal window
    {hg = "StatusLineTerm", fg = colors.white, bg = colors.statusline_grey},
    --status lines of not-current windows Note = if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    {hg = "StatusLineNC", fg = colors.comment_grey},
    --status line of non-current  =terminal window
    {hg = "StatusLineTermNC", fg = colors.comment_grey},

    -- Tree
    --
    --hit-enter prompt and yes/no questions
    {hg = "Question", fg = colors.purple},
    --Meta and special keys listed with " =map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
    {hg = "SpecialKey", fg = colors.visual_grey},
    --directory names (and other special names in listings)
    {hg = "Directory", fg = colors.gunmetal, gui = "bold"},
    --error messages on the command line
    {hg = "ErrorMsg", fg = colors.red},
    --the column separating vertically split windows
    {hg = "VertSplit", fg = colors.visual_grey},
    --line used for closed folds
    {hg = "Folded", fg = colors.comment_grey},
    --Line number for " =number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    {hg = "LineNr", fg = colors.comment_grey},
    --'~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    {hg = "NonText", fg = colors.visual_grey},
    --titles for output from " =set all", ":autocmd" etc.
    {hg = "Title", fg = colors.green},
    --Visual mode selection
    {hg = "Visual", bg = colors.visual_grey},
    --Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
    {hg = "VisualNOS", bg = colors.visual_grey},
    --The character under the cursor or just before it, if it is a paired bracket, and its match.
    {hg = "MatchParen", fg = colors.blue, gui = "bold", cterm = "bold"},
    --Current quickfix item in the quickfix window.
    {hg = "QuickFixLine", fg = colors.black, bg = colors.yellow},
    --Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    {hg = "Search", fg = colors.white, bg = colors.comment_grey},
    --terminal window (see terminal-size-color)
    {hg = "Terminal", fg = colors.white, bg = colors.black},
    --current match in 'wildmenu' completion
    {hg = "WildMenu", fg = colors.black, bg = colors.blue},
    --'incsearch' highlighting; also used for the text replaced with ":s///c"
    {hg = "IncSearch", fg = colors.yellow, bg = colors.comment_grey},
    --normal text
    {hg = "Normal", fg = colors.foreground, bg = colors.background},
    --tab pages line, where there are no labels
    {hg = "TabLineFill"},
    --Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    {hg = "CursorLineNr"},
    --'showmode' message (e.g., "-- INSERT --")
    {hg = "ModeMsg"},
    --more-prompt
    {hg = "MoreMsg"},
    --'foldcolumn'
    {hg = "FoldColumn"},
    --column where signs are displayed
    {hg = "SignColumn"},

    -- Diagnostics
    --
    {hg = "DiagnosticError", fg = colors.red},
    {hg = "DiagnosticWarn", fg = colors.yellow},
    {hg = "DiagnosticInfo", fg = colors.blue},
    {hg = "DiagnosticHint", fg = colors.cyan},

    -- Git
    --
    {hg = "GitSignsAdd", fg = colors.green},
    {hg = "GitSignsChange", fg = colors.yellow},
    {hg = "GitSignsDelete", fg = colors.red},

    -- Nvim Tree
    --
    {hg = "NvimTreeRootFolder", fg = colors.comment_grey},
    {hg = "NvimTreeGitDirty", fg = colors.foreground},
    {hg = "NvimTreeGitNew", fg = colors.foreground},
    {hg = "NvimTreeExecFile", fg = colors.foreground, gui = "italic"}
}

M.colorscheme = function()
    local highlight_cmds = {}

    for idx = 1, #highlights do
        local highlight = highlights[idx]
        highlight_cmds[idx] =
            string.format(
            "highlight %s guifg=%s guibg=%s gui=%s guisp=%s",
            highlight.hg,
            highlight.fg or "NONE",
            highlight.bg or "NONE",
            highlight.gui or "NONE",
            highlight.guisp or "NONE"
        )
    end

    vim.cmd(table.concat(highlight_cmds, "\n"))
end

return M
