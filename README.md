# vim-arclight
A dark theme for the [Airline](https://github.com/vim-airline/vim-airline) Vim plugin.

## Preview
![Arclight Theme](https://raw.github.com/Chris-1101/vim-arclight/master/preview.png)
Note: this theme only changes Airline's colours. The preview above shows my personal setup which also modifies the contents of certain sections. If you're interested, refer to the bottom of my [.vimrc](https://github.com/Chris-1101/dotfiles/blob/148549c90348e69eba65c9d0694e6176e4bf453c/vimrc) for the relevant config.

## Installation
#### Using a Vim Plugin Manager
| Manager   | .vimrc                                | Vim Command         |
|-----------|---------------------------------------|---------------------|
| Vundle    | `Plugin 'Chris-1101/vim-arclight'`    | `:PluginInstall`    |
| NeoBundle | `NeoBundle 'Chris-1101/vim-arclight'` | `:NeoBundleInstall` |
| Plug      | `Plug 'Chris-1101/vim-arclight'`      | `:PlugInstall`      |

#### Manually
```
cd ~/.vim/bundle
git clone https://github.com/Chris-1101/vim-arclight.git
```

## Activation
* Type `:AirlineTheme arclight` in Vim to activate it until the end of the session (temporary).
* Add `let g:airline_theme = 'arclight'` to .vimrc to auto load it on start-up (persistent).

## Troubleshooting
If you're seeing different colours than in the preview while running Vim in a terminal, it's most likely due to custom 256-colour definitions overriding the defaults. As far as I can tell, only GUI versions of Vim support explicit RGB values. When run from a terminal, only Xterm colours are supported, which you may have overridden in .Xresources.