# 💤 LazyVim

<<<<<<< HEAD
A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
=======
personal neovim settings

Install
------------------------------------------------------------------------

### Windows

~~~bash
git clone https://github.com/koma75/nvConfig.git %LOCALAPPDATA%\nvim && nvim
~~~

Some pre-requisites should be installed as well.

~~~bash
choco install llvm zig ripgrep git
~~~

### Fonts

Install Nerdfont compatible fonts.  For Japanese support,
[HackGen NF](https://github.com/yuru7/HackGen) can be used.

You can install using chocolatey in Windows.

~~~bash
choco install font-hackgen-nerd
~~~

Plugins
------------------------------------------------------------------------

Some are not installed yet.

### im-select

May replace with zenhan for windows usage.

* https://github.com/keaising/im-select.nvim

#### Pre-requisite

im-select must be installed prior to use.

### treesitter

* https://github.com/nvim-treesitter/nvim-treesitter

#### For Windows

Prerequisite is to install clang or zig compilers.

~~~bash
choco install llvm
~~~

~~~bash
choco install zig
~~~

### telescope

* https://github.com/nvim-telescope/telescope.nvim
* https://github.com/nvim-telescope/telescope-ui-select.nvim

### nvim-tree

* https://github.com/nvim-tree/nvim-tree.lua

### lualine

* https://github.com/nvim-lualine/lualine.nvim

### lsp-config

* https://github.com/neovim/nvim-lspconfig
* https://github.com/williamboman/mason-lspconfig.nvim
* https://github.com/williamboman/mason.nvim

### git

* https://github.com/lewis6991/gitsigns.nvim
* tpope/vim-fugitive

### bufferline

* https://github.com/akinsho/bufferline.nvim

### indent-blackline

* https://github.com/lukas-reineke/indent-blankline.nvim

### theme

* https://github.com/neanias/everforest-nvim

### spzenhan

* https://zenn.dev/kaz399/articles/50b5f2fdc2afcf
* https://github.com/kaz399/spzenhan.vim

spzenhan.exe must be available in the %PATH%.

References
------------------------------------------------------------------------

Resources I refered to other than the plugin documents are as follows.

* https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn
    * https://github.com/cpow/neovim-for-newbs
* https://github.com/NvChad/NvChad
* https://github.com/nvim-lua/kickstart.nvim
    * https://github.com/dam9000/kickstart-modular.nvim

### Windows context menu

To add context menu, use the following (edited to be compatible with chocolaty neovim install).
Original registry is [here](https://gist.github.com/JAffleck/2ba6ca0bd0d5545fd17c396357b9abf0)

~~~ reg
Windows Registry Editor Version 5.00



;; Neovim-Qt

[HKEY_CLASSES_ROOT\*\shell\nvim-qt]
@="Edit with Neovim-Qt"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\*\shell\nvim-qt\command]
@="\"C:\\tools\\neovim\\nvim-win64\\bin\\vim-qt.exe\" \"%1\""

[HKEY_CLASSES_ROOT\Directory\shell\nvim-qt]
@="Open with Neovim-Qt"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\Directory\shell\nvim-qt\command]
@="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\" \"%1\""

[HKEY_CLASSES_ROOT\Directory\Background\shell\nvim-qt]
@="Open Neovim-Qt here"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\Directory\Background\shell\nvim-qt\command]
@="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\" \"%v\""


;; NeoVim

[HKEY_CLASSES_ROOT\*\shell\nvim]
@="Edit with Neovim"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\*\shell\nvim\command]
@="wt -p \"Windows PowerShell\" --title Neovim C:\\tools\\neovim\\nvim-win64\\bin\\nvim.exe \"%1\""

[HKEY_CLASSES_ROOT\directory\shell\nvim]
@="Open with Neovim"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\directory\shell\nvim\command]
@="wt -p \"Windows PowerShell\" --title Neovim C:\\tools\\neovim\\nvim-win64\\bin\\nvim.exe \"%v\""

[HKEY_CLASSES_ROOT\directory\background\shell\nvim]
@="Open Neovim here"
"Icon"="\"C:\\tools\\neovim\\nvim-win64\\bin\\nvim-qt.exe\""

[HKEY_CLASSES_ROOT\directory\background\shell\nvim\command]
@="wt -p \"Windows PowerShell\" --title Neovim C:\\tools\\neovim\\nvim-win64\\bin\\nvim.exe \"%v\""
~~~
>>>>>>> 0cf5b6f691bfcdc8c4e5b9c0c16bbc3a3ffda16d
