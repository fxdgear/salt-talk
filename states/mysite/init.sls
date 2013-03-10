include:
  - mysite.users
  - mysite.code
  - python

/var/www/treadhub.com:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: /home/django/treadhub.com/src/requirements.txt
    - require:
      - git: git@github.com:fxdgear/leadville.git
      - pip: virtualenvwrapper
      - user: django

