include:
  - postgres

django-user:
  cmd.run:
    - name: psql -c "CREATE ROLE django SUPERUSER LOGIN PASSWORD 'password'"
    - user: postgres
    - unless: psql -U postgres -c 'SELECT rolname FROM pg_roles;'|grep "django"
    - require:
      - postgres_database: django-db

django-db:
    postgres_database.present:
    - name: django
    - runas: postgres
    - require:
      - cmd: /var/lib/postgresql/configure_utf-8.sh

treadhub:
    postgres_database.present:
    - name: treadhub
    - runas: postgres
    - template: template_postgis
    - require:
      - cmd: django-user
      - cmd: postgis-template
