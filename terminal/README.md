

~/.config/nvim/init.vim file
:h vimrc

coc-vim for autocomplettion
https://github.com/neoclide/coc.nvim

{
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.mod"],
      "trace.server": "verbose",
      "filetypes": ["go"]
    }
  }
}

vim ~/.config/nvim/coc-settings.json
