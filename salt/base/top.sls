base:
  '*':
    - docker
  'roles:prometheus':
    - match: grain
    - nginx
