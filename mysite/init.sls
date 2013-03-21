include:
  - mysite.users
  - mysite.code
  - mysite.database
  - python
  - mysite.files

/home/django/mysite.com:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: /home/django/mysite.com/src/mysite/requirements.txt
    - require:
      - git: git://github.com/fxdgear/django-cms-demo.git
      - pip: virtualenvwrapper
      - user: django
      - postgres_database: demo


