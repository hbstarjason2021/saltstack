base:
  '*':
    - docker
  'roles:prometheus':
    - match: grain
    - prometheus
