# Tools

This README is a basic discreption of basic tools that is needed 
for world class C++ and Python programming.

## NeoVim

A great read can be found at the following website:
https://www.linode.com/docs/tools-reference/how-to-install-neovim-and-plugins-with-vim-plug

When the init.vim file is downloaded and placed in the ~/.config/nvim folder,
we have to download the vim plugin installer:

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Also, install the language-server-protocol:

```bash
https://github.com/neoclide/coc.nvim
```

After vim-plug is installed, open *nvim* and run the installer

```
:PlugInstall
```

Restart *nvim* for the changes to take place. 

The init.vim file has the following ordered structure:

* Install plugins using 'junegunn/vim-plug'
* Set color theme
* Python settings
* Commenting shortcuts
* Custom mappings
* Airline settings
* Relative line numbering

### VIM Cheats

```
:ls         # List all buffers
:b <number> # Go to that buffer number
:bd         # Delete the current buffer
```

#### Folding

```
zf#j creates a fold from the cursor down # lines.
zf/ string creates a fold from the cursor to string .
zj moves the cursor to the next fold.
zk moves the cursor to the previous fold.
za toggle a fold at the cursor.
zo opens a fold at the cursor.
zO opens all folds at the cursor.
zc closes a fold under cursor. 
zm increases the foldlevel by one.
zM closes all open folds.
zr decreases the foldlevel by one.
zR decreases the foldlevel to zero -- all folds will be open.
zd deletes the fold at the cursor.
zE deletes all folds.
[z move to start of open fold.
]z move to end of open fold.
```

* Change window height
Ctrl-w +
Ctrl-w -

* Change window width
Ctrl-w >
Ctrl-w <

* Change all windows to equal size
Ctrl-w =

* Goto definition
Ctrl-]

* Jump back from the definition
Ctrl-T

* Open the definition in a horizontal split
Ctrl-W Ctrl-]

* Add these lines in vimrc
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

* Open the definition in a vertical split
Alt-]

* tags
:tag ClassName
vim -t <tag>

:tn	Move to next definition (:tnext)
:tp	Move to previous definition (:tprevious)
:ts	List all definitions (:tselect)

^]	Jump to definition
^t	Jump back from definition
^W }	Preview definition
g]	See all definitions



#### Line Numbering

Create read: https://jeffkreeftmeijer.com/vim-number/



## Fonts

My personal faviorite fonts are:

* Source Code Pro
* Dejavu 

To install the font do the following:

Download at: https://fonts.google.com/?sort=popularity

```
1. mkdir -p ~/.fonts/Source_Code_Pro
2. unzip Source_Code_Pro.zip  -d ~/.fonts/Source_Code_Pro
3. fc-cache -f
```








