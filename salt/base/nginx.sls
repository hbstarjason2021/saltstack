nginx:
  pkgrepo.managed:
    - name: deb http://nginx.org/packages/ubuntu/ {{grains['oscodename']}} nginx
    - key_url: http://nginx.org/keys/nginx_signing.key
    - refresh_db: true
    - require_in:
      - pkg: nginx

  pkg.installed:
    - name: nginx
