include:
  - mysite
  - python

/var/www/treadhub.com:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: /home/django/treadhub.com/src/leadville/requirements.txt
    - require:
      - git: https://github.com/fxdgear/leadville.git

      - pip: virtualenvwrapper
      - user: django

