color_test() {
  for fgbg in 38 48 ; do # Foreground / Background
      for color in {0..255} ; do # Colors
          # Display the color
          printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
          # Display 6 colors per lines
          if [ $((($color + 1) % 6)) == 4 ] ; then
              echo # New line
          fi
      done
      echo # New line
  done
}

fg() { echo -n "\e[38;5;$1m"; }
bg() { echo -n "\e[48;5;$1m"; }
bold() { echo -n "\e[1m"; }

git_branch() { git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/' -e '//s/^/ /'; }

#  echo $'\uE0B0' | hexdump
PS_SEP=$(echo -e '\xee\x82\xb0')
PS_END="\[\e[00m\]"
PS_FG=(213 22 220)
PS_BG=(57 40 33)
SEP_0="\[\e[30m$(bg ${PS_BG[0]})\]$PS_SEP"
TIME="\[$bold$(fg ${PS_FG[0]})$(bg ${PS_BG[0]})\] \t"
SEP_1="\[$(fg ${PS_BG[0]})$(bg ${PS_BG[1]})\]$PS_SEP"
BRANCH="\[$(fg ${PS_FG[1]})$(bg ${PS_BG[1]})\]\$(git_branch)"
SEP_2="\[$(fg ${PS_BG[1]})$(bg ${PS_BG[2]})\]$PS_SEP"
LOCATION="\[$(fg ${PS_FG[2]})$(bg ${PS_BG[2]})\] \w"
SEP_LAST="\[$(fg ${PS_BG[2]})\e[49m\]$PS_SEP "
PS1="$TIME$SEP_1$BRANCH$SEP_2$LOCATION$SEP_LAST$PS_END"

alias ll="ls -la"
alias l="ls"
alias ..="cd .."
alias ...="cd .. && cd .."
alias ....="cd .. && cd .. && cd .."
alias .....="cd .. && cd .. && cd .. && cd .."

export LANG=zh_CN.UTF-8

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

# opam configuration
test -r /Users/cir/.opam/opam-init/init.sh && . /Users/cir/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
