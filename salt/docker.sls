repository:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - curl
      - ca-certificates
      - software-properties-common
    - refresh: True

docker-ce:
  pkgrepo.managed:
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu {{grains['oscodename']}} stable
    - key_url: https://download.docker.com/linux/ubuntu/gpg
    - refresh_db: true
    - require:
      - pkg: repository
    - require_in:
      - pkg: docker-ce

  pkg.installed:
    - name: docker-ce
    - refresh: True
