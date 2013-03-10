include:
  - mysite
  - python

/var/www/djangoproject.com:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: /home/django/djangoproject.com/src/djangoproject.com/deploy-requirements.txt
    - require:
      - git: https://github.com/django/djangoproject.com.git
      - pip: virtualenvwrapper
      - user: django

