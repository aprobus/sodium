vim:
  pkg.installed: []

add_vim_config:
  file.managed:
    - name: {{ pillar['user']['home_dir'] }}/.vimrc
    - user: {{ pillar['user']['username'] }}
    - source: salt://vimrc
