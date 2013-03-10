python-pkgs:
  pkg:
    - installed
    - names:
      - python-pip
      - python-dev
      - build-essential
      - python-imaging

virtualenvwrapper:
  pip.installed:
    - require:
      - pkg: python-pkgs
