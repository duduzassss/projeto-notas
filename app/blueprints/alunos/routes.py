from flask import render_template,request,flash,redirect,jsonify
from ...models.models import Alunos
from .forms import AdicionaAlunosForm
from flask_login import current_user



from . import alunos
from ... import db



@alunos.route('/alunos')
def lista_alunos():
	dados = Alunos.query.all()
	return render_template('alunos/alunos.tpl',dados=dados)

@alunos.route('/alunos/add', methods=['GET'])
def alunos_add_get():
	form = AdicionaAlunosForm()
	dados = Alunos.query.all()
	return render_template('alunos/add_alunos.tpl',form=form, dados=dados)

@alunos.route('/alunos/add', methods=['POST'])
def alunos_add_post():
	form = AdicionaAlunosForm(request.form)
	serie = request.form.get('serie')
	turma = request.form.get('turma')
	est_civil = request.form.get('est_civil')
	sexo = request.form.get('sexo')
	nascimento = request.form.get('nascimento')
	print('REQUEST FORM', request.form)
	
	print('serie',serie ,'turma',turma,'est_civil',est_civil,'sexo',sexo, 'nascimento',nascimento)

	if form.validate_on_submit() and request.method == 'POST':
		print('ENTROU')
		try:
			novo_aluno = Alunos(nome=form.nome.data,
								serie=form.serie.data,
								turma=form.turma.data,
								nascimento=form.nascimento.data,
								est_civil=form.est_civil.data,
								sexo=form.sexo.data,
								nacionalidade=form.nacionalidade.data,
								nome_responsavel=form.nome_responsavel.data,
								endereco=form.endereco.data,
								bairro=form.bairro.data,
								cidade=form.cidade.data,
								cep=form.cep.data,
								telefone=form.telefone.data
								)
			print('NOVO ALUNO',novo_aluno)
			db.session.add(novo_aluno)
			db.session.commit()
			flash('Aluno adicionado!','success')
		except Exception as e:
			flash ('erro'+str(e) ,'danger')
			print('erro'+str(e))
	else:
		flash('Erro nos dados, verifique e insira os dados novamente'+str(form.errors),'danger')
	return redirect('/alunos/add')

@alunos.route('/alunos/view/<int:_id_>', methods=['GET'])
def alunos_view(_id_):
	dados = Alunos.query.filter_by(id=_id_).first()

	return render_template('alunos/view.tpl', dados=dados)

@alunos.route('/alunos/edit/<int:_id_>', methods=['GET'])
def alunos_edit_get(_id_):
	form = AdicionaAlunosForm()
	dados = Alunos.query.filter_by(id=_id_).first()
	return render_template('/alunos/edit.tpl', form=form, dados=dados, _id_=_id_)

@alunos.route('/alunos/edit/<int:_id_>', methods=['POST'])
def alunos_edit_post(_id_):
	form = AdicionaAlunosForm()
	dados = Alunos.query.filter_by(id=_id_).first()
	print(form.nome.data)
	print(form.nome_responsavel.data)

	
	if form.validate_on_submit():
		dados.nome = form.nome.data
		dados.serie= form.serie.data
		dados.turma= form.turma.data
		dados.sexo= form.sexo.data
		dados.nascimento= form.nascimento.data
		dados.est_civil= form.est_civil.data
		dados.nacionalidade= form.nacionalidade.data
		dados.endereco= form.endereco.data
		dados.bairro= form.bairro.data
		dados.cidade= form.cidade.data
		dados.nome_responsavel= form.nome_responsavel.data
		dados.cep= form.cep.data
		dados.telefone= form.telefone.data

		db.session.add(dados)
		print(dados)
		db.session.commit()
		print('SUCESSO')
	else:
		print('ERRO',form.errors)
	return redirect('/alunos')


@alunos.route('/alunos/del/<int:_id_>', methods=['GET'])
def alunos_del_get(_id_):
	dados = Alunos.query.filter_by(id=_id_).first()
	print('dados',dados)
	
	db.session.delete(dados)
	db.session.commit()
	return redirect('/alunos')