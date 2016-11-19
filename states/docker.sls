docker_deps:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - ca-certificates

docker_keys:
  cmd.run:
    - name: apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    - unless: apt-key list | grep Docker

/etc/apt/sources.list.d/docker.list:
  file.append:
    - text: "deb https://apt.dockerproject.org/repo ubuntu-xenial main"

docker-engine:
  pkg.installed:
    - refresh: True

docker:
  service.running:
    - enable: True

add_docker_group:
  user.present:
    - name: {{ pillar['user']['username'] }}
    - groups:
      - docker
    - remove_groups: False
