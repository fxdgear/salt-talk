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
        domain: "mysite"
    - defaults:
        user_name: "django"
        domain: "mysite"
    - require:
      - file: /home/django/mysite.com/src/mysite/apache/mysite.wsgi
      - file: apache_log

apache_log:
  file.managed:
    - name: /var/log/apache2/mysite.com/error.log
    - user: django

/home/django/mysite.com/src/mysite/apache/mysite.wsgi:
  file.managed:
    - source: salt://mysite/mysite.wsgi
    - user: django
    - group: django
    - mode: 644
    - template: jinja
    - context:
        user_name: "django"
        domain: "mysite"
    - defaults:
        user_name: "django"
        domain: "mysite"
    - require:
      - file: /home/django/mysite.com/src/mysite/demo/prod.py

/home/django/mysite.com/src/mysite/demo/prod.py:
  file.managed:
    - source: salt://mysite/prod.py
    - user: django
    - group: django
    - mode: 644
    - template: jinja
    - context:
        user_name: "django"
        domain: "mysite"
    - defaults:
        user_name: "django"
        domain: "mysite"
    - require:
      - virtualenv: /home/django/mysite.com


