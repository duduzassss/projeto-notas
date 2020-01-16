# app/blueprints/home/__init__.py
from flask import Blueprint # Importando a lib Blueprint de dentro do packge flask
home = Blueprint('home',__name__) # Instanciando Blueprint em home
from . import routes # Importando da pasta atual, o arquivo routes