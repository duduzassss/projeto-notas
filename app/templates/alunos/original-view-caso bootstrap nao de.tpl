{% extends "bootstrap/base.html" %}
{% import 'bootstrap/wtf.html' as wtf %}

{% block title %}DORA BABY - Visualização de informações do aluno{% endblock %}

{% block head %}
	{{super()}}
	{{ fontawesome_html() }}
	
{% endblock %}

{% block styles %}
	<style type="text/css">
		*{
			background-color: #A2D3C2;
		}
		hr.new5 {
		  border: 3px solid green;
		  border-radius: 10px;
		}
		hr{
			width: 300px;
		}
		.titulo{
			text-align: center;
			text-transform: uppercase;
			font-weight: bold;
			color: #181F1C;
			font-family: 'Bree Serif', serif;
			font-size: 32px;
			margin-bottom: 20px;
		}

		.nome {
			width: 654px;
			float: left;
		}
		.nome input{
			width: 600px;
		}
		.nome .serie .turma .nascimento .est_civil .sexo .nacionalidade .responsavel .endereco .bairro .cidade .cep .telefone, label{
			color: #ffffff;
			background-color: #506C64;
			padding: 5px 5px 7px 7px;
			border-radius: 5px 0px 0px 5px;
		}
		.nome .serie .turma .nascimento .est_civil .sexo .nacionalidade .responsavel .endereco .bairro .cidade .cep .telefone, input{
			background-color: #DDFDFE;
			margin-left: -4px;
			border-radius: 0px 5px 5px 0px;
			border-style: solid;
			border-width: 1px;
			height: 25px;
		}
		.nome,.serie, .turma, .nascimento, .est_civil, .sexo, .nacionalidade, .responsavel, .endereco, .bairro, .cidade, .cep, .telefone {
			margin-bottom: 20px;
		}
		.serie{
			width: 148px;
			float: left;
			margin-left: 15px;
		}
		.serie input{
			width: 100px;
		}
		.turma {
			clear: both;
			width: 147px;
			margin-left: 669px;

		}
		.turma input{
			width: 90px;
		}
		.sexo{
			width: 146px;
			margin-left: 669px;
		}
		.sexo input{
			width: 100px;
		}
		.nascimento{
			width: 221px;
			position: absolute;
			margin-top: -98px;
		}
		.nascimento input{
			width: 80px;
			text-align: center;
		}
		.est_civil{
			width: 210px;
			position: absolute;
			margin-top: -98px;
			margin-left: 250px;
		}
		.est_civil input{
			width: 120px;
		}
		.nacionalidade{
			width: 222px;
			position: absolute;
			margin-top: -50px;
		}
		.nacionalidade input{
			width: 115px;
		}
		.endereco{
			width: 403px;
			position: absolute;
			margin-top: -50px;
			margin-left: 250px;
		}
		.endereco input{
			width: 328px;
		}
		.bairro{
			margin-left: 250px;
			width: 205px;
			float: left;
			margin-right: 10px;
		}
		.bairro input{
			width: 150px;
		}
		.cidade{
			width: 190px;
			float: left;
		}
		.cidade input{
			width: 128px;
		}
		.responsavel{
			clear: both;
			width: 650px;
		}
		.responsavel input{
			width: 555px;
		}
		.cep{
			width: 114px;
			float: left;
			margin-right: 15px;
		}
		.cep input{
			width: 70px;
		}
		.telefone{
			width: 170px;
			float: left;

		}
		.telefone input{
			width: 100px;
		}

		.info-tudo{
			background-color: #A5D3F2;
			height: 290px;
			width: 818px;
			padding: 15px 15px 0px 15px;

			margin: 0 auto;
			margin-top: 30px;

			border: solid #6B6570 1.3px;
			border-radius: 4px;

			margin-bottom: 40px;

		}
		.icon-home{
			color: #0D1B1E;
			margin-left: 580px;
			clear: both;
		}
	</style>
{% endblock %}

{% block content %}
	<div class="container">
      <h2 class="titulo">Informações do aluno</h2>
      <hr class="new5">
      <div class="row">
      </div>
    </div>

    <div class="info-tudo">
    	<div class="nome">
		    <label>Nome</label>
		    <input type="text" name="nome" disabled value="{{dados.nome}}">
		</div>
		<div class="serie">
		    <label>Série</label>
		    <input type="text" name="serie" disabled value="{{dados.serie}}">
		</div>
		<div class="turma">
		    <label>Turma</label>
		    <input type="text" name="turma" disabled value="{{dados.turma}}">
		</div>
		<div class="sexo">
		    <label>Sexo</label>
		    <input type="text" name="sexo" disabled value="{{dados.sexo}}">
		</div>
		<div class="nascimento">
		    <label>Data de nascimento</label>
		    <input type="text" name="nascimento" disabled value="{{dados.nascimento.strftime('%d/%m/%Y')}}">
		</div>
		<div class="est_civil">
		    <label>Estado civil</label>
		    <input type="text" name="est_civil" disabled value="{{dados.est_civil}}">
		</div>
		
		<div class="nacionalidade">
		    <label>Nacionalidade</label>
		    <input type="text" name="nacionalidade" disabled value="{{dados.nacionalidade}}">
		</div>
		<div class="endereco">
		    <label>Endereço</label>
		    <input type="text" name="endereco" disabled value="{{dados.endereco}}">
		</div>
		<div class="bairro">
		    <label>Bairro</label>
		    <input type="text" name="bairro" disabled value="{{dados.bairro}}">
		</div>
		<div class="cidade">
		    <label>Cidade</label>
		    <input type="text" name="cidade" disabled value="{{dados.cidade}}">
		</div>
		<div class="responsavel">
		    <label>Responsavel</label>
		    <input type="text" name="responsavel" disabled value="{{dados.nome_responsavel}}">
		</div>
		<div class="cep">
		    <label>CEP</label>
		    <input type="text" name="cep" disabled value="{{dados.cep}}">
		</div>
		<div class="telefone">
		    <label>Telefone</label>
		    <input type="text" name="telefone" disabled value="{{dados.telefone}}">
		</div>

    </div>
    <a class="icon-home" href="/"><i class="fas fa-home fa-3x">Home</i></a>
{% endblock %}