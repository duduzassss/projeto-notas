from flask_sqlalchemy import SQLAlchemy
from datetime import date,datetime

db = SQLAlchemy()

class Alunos(db.Model):
	__tablename__= 'alunos'
	id				 = db.Column(db.Integer, primary_key=True)
	nome 			 = db.Column(db.String(250))
	serie			 = db.Column(db.String(20))
	turma			 = db.Column(db.String(50))
	nascimento		 = db.Column(db.DateTime())
	est_civil		 = db.Column(db.String(10))
	sexo			 = db.Column(db.String(10))
	nacionalidade	 = db.Column(db.String(50))
	nome_responsavel = db.Column(db.String(100))
	endereco		 = db.Column(db.String(250))
	bairro			 = db.Column(db.String(250))
	cidade			 = db.Column(db.String(250))
	cep				 = db.Column(db.String(50))
	telefone		 = db.Column(db.String(11))



	## O init serve para que esses parametros sejam instanciados nessa ordem. 
	## Se vc por algum motivo precisar passar ele de forma não ordenada, deve colocar o 
	## nome do atributo antes da variável, tipo Usuario(cpf='12345678900', nome='Edu')
	def __init__(self, nome,serie,turma,nascimento,est_civil, sexo, nacionalidade,nome_responsavel,endereco,bairro,cidade,cep,telefone):
		self.nome			= nome
		self.serie			= serie
		self.turma			= turma
		self.nascimento 	= nascimento
		self.est_civil		= est_civil
		self.sexo 			= sexo
		self.nacionalidade	= nacionalidade
		self.nome_responsavel = nome_responsavel
		self.endereco		= endereco
		self.bairro 		= bairro
		self.cidade 		= cidade
		self.cep 			= cep
		self.telefone		=telefone
	
	## O repr é uma representação que ocorre após o __init__ ser instânciada
	def __repr__(self):
		return '<Aluno: {}><Série: {}><Turma: {}>'.format(self.nome,self.serie,self.turma)

class Notas(db.Model):
	__tablename__='notas'
	id 				= db.Column(db.Integer, primary_key=True)
	primeira_nota 	= db.Column(db.String(10))
	segunda_nota 	= db.Column(db.String(10))
	terceira_nota 	= db.Column(db.String(10))
	media_final 	= db.Column(db.String(10))

	def __init__(self,primeira_nota,segunda_nota,terceira_nota,media_final):
		self.primeira_nota = primeira_nota
		self.segunda_nota  = segunda_nota
		self.terceira_nota = terceira_nota
		self.media_final   = media_final

	def __repr__(self):
		return '''<Primeira Nota: {}>
				<Segunda Nota: {}>
				<Terceira Nota: {}>
				<Media Final: {}>'''.format(self.nome)