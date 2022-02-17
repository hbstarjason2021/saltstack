nginx-install:
  pkg.installed:
    - names:
      - nginx
nginx-service:
  service.running:
    - name: nginx
    - enable: True
    - reload: True
