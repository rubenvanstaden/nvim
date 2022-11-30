local M = {}

local colors = {
  red            = '#E06C75',
  dark_red       = '#BE5046',
  green          = '#98C379',
  yellow         = '#E5C07B',
  dark_yellow    = '#D19A66',
  blue           = '#61AFEF',
  purple         = '#C678DD',
  cyan           = '#56B6C2',
  white          = '#ABB2BF',
  black          = '#282C34',
  foreground     = '#ABB2BF',
  background     = '#282C34',
  comment_grey   = '#5C6370',
  gutter_fg_grey = '#4B5263',
  cursor_grey    = '#2C323C',
  visual_grey    = '#3E4452',
  menu_grey      = '#3E4452',
  special_grey   = '#3B4048',
  vertsplit      = '#3E4452',
  string = '#957FB8',
  numbers = '#D27E99',
}

local highlights = {

  -- Syntax Groups (descriptions and ordering from `:h w18`)
  { hg = 'Constant',       fg = colors.foreground         }, -- any constant
  { hg = 'String',         fg = colors.string,         }, -- a string constant: "this is a string"
  { hg = 'Character',      fg = colors.foreground        }, -- a character constant: 'c', '\n'
  { hg = 'Number',         fg = colors.numbers  }, -- a number constant: 234, 0xff
  { hg = 'Boolean',        fg = colors.numbers  }, -- a boolean constant: TRUE, false
  { hg = 'Float',          fg = colors.numbers  }, -- a floating point constant: 2.3e10
  { hg = 'Identifier',     fg = colors.foreground          }, -- any variable name
  { hg = 'Function',       fg = colors.foreground, gui = 'bold'         }, -- function name (also: methods for classes)
  { hg = 'Statement',      fg = colors.foreground       }, -- any statement
  { hg = 'Conditional',    fg = colors.foreground, gui = 'italic'     }, -- if, then, else, endif, switch, etc.
  { hg = 'Repeat',         fg = colors.foreground, gui = 'italic'       }, -- for, do, while, etc.
  { hg = 'Label',          fg = colors.foreground       }, -- case, default, etc.
  { hg = 'Operator',       fg = colors.foreground       }, -- sizeof", "+", "*", etc.
  { hg = 'Keyword',        fg = colors.foreground,  gui = 'bold'         }, -- any other keyword
  { hg = 'Exception',      fg = colors.foreground       }, -- try, catch, throw
  { hg = 'PreProc',        fg = colors.foreground       }, -- generic Preprocessor
  { hg = 'Include',        fg = colors.foreground         }, -- preprocessor #include
  { hg = 'Define',         fg = colors.foreground       }, -- preprocessor #define
  { hg = 'Macro',          fg = colors.foreground       }, -- same as Define
  { hg = 'PreCondit',      fg = colors.foreground       }, -- preprocessor #if, #else, #endif, etc.
  { hg = 'Type',           fg = colors.foreground, gui = 'bold'        }, -- int, long, char, etc.
  { hg = 'StorageClass',   fg = colors.foreground       }, -- static, register, volatile, etc.
  { hg = 'Structure',      fg = colors.foreground       }, -- struct, union, enum, etc.
  { hg = 'Typedef',        fg = colors.foreground       }, -- A typedef
  { hg = 'Special',        fg = colors.foreground         }, -- any special symbol
  -- { hg = 'SpecialChar',    fg = colors.dark_yellow  }, -- special character in a constant
  -- { hg = 'SpecialComment', fg = colors.comment_grey }, -- special things inside a comment
  { hg = 'Error',          fg = colors.red          }, -- any erroneous construct
  { hg = 'Todo',           fg = colors.red          }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  { hg = 'Comment',        fg = colors.comment_grey, gui = 'italic', cterm = 'italic'       }, -- any comment
  -- { hg = 'Underlined',                               gui = 'underline', cterm = 'underline' }, --text that stands out, HTML links

  -- Highlighting Groups (descriptions and ordering from ` =h highlight-groups`) {{{
  { hg = 'Conceal' }, --placeholder characters substituted for concealed text (see 'conceallevel')
  { hg = 'CursorIM' }, --like Cursor, but used when in IME mode
  { hg = 'ColorColumn',                          bg = colors.cursor_grey }, --used for the columns set with 'colorcolumn'
  { hg = 'CursorLine',                           bg = colors.cursor_grey }, --the screen line that the cursor is in when 'cursorline' is set
  { hg = 'Cursor',           fg = colors.black,  bg = colors.blue        }, --the character under the cursor

  { hg = 'DiffAdd',          fg = colors.black,  bg = colors.green  }, --diff mode: Added line
  { hg = 'DiffDelete',       fg = colors.black,  bg = colors.red    }, --diff mode: Deleted line
  { hg = 'DiffText',         fg = colors.black,  bg = colors.yellow }, --diff mode: Changed text within a changed line
  { hg = 'DiffChange',       fg = colors.yellow, gui = 'underline', cterm = 'underline' }, --diff mode: Changed line

  { hg = 'Pmenu',            fg = colors.white,       bg = colors.menu_grey }, --Popup menu: normal item.
  { hg = 'PmenuSel',         fg = colors.cursor_grey, bg = colors.blue      }, --Popup menu: selected item.
  { hg = 'PmenuSbar',        bg = colors.cursor_grey }, --Popup menu: scrollbar.
  { hg = 'PmenuThumb',       bg = colors.white       }, --Popup menu: Thumb of the scrollbar.

  { hg = 'SpellBad',         fg = colors.red, gui = 'underline', cterm = 'underline' }, --Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
  { hg = 'SpellCap',         fg = colors.dark_yellow }, --Word that should start with a capital. This will be combined with the highlighting used otherwise.
  { hg = 'SpellLocal',       fg = colors.dark_yellow }, --Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
  { hg = 'SpellRare',        fg = colors.dark_yellow }, --Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.

  { hg = 'StatusLine',       fg = colors.white, bg = colors.cursor_grey }, --status line of current window
  { hg = 'StatusLineTerm',   fg = colors.white, bg = colors.cursor_grey }, --status line of current :terminal window
  { hg = 'StatusLineNC',     fg = colors.comment_grey }, --status lines of not-current windows Note = if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  { hg = 'StatusLineTermNC', fg = colors.comment_grey }, --status line of non-current  =terminal window

  { hg = 'Question',         fg = colors.purple         }, --hit-enter prompt and yes/no questions
  { hg = 'SpecialKey',       fg = colors.special_grey   }, --Meta and special keys listed with " =map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
  { hg = 'Directory',        fg = colors.blue           }, --directory names (and other special names in listings)
  { hg = 'ErrorMsg',         fg = colors.red            }, --error messages on the command line
  { hg = 'VertSplit',        fg = colors.vertsplit      }, --the column separating vertically split windows
  { hg = 'Folded',           fg = colors.comment_grey   }, --line used for closed folds
  { hg = 'LineNr',           fg = colors.gutter_fg_grey }, --Line number for " =number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  { hg = 'NonText',          fg = colors.special_grey   }, --'~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
  { hg = 'TabLine',          fg = colors.comment_grey   }, --tab pages line, not active tab page label
  { hg = 'TabLineSel',       fg = colors.white          }, --tab pages line, active tab page label
  { hg = 'Title',            fg = colors.green          }, --titles for output from " =set all", ":autocmd" etc.
  { hg = 'Visual',           bg = colors.visual_grey    }, --Visual mode selection
  { hg = 'VisualNOS',        bg = colors.visual_grey    }, --Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
  { hg = 'WarningMsg',       fg = colors.yellow         }, --warning messages

  { hg = 'MatchParen',       fg = colors.blue, gui = 'underline', cterm = 'underline' }, --The character under the cursor or just before it, if it is a paired bracket, and its match.

  { hg = 'QuickFixLine',     fg = colors.black,      bg = colors.yellow       }, --Current quickfix item in the quickfix window.
  { hg = 'Search',           fg = colors.white,      bg = colors.comment_grey       }, --Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
  { hg = 'Terminal',         fg = colors.white,      bg = colors.black        }, --terminal window (see terminal-size-color)
  { hg = 'WildMenu',         fg = colors.black,      bg = colors.blue         }, --current match in 'wildmenu' completion
  { hg = 'IncSearch',        fg = colors.yellow,     bg = colors.comment_grey }, --'incsearch' highlighting; also used for the text replaced with ":s///c"
  { hg = 'Normal',           fg = colors.foreground, bg = colors.background   }, --normal text

  { hg = 'TabLineFill' }, --tab pages line, where there are no labels
  { hg = 'CursorLineNr' }, --Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  { hg = 'ModeMsg' }, --'showmode' message (e.g., "-- INSERT --")
  { hg = 'MoreMsg' }, --more-prompt
  { hg = 'FoldColumn' }, --'foldcolumn'
  { hg = 'SignColumn' }, --column where signs are displayed

  -- Diagnostics
  { hg = 'DiagnosticError',          fg = colors.red    },
  { hg = 'DiagnosticWarn',           fg = colors.yellow },
  { hg = 'DiagnosticInfo',           fg = colors.blue   },
  { hg = 'DiagnosticHint',           fg = colors.cyan   },
  { hg = 'DiagnosticUnderlineError', fg = colors.red,    gui = 'underline', cterm = 'underline' },
  { hg = 'DiagnosticUnderlineWarn',  fg = colors.yellow, gui = 'underline', cterm = 'underline' },
  { hg = 'DiagnosticUnderlineInfo',  fg = colors.blue,   gui = 'underline', cterm = 'underline' },
  { hg = 'DiagnosticUnderlineHint',  fg = colors.cyan,   gui = 'underline', cterm = 'underline' },

  -- Neovim's built-in language server client
  { hg = 'LspReferenceWrite',           fg = colors.blue,   gui='underline' },
  { hg = 'LspReferenceText',            fg = colors.blue,   gui='underline' },
  { hg = 'LspReferenceRead',            fg = colors.blue,   gui='underline' },
  { hg = 'LspSignatureActiveParameter', fg = colors.yellow, gui='bold'      },

  -- ... an exception for my favorite plugin
  { hg = 'GitSignsAdd',    fg = colors.green  },
  { hg = 'GitSignsChange', fg = colors.yellow },
  { hg = 'GitSignsDelete', fg = colors.red    },
}

M.colorscheme = function()

  local highlight_cmds = {}

  for idx = 1, #highlights do
    local highlight = highlights[idx]
    highlight_cmds[idx] = string.format(
      'highlight %s guifg=%s guibg=%s gui=%s guisp=%s',
      highlight.hg,
      highlight.fg or 'NONE',
      highlight.bg or 'NONE',
      highlight.gui or 'NONE',
      highlight.guisp or 'NONE'
    )
  end

  vim.cmd(table.concat(highlight_cmds, '\n'))
end

return M
