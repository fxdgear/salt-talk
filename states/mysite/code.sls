include:
  - mysite
  - version-control

https://github.com/fxdgear/leadville.git
  git.latest:
    - rev: master
    - target: /home/django/treadhub.com/src/
    - require:
      - pkg: git-core
