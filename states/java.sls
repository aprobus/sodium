java_add_ppa:
  cmd.run:
    - name: add-apt-repository -y ppa:webupd8team/java && echo oracle-java8-install shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
    - unless: test -f /etc/apt/sources.list.d/webupd8team-java-xenial.list

oracle-java8-installer:
  pkg.installed:
    - refresh: True

oracle-java8-set-default:
  pkg.installed: []
