import os
import sys


sys.path.append('/home/winning/app')
sys.path.append('/home/winning')


os.environ['DJANGO_SETTINGS_MODULE'] = 'app.settings'

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()
