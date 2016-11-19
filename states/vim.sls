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

vim_setup_home_dir:
  file.symlink:
    - name: {{ pillar['user']['home_dir'] }}/.vimrc
    - target: {{ pillar['user']['home_dir'] }}/.vim/vimrc
    - user: {{ pillar['user']['username'] }}
