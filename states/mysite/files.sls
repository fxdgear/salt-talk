/etc/apache2/sites-enabled/mysite.conf:
  file.managed:
    - source: salt://mysite/mysite.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
        username: "django"
        domain: "treadhub"
    - defaults:
        custom_var: "django"
        other_var: "treadhub"
