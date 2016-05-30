#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Nathan Harrington'
SITENAME = u'Nathan Harrington'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'Europe/Paris'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
         ('Python.org', 'http://python.org/'),
         ('Jinja2', 'http://jinja.pocoo.org/'),
         ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

STATIC_PATHS = ['images', 'files', 'extra/robots.txt',
        'extra/favicon.ico', 'extra/custom.css', 'extra/CNAME']

EXTRA_PATH_METADATA = {
    'extra/robots.txt': {'path': 'robots.txt'},
    'extra/favicon.ico': {'path': 'favicon.ico'},
}

# Blogroll
LINKS = None

# Social widget
SOCIAL = (
          ('github', 'http://github.com/NathanHarrington'),
          ('linkedin', 'https://www.linkedin.com/in/harringtonnathan'),
          ('google-plus', 'https://plus.google.com/100412424991063551562'),
         )

# Don't show generated categories in menu (like manuals)
DISPLAY_CATEGORIES_ON_MENU=False

# Show the colorful banner image on all pages
#BANNER = 'images/banner.png'
#BANNER_ALL_PAGES = True
#BANNER_SUBTITLE = "banner sub"

# don't show any of the right side info
#HIDE_SIDEBAR=True

BOOTSTRAP_THEME="paper"

#HIDE_SITENAME=True
HIDE_SIDEBAR=False
