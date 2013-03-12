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
