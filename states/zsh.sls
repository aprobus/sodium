{% set powerline_fonts_dir = pillar['user']['home_dir'] + "/workspace/powerline_fonts" %}

zsh:
  pkg.installed: []

zsh_install_oh_my_zsh:
  cmd.run:
    - runas: {{ pillar['user']['username'] }}
    - name: git clone https://github.com/robbyrussell/oh-my-zsh.git {{ pillar['user']['home_dir'] }}/.oh-my-zsh
    - unless: test -d {{ pillar['user']['home_dir'] }}/.oh-my-zsh

zsh_setup_home:
  file.managed:
    - name: {{ pillar['user']['home_dir'] }}/.zshrc
    - user: {{ pillar['user']['username'] }}
    - group: {{ pillar['user']['username'] }}
    - template: jinja
    - source: salt://zshrc

zsh_set_default_shell:
  cmd.run:
    - name: chsh -s /usr/bin/zsh aaron
    - unless: grep {{ pillar['user']['username'] }} /etc/passwd | grep zsh

zsh_download_fonts:
  cmd.run:
    - name: git clone https://github.com/powerline/fonts.git {{ powerline_fonts_dir }}
    - runas: {{ pillar['user']['username'] }}
    - unless: test -d {{ powerline_fonts_dir }}

zsh_install_fonts:
  cmd.run:
    - name: ./install
    - cwd: {{ powerline_fonts_dir }}
    - runas: {{ pillar['user']['username'] }}
    - unless: ls {{ pillar['user']['home_dir'] }}/.local/share/fonts/ | grep Meslo
