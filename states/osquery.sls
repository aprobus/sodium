install_osquery_keys:
  cmd.run:
    - name: apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
    - unless: apt-key list | grep osquery

/etc/apt/sources.list.d/additional-repositories.list:
  file.append:
    - text: "deb [arch=amd64] https://osquery-packages.s3.amazonaws.com/trusty trusty main"

osquery:
  pkg.installed:
    - refresh: True
