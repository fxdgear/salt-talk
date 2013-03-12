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
      - file: /home/django/treadhub.com/src/leadville/apache/mysite.wsgi
      - file: apache_log

apache_log:
  file.managed:
    - name: /var/log/apache2/treadhub.com/error.log
    - user: django

/home/django/treadhub.com/src/leadville/apache/mysite.wsgi:
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


