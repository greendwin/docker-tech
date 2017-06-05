
update pip:
  pip.installed:
    - name: pip
    - upgrade: true

install docker for python:
  pip.installed:
    - pkgs:
      - urllib3==1.15.1
      - docker-py==1.7.2

