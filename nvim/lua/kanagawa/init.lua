local M = {}

local colors = {
    sumiInk0  = "#16161D",
    sumiInk1b = "#181820",
    sumiInk1c = "#1a1a22",
    sumiInk1  = "#1F1F28",
    sumiInk2  = "#2A2A37",
    sumiInk3  = "#363646",
    sumiInk4  = "#54546D",
    waveBlue1 = "#223249",
    waveBlue2 = "#2D4F67",
    winterGreen   = "#2B3328",
    winterYellow  = "#49443C",
    winterRed     = "#43242B",
    winterBlue    = "#252535",
    autumnGreen   = "#76946A",
    autumnRed     = "#C34043",
    autumnYellow  = "#DCA561",
    samuraiRed    = "#E82424",
    roninYellow   = "#FF9E3B",
    waveAqua1     = "#6A9589",
    dragonBlue    = "#658594",
    oldWhite      = "#C8C093",
    fujiWhite     = "#DCD7BA",
    fujiGray      = "#727169",
    springViolet1 = "#938AA9",
    oniViolet     = "#957FB8",
    crystalBlue   = "#7E9CD8",
    springViolet2 = "#9CABCA",
    springBlue    = "#7FB4CA",
    waveAqua2     = "#7AA89F",
    waveAqua4     = "#7AA880",
    waveAqua5     = "#6CAF95",
    waveAqua3     = "#68AD99",
    springGreen   = "#98BB6C",
    boatYellow2   = "#C0A36E",
    carpYellow    = "#E6C384",
    sakuraPink    = "#D27E99",
    waveRed       = "#E46876",
    peachRed      = "#FF5D62",
    surimiOrange  = "#FFA066",
    katanaGray    = "#717C7C"
}

local highlights = {
    -- Syntax Groups (descriptions and ordering from `:h w18`)
    {hg = "Constant", fg = colors.surimiOrange}, -- any constant
    {hg = "String", fg = colors.springGreen}, -- a string constant: "this is a string"
    {hg = "Character", fg = colors.springGreen}, -- a character constant: 'c', '\n'
    {hg = "Number", fg = colors.sakuraPink}, -- a number constant: 234, 0xff
    {hg = "Boolean", fg = colors.surimiOrange}, -- a boolean constant: TRUE, false
    {hg = "Float", fg = colors.numbers}, -- a floating point constant: 2.3e10
    {hg = "Identifier", fg = colors.carpYellow}, -- any variable name
    {hg = "Function", fg = colors.crystalBlue}, -- function name (also: methods for classes)
    {hg = "Statement", fg = colors.oniViolet}, -- any statement
    {hg = "Operator", fg = colors.boatYellow2}, -- sizeof", "+", "*", etc.
    {hg = "Keyword", fg = colors.oniViolet}, -- any other keyword
    {hg = "Exception", fg = colors.waveRed}, -- try, catch, throw
    {hg = "Include", fg = colors.surimiOrange}, -- preprocessor #include
    {hg = "Type", fg = colors.waveAqua2}, -- int, long, char, etc.
    {hg = "Special", fg = colors.springBlue}, -- any special symbol
    {hg = "Error", fg = colors.peachRed}, -- any erroneous construct
    {hg = "Todo", fg = colors.peachRed}, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    {hg = "Comment", fg = colors.fujiGray, gui = "italic", cterm = "italic"}, -- any comment
    -- { hg = 'Conditional',    fg = colors.foreground       }, -- if, then, else, endif, switch, etc.
    -- { hg = 'Repeat',         fg = colors.foreground       }, -- for, do, while, etc.
    -- { hg = 'Label',          fg = colors.foreground       }, -- case, default, etc.
    -- { hg = 'PreProc',        fg = colors.foreground       }, -- generic Preprocessor
    -- { hg = 'Define',         fg = colors.waveRed       }, -- preprocessor #define
    -- { hg = 'PreCondit',      fg = colors.waveRed       }, -- preprocessor #if, #else, #endif, etc.
    -- { hg = 'StorageClass',   fg = colors.waveRed       }, -- static, register, volatile, etc.
    {hg = "Macro", fg = colors.katanaGray}, -- same as #define
    {hg = "Structure", fg = colors.crystalBlue, bold = true}, -- struct, union, enum, etc.
    {hg = "Typedef", fg = colors.waveRed}, -- A typedef
    -- Highlighting Groups (descriptions and ordering from ` =h highlight-groups`) {{{
    {hg = "Conceal"}, --placeholder characters substituted for concealed text (see 'conceallevel')
    {hg = "CursorIM"}, --like Cursor, but used when in IME mode
    {hg = "ColorColumn", bg = colors.cursor_grey}, --used for the columns set with 'colorcolumn'
    {hg = "CursorLine", bg = colors.cursor_grey}, --the screen line that the cursor is in when 'cursorline' is set
    {hg = "Cursor", fg = colors.black, bg = colors.blue}, --the character under the cursor
    -- { hg = 'DiffAdd',          fg = colors.black,  bg = colors.green  }, --diff mode: Added line
    -- { hg = 'DiffDelete',       fg = colors.black,  bg = colors.red    }, --diff mode: Deleted line
    -- { hg = 'DiffText',         fg = colors.black,  bg = colors.yellow }, --diff mode: Changed text within a changed line
    -- { hg = 'DiffChange',       fg = colors.yellow, gui = 'underline', cterm = 'underline' }, --diff mode: Changed line

    -- Popup menu for code completion.
    {hg = "Pmenu", fg = colors.fujiWhite, bg = colors.waveBlue1}, --Popup menu: normal item.
    {hg = "PmenuSel", fg = "NONE", bg = colors.waveBlue2}, --Popup menu: selected item.
    -- Status line containing file name, etc
    {hg = "StatusLine", fg = colors.oldWhite, bg = colors.sumiInk0}, --status line of current window
    {hg = "StatusLineNC", fg = colors.fujiGray, bg = colors.sumiInk0}, --status lines of not-current windows Note = if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- Off code colors
    {hg = "Directory", fg = colors.crystalBlue}, --directory names (and other special names in listings)
    {hg = "ErrorMsg", fg = colors.peachRed}, --error messages on the command line
    {hg = "LineNr", fg = colors.sumiInk4}, --Line number for " =number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    {hg = "NonText", fg = colors.sumiInk4}, --'~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    {hg = "Title", fg = colors.crystalBlue, bold = true}, --titles for output from " =set all", ":autocmd" etc.
    {hg = "Visual", bg = colors.waveBlue1}, --Visual mode selection
    {hg = "WarningMsg", fg = colors.roninYellow}, --warning messages
    {hg = "Search", fg = colors.white, bg = colors.comment_grey}, --Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    {hg = "IncSearch", fg = colors.waveBlue1, bg = colors.roninYellow}, --'incsearch' highlighting; also used for the text replaced with ":s///c"
    {hg = "Normal", fg = colors.fujiWhite, bg = colors.sumiInk1}, --normal text
    {hg = "VertSplit", fg = colors.sumiInk0}, --the column separating vertically split windows
    -- { hg = 'VertSplit',        fg = colors.sumiInk0, bg = colors.sumiInk1b      }, --the column separating vertically split windows

    -- { hg = 'TabLineFill' }, --tab pages line, where there are no labels
    -- { hg = 'CursorLineNr' }, --Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- { hg = 'ModeMsg' }, --'showmode' message (e.g., "-- INSERT --")
    -- { hg = 'MoreMsg' }, --more-prompt
    -- { hg = 'FoldColumn' }, --'foldcolumn'
    -- { hg = 'SignColumn' }, --column where signs are displayed

    {hg = "GitSignsAdd", fg = colors.autumnGreen},
    {hg = "GitSignsChange", fg = colors.winterYellow},
    {hg = "GitSignsDelete", fg = colors.winterRed}
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
