include:
  - mysite
  - version-control

git://github.com/fxdgear/django-cms-demo.git:
  git.latest:
    - rev: master
    - target: /home/django/mysite.com/src/mysite
    - require:
      - pkg: git-core
