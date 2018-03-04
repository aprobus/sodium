{% set vundle_dir = pillar['user']['home_dir'] + "/.vim/bundle/Vundle.vim" %}

python3-setuptools:
  pkg.installed: []

python3-pip:
  pkg.installed: []

neovim:
  pkg.installed: []

install_python_wheel:
  cmd.run:
    - runas: {{ pillar['user']['username'] }}
    - name: pip3 install wheel

install_python_neovim:
  cmd.run:
    - runas: {{ pillar['user']['username'] }}
    - name: pip3 install neovim

add_nvim_config:
  file.managed:
    - name: {{ pillar['user']['home_dir'] }}/.config/nvim/init.vim
    - source: salt://nvim
    - user: {{ pillar['user']['username'] }}
    - template: jinja
