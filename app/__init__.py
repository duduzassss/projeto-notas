from flask import Flask
from flask_migrate import Migrate
from app.models.models import db, Alunos
from flask_bootstrap import Bootstrap
from config import app_config
from flask_fontawesome import FontAwesome
from flask_wtf.csrf import CsrfProtect
import os

migrate = Migrate()
bootstrap = Bootstrap()
fa = FontAwesome()
csrf=CsrfProtect()
config_name = os.environ.get('FLASK_ENV')

def create_app(config_filename='config.py', cfg_name=config_name):
	app = Flask('teste', template_folder='app/templates')
	app.config.from_object(app_config[cfg_name])
	db.init_app(app)
	migrate.init_app(app,db)
	bootstrap.init_app(app)
	csrf.init_app(app)
	fa.init_app(app)
	from .blueprints.home import home
	from .blueprints.alunos import alunos

	app.register_blueprint(home)
	app.register_blueprint(alunos)

	return app 
