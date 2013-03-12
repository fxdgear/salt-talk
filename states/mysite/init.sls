include:
  - mysite.users
  - mysite.code
  - mysite.database
  - python
  - mysite.files

/home/django/treadhub.com:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: /home/django/treadhub.com/src/leadaville/requirements.txt
    - require:
      - git: git@github.com:fxdgear/leadville.git
      - pip: virtualenvwrapper
      - user: django
      - postgres_database: treadhub
      - file: /etc/apache2/sites-enabled/mysite.conf


