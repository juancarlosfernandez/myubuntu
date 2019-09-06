eclipse() {
  # Use colors, but only if connected to a terminal, and that terminal
  # supports them.
  if which tput >/dev/null 2>&1; then
      ncolors=$(tput colors)
  fi
  if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    NORMAL="$(tput sgr0)"
  else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    NORMAL=""
  fi

  # Only enable exit-on-error after the non-critical colorization stuff,
  # which may fail on systems lacking tput or terminfo
  set -e
 
  ###################################
  # Eclipse

  VERSION=2019-06

  printf "${BLUE}Installing Eclipse...${NORMAL}\n"
  wget http://eclipse.mirror.garr.it/mirrors/eclipse//technology/epp/downloads/release/$VERSION/R/eclipse-jee-$VERSION-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.tgz
  tar -C $HOME -xzf /tmp/eclipse.tar.tgz 

  if [ -e ~/.bashrc ]; then
      cat >> $HOME/.bashrc <<EOF
export PATH=\$PATH:\$HOME/eclipse
EOF
  fi

  export PATH=\$PATH:\$HOME/eclipse
}

# Check if reboot is needed
eclipse
