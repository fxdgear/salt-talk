include:
  - mysite
  - version-control

git@github.com:fxdgear/leadville.git:
  git.latest:
    - rev: master
    - target: /home/django/treadhub.com/src/leadville
    - require:
      - pkg: git-core
