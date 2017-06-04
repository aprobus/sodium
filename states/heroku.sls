install_heroku_keys:
  cmd.run:
    - name: curl -fL https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
    - unless: apt-key list | grep heroku

/etc/apt/sources.list.d/heroku.list:
  file.append:
    - text: "deb https://cli-assets.heroku.com/branches/stable/apt ./"

heroku:
  pkg.installed:
    - refresh: True
