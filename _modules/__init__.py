SETTINGS = "autoroute.prod"
BIN_ENV = "/home/django/mysite.com"
PYTHONPATH = "/home/django/mysite.com/src/mysite/"

def run_command(command)

    return __salt__['django.command'](
        SETTINGS, command, BIN_ENV, PYTHONPATH)
