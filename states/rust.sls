{% set rust_version = "1.13.0" %}

rust_install_deps:
  pkg.installed:
    - pkgs:
      - build-essential
      - cmake

rust_download_source:
  archive.extracted:
    - name: {{ pillar['user']['home_dir'] }}/workspace/rust-lang
    - source: "https://static.rust-lang.org/dist/rust-{{ rust_version }}-x86_64-unknown-linux-gnu.tar.gz"
    - source_hash: md5=6ebf143bb4ab6cf8047335159659c263
    - tar_options: z
    - archive_format: tar
    - user: {{ pillar['user']['username'] }}

rust_install:
  cmd.run:
    - name: ./install.sh
    - cwd: {{ pillar['user']['home_dir'] }}/workspace/rust-lang/rust-{{ rust_version }}-x86_64-unknown-linux-gnu
    - unless: which rustc
