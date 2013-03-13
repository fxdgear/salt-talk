def syncdb():
    command = "syncdb"
    SETTINGS = "autoroute.prod"
    BIN_ENV = "/home/django/treadhub.com"
    PYTHONPATH = "/home/django/treadhub.com/src/leadville/"

    return __salt__['django.command'](
        SETTINGS, command, BIN_ENV, PYTHONPATH)

def migrate():
    command = "migrate"
    SETTINGS = "autoroute.prod"
    BIN_ENV = "/home/django/treadhub.com"
    PYTHONPATH = "/home/django/treadhub.com/src/leadville/"

    return __salt__['django.command'](
        SETTINGS, command, BIN_ENV, PYTHONPATH)


def collectstatic():
    SETTINGS = "autoroute.prod"
    BIN_ENV = "/home/django/treadhub.com"
    PYTHONPATH = "/home/django/treadhub.com/src/leadville/"

    return __salt__['django.collectstatic'](
        SETTINGS, BIN_ENV, pythonpath=PYTHONPATH)

def restart_apache():
    return __salt__['apache.signal']('restart')

def restart_supervisord():
    return __salt__['cmd.run']('service supervisord restart')

def foo():
    return True
