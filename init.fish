#!/usr/bin/env fish

# Parameters
set -g BACKGROUND dark
set -g CHINA false

if test $BACKGROUND = "light"
  set -g BAT_THEME "Monokai Extended Light"
else
  set -g BAT_THEME "gruvbox-dark"
end

# PATH
set -g LOCAL_HOME $HOME/.local
set -g CABAL_HOME $HOME/.cabal
set -g DOOM_HOME $HOME/.emacs.d
set -g CARGO_HOME $HOME/.cargo
set PATH /usr/local/bin $HOME/App/bin $PATH
set PATH $LOCAL_HOME/bin $PATH
set PATH $CABAL_HOME/bin $PATH
set PATH $DOOM_HOME/bin $PATH
set PATH $CARGO_HOME/bin $PATH

switch (uname)
  case Darwin
    set -g TEX_HOME /Library/TeX/texbin
    set -g RACKET_HOME /Applications/Racket
    set -g JAVA_HOME /opt/homebrew/opt/java11/
    set -g JULIA_HOME /Applications/Julia-1.7.app/Contents/Resources/julia/
    set -g SPARK_HOME $HOME/App/spark3
    set -g BREWHOME /opt/homebrew
    set -g LEAN_HOME $HOME/App/lean-4
    set PATH $TEX_HOME $PATH
    set PATH $RACKET_HOME/bin $PATH
    set PATH $JAVA_HOME/bin $PATH
    set PATH $JULIA_HOME/bin $PATH
    set PATH $SPARK_HOME/bin $PATH
    set PATH $BREWHOME/bin $PATH
    set PATH $BREWHOME/sbin $PATH
    set PATH $LEAN_HOME/bin $PATH

    set C_INCLUDE_PATH /opt/homebrew/include $C_INCLUDE_PATH
    set LIBRARY_PATH /opt/homebrew/lib $LIBRARY_PATH

    # export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
    set -g LDFLAGS "-L/opt/homebrew/opt/llvm@11/lib"
    set -g CPPFLAGS "-I/opt/homebrew/opt/llvm@11/include"
  case Linux
    set -g SAGE_ROOT /usr/share/sagemath
    set -g Z3_HOME  $HOME/App/z3
    set -g SPARK_HOME  $HOME/App/spark3
    set -g WOLF_HOME  $HOME/App/wolframengine
    set -g TAPAAL  $HOME/App/tapaal-3.7.1
    set -g GREAT_SPN  $HOME/App/COSMOS-TOOL/GreatSPN
    set -g COSMOS  $HOME/App/COSMOS-TOOL/cosmos
    set -g FSTAR  $HOME/App/fstar
    set -g ISABELLE  $HOME/App/Isabelle2021
    set -g CHKTEXRC  $HOME/.SpaceVim.d/other-setting
    set -g PRISM_HOME  $HOME/App/prism-4.7-src/prism

    set PATH $PATH $Z3_HOME/bin
    set PATH $SPARK_HOME/bin $PATH
    set PATH $SPARK_HOME/sbin $PATH
    set PATH $WOLF_HOME/Executables $PATH
    set PATH $TAPAAL $PATH
    set PATH $GREAT_SPN/bin $PATH
    set PATH $COSMOS/bin $PATH
    set PATH $FSTAR/bin $PATH
    set PATH $ISABELLE/bin $PATH
    set PATH $PRISM_HOME/bin $PATH
end

# Env
switch (uname)
  case Darwin
  case Linux
end

# Tmux



# Proxy
if test $CHINA = true
  privoxy /usr/local/etc/privoxy/config
  set -g http_proxy http://localhost:6665
  set -g https_proxy http://localhost:6665
end

# Alias
alias v='nvim'
alias xdg-open='open'
alias m='make'
alias e='emacs -nw'
alias em='emacs'
alias l='exa --icons -a'
alias la='exa --icons -a'
alias ll='exa --icons -lah'
alias ls='exa --icons'
alias lt='exa --icons -T'
alias gls='ls'
alias vim='nvim'
alias cat='bat'
alias mr='make run'
alias top='htop'
alias ps='procs'
alias cl='clear'

# Languages
# opam configuration
test -r $HOME/.opam/opam-init/init.fish && . $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null || true






