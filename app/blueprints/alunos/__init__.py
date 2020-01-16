from flask import Blueprint

alunos = Blueprint('alunos',__name__)

from . import routes