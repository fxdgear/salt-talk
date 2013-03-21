import os
import sys
import site

PROJECT_ROOT = '/home/{{user_name}}/{{domain}}.com/src/mysite'
site_packages = '/home/{{user_name}}/{{domain}}.com/lib/python2.7/site-packages'

site.addsitedir(os.path.abspath(site_packages))
sys.path.insert(0, PROJECT_ROOT)
sys.path.insert(1, os.path.join(PROJECT_ROOT))
sys.path.insert(2, site_packages)
os.environ['DJANGO_SETTINGS_MODULE'] = 'demo.prod'
os.environ['PYTHON_EGG_CACHE'] = '/home/{{user_name}}/.python-eggs'
os.environ["CELERY_LOADER"] = "django"


import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()

