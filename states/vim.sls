{% set vundle_dir = pillar['user']['home_dir'] + "/.vim/bundle/Vundle.vim" %}

vim:
  pkg.installed: []

vim_install_deps:
  pkg.installed:
    - pkgs:
      - exuberant-ctags
      - silversearcher-ag

vim_setup:
  file.recurse:
    - name: {{ pillar['user']['home_dir'] }}/.vim/
    - user: {{ pillar['user']['username'] }}
    - source: salt://vim/

vim_install_vundle:
  cmd.run:
    - name: git clone git@github.com:VundleVim/Vundle.vim.git {{ vundle_dir }}
    - runas: {{ pillar['user']['username'] }}
    - unless: test -d {{ vundle_dir }}

vim_setup_home_dir:
  file.symlink:
    - name: {{ pillar['user']['home_dir'] }}/.vimrc
    - target: {{ pillar['user']['home_dir'] }}/.vim/vimrc
    - user: {{ pillar['user']['username'] }}
