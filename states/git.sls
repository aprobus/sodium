git:
  pkg.installed: []

add_git_config:
  file.managed:
    - name: {{ pillar['user']['home_dir'] }}/.gitconfig
    - source: salt://gitconfig
    - user: {{ pillar['user']['username'] }}
    - template: jinja
