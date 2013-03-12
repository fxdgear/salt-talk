include:
  - mysite

/etc/apache2/sites-enabled/mysite.conf:
  file.managed:
    - source: salt://mysite/mysite.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
        user_name: "django"
        domain: "treadhub"
    - defaults:
        user_name: "django"
        domain: "treadhub"
    - require:
      - file: apache_log

apache_log:
  file.managed:
    - name: /var/log/apache2/treadhub.com/error.log
    - user: django

/home/django/code/treadhub.com/src/leadville/treadhub.wsgi:
  file.managed:
    - source: salt://mysite/mysite.wsgi
    - user: django
    - group: django
    - mode: 644
    - template: jinja
    - context:
        user_name: "django"
        domain: "treadhub"
    - defaults:
        user_name: "django"
        domain: "treadhub"
    - require:
      - virtualenv: /home/django/treadhub.com


