from flask_wtf import FlaskForm
from wtforms import StringField,BooleanField, IntegerField,SubmitField
from wtforms.validators import InputRequired,Length, DataRequired

class AdicionaAlunosForm(FlaskForm):
	nome 		= StringField('NOME',validators=[InputRequired(),Length(min=3)])
	serie		= StringField('SÉRIE',validators=[InputRequired(),Length(min=2, max=8)])
	turma		= StringField('TURMA',validators=[InputRequired(), Length(min=2)])
	nascimento 	= StringField('DATA NASCIMENTO',validators=[InputRequired()])
	est_civil 	= StringField('ESTADO CIVIL',validators=[InputRequired()])
	sexo		= StringField('SEXO',validators=[InputRequired()])
	nacionalidade= StringField('NACIONALIDADE',validators=[InputRequired()])
	nome_responsavel= StringField('RESPONSAVEL',validators=[InputRequired(),Length(min=3)])
	endereco	= StringField('ENDEREÇO', validators=[InputRequired(),Length(min=5, max=50)])
	bairro		= StringField('BAIRRO', validators=[InputRequired(),Length(min=3, max=30)])
	cidade		= StringField('CIDADE', validators=[InputRequired(),Length(min=3, max=30)])
	cep 		= StringField('CEP', validators=[InputRequired(),Length(min=8, max=8)])
	telefone	= StringField('TELEFONE', validators=[InputRequired(),Length(min=9, max=9)])
	