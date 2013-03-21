django:
  user.present:
    - shell: /bin/bash
    - home: /home/django
    - groups:
      - www-data

django_group:
  group.present:
    - name: django
