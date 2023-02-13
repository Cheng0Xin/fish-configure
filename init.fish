#!/usr/bin/env fish

# Parameters
set -g BACKGROUND light
set -g CHINA false

set HINT "论文写好了吗? 今天练琴了吗? 锻炼身体了吗?
              革命, 胜利了吗?"

set -U fish_greeting "☭ The proletarians have nothing to \
lose but their chains.
They have a world to win. 无产阶级必胜!

λ ⤃ 灵魂提问:〖
  $HINT
〗"

if test $BACKGROUND = light
    set -g BAT_THEME "Solarized (light)"
else
    set -g BAT_THEME gruvbox-dark
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
	# set -gx LDFLAGS "-L/opt/homebrew/opt/llvm@11/lib"
	# set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm@11/include"

        set -g TEX_HOME /Library/TeX/texbin
        set -g SML_HOME /usr/local/smlnj
        set -g RACKET_HOME /Applications/Racket
        set -g JAVA_HOME /opt/homebrew/opt/java11/
        set -g JULIA_HOME /Applications/Julia-1.7.app/Contents/Resources/julia/
        set -g SPARK_HOME $HOME/App/spark-3.3
        set -g PYTHONPATH $SPARK_HOME/python/lib $PYTHONPATH
        set -g BREWHOME /opt/homebrew
        set -g LEAN_HOME $HOME/App/lean-4
        set -g GHC_HOME $HOME/App/ghc-9
        set -g RUBY_HOME $BREWHOME/Cellar/ruby@3.0/3.0.4
        set -g OPENMPI_HOME $HOME/App/mpi
        set -g PERL_HOME /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/System/Library/Perl/5.30/darwin-thread-multi-2level/CORE/
	set -g DOTNET_HOME $HOME/.dotnet/tools
        set PATH $RUBY_HOME/bin $PATH
        set PATH $TEX_HOME $PATH
        set PATH $RACKET_HOME/bin $PATH
        set PATH $JAVA_HOME/bin $PATH
        set PATH $JULIA_HOME/bin $PATH
        set PATH $SPARK_HOME/bin $PATH
        set PATH $BREWHOME/bin $PATH
        set PATH $BREWHOME/sbin $PATH
        set PATH $LEAN_HOME/bin $PATH
        set PATH $OPENMPI_HOME/bin $PATH
        set PATH $PERL_HOME $PATH
        set PATH $GHC_HOME/bin $PATH
        set PATH $SML_HOME/bin $PATH
	set PATH $DOTNET_HOME $PATH

        set -g C_INCLUDE_PATH /opt/homebrew/include $C_INCLUDE_PATH
        set -g C_INCLUDE_PATH (xcrun --show-sdk-path)/usr/include/ffi $C_INCLUDE_PATH
        set -g LIBRARY_PATH /opt/homebrew/lib $LIBRARY_PATH
        set -g DYLD_LIBRARY_PATH /opt/homebrew/lib $DYLD_LIBRARY_PATH
        set -g DYLD_FALLBACK_LIBRARY_PATH /opt/homebrew/lib $DYLD_FALLBACK_LIBRARY_PATH

        # export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
	# set -g LDFLAGS "-L/opt/homebrew/opt/llvm@11/lib"
	# set -g CPPFLAGS "-I/opt/homebrew/opt/llvm@11/include"

        set -g LDFLAGS -L/opt/homebrew/opt/openblas/lib $LDFLAGS
        set -g CPPFLAGS -I/opt/homebrew/opt/openblas/include $CPPFLAGS

        set -gx PKG_CONFIG_PATH /opt/homebrew/opt/openblas/lib/pkgconfig
    case Linux
        set -g SAGE_ROOT /usr/share/sagemath
        set -g Z3_HOME $HOME/App/z3
        set -g SPARK_HOME $HOME/App/spark3
        set -g WOLF_HOME $HOME/App/wolframengine
        set -g TAPAAL $HOME/App/tapaal-3.7.1
        set -g GREAT_SPN $HOME/App/COSMOS-TOOL/GreatSPN
        set -g COSMOS $HOME/App/COSMOS-TOOL/cosmos
        set -g FSTAR $HOME/App/fstar
        set -g ISABELLE $HOME/App/Isabelle2021
        set -g CHKTEXRC $HOME/.SpaceVim.d/other-setting
        set -g PRISM_HOME $HOME/App/prism-4.7-src/prism

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
alias vim='nvim'
alias v='nvim'
alias e='emacs -nw'
alias xdg-open='open'
alias m='make'
# alias te='emacs -nw'
# alias e='emacs -nw'
alias l='exa --icons -a'
alias la='exa --icons -a'
alias ll='exa --icons -lah'
alias ls='exa --icons'
alias lt='exa --icons -T'
alias gls='ls'
# alias vim='nvim'
alias cat='bat --theme "$BAT_THEME"'
alias mr='make run'
alias top='htop'
alias ps='procs'
alias cl='clear'

# Languages
# opam configuration
test -r $HOME/.opam/opam-init/init.fish && . $HOME/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true


# Cust promt
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_color_scheme light
