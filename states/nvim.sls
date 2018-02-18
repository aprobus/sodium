{% set vundle_dir = pillar['user']['home_dir'] + "/.vim/bundle/Vundle.vim" %}

neovim:
  pkg.installed: []

add_nvim_config:
  file.managed:
    - name: {{ pillar['user']['home_dir'] }}/.config/nvim/init.vim
    - source: salt://nvim
    - user: {{ pillar['user']['username'] }}
    - template: jinja
