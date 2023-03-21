import os
from sqlalchemy import create_engine


class Config(object):
    SECRET_KEY = 'SUPER_SECRET_KEY'
    SESSION_COOKIE_SECURE = False


class DevelopmentConfig(Config):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = "mysql+pymysql://bassrobert:18002424Utl!@127.0.0.1/idgs801"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
