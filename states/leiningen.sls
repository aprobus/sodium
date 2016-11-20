maven:
  pkg.installed: []

install_leiningen:
  file.managed:
    - name: /usr/local/bin/lein
    - source: https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
    - source_hash: md5=360729fda9d736a2382b30ae3bab67cd
    - mode: 777
