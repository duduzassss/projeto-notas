import os
class Config():
	SQLALCHEMY_TRACK_MODIFICATIONS = False
	SQLALCHEMY_ECHO = False
	SQLALCHEMY_DATABASE_URI = 'sqlite:///escola.db'
	SECRET_KEY = 'SAwGF¨SAGSA$#G$XZ*XZ&*(B*XZ)(B*S(A*G(ASHU()AS*HSA&SAGSAJGI()BV`ÇASÇLVAS)(VÇXZ^XV'

class DevolopmentConfig(Config):
	DEBUG = True

class TestConfig(Config):
	DEBUG = True
	SQLALCHEMY_DATABASE_URI = 'sqlite:///test.db'
	
class ProductionConfig(Config):
	DEBUG = True

app_config ={
			'development': DevolopmentConfig,
			'test': TestConfig,
			'production': ProductionConfig
			}