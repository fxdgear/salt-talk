def syncdb():
    settings = "autoroute.prod"
    command = "syncdb"
    bin_env = "/home/django/treadhub.com"
    pythonpath = "/home/django/treadhub.com/src/leadville/"

    return __salt__['django.command'](
        settings, command, bin_env, pythonpath)
