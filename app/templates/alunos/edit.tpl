{% extends "bootstrap/base.html" %}
{% import 'bootstrap/wtf.html' as wtf %}

{% block title %}DORA BABY - Edição de informações do aluno{% endblock %}

{% block head %}
	{{super()}}
	{{ fontawesome_html() }}
	
{% endblock %}

{% block styles %}

	<style type="text/css">
		*,body{
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
		.nome .serie .turma .nascimento .est_civil .nacionalidade .responsavel .endereco .bairro .cidade .cep .telefone, label{
			color: #ffffff;
			background-color: #506C64;
			padding: 5px 5px 7px 7px;
			border-radius: 5px 0px 0px 5px;
		}
		.nome .serie .turma .nascimento .est_civil .nacionalidade .responsavel .endereco .bairro .cidade .cep .telefone, input{
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
		.serie select{
			width: 102px;
			height: 30px;
			margin-left: -4px;
			background-color: #DDFDFE;
			border-radius: 0px 5px 5px 0px;
		}
		.serie option{
			background-color: #DDFDFE;
		}

		.turma {
			clear: both;
			width: 147px;
			margin-left: 669px;

		}
		.turma select{
			width: 92px;
			margin-left: -4px;
			height: 30px;
			background-color: #DDFDFE;
			border-radius: 0px 5px 5px 0px;
		}
		.turma option{
			background-color: #DDFDFE;
		}
		.sexo{
			width: 146px;
			margin-left: 669px;
		}
		.sexo input{
			width: 12px;
			vertical-align: middle;
			position: relative;
			top: -3px;
		}
		.sexo-titulo{
			padding-left: 56.7px;
			padding-right: 56.7px;
			border-radius: 5px 5px 0px 0px;
		}
		.sexo-masc{
			background-color: #DDFDFE;
			color: #000000;
			vertical-align: middle;
			position: relative;
			top: 40px;
			display: block;
			width: 133.5px;
			border-radius: 0px 5px 5px 5px;
		}
		.sexo-femi{
			background-color: #DDFDFE;
			color:#000000;
			vertical-align: middle;
			position: relative;
			top: -34px;
			left: 0px;

			border-radius: 0px 0px 0px 0px;

			display: block;
			float: left;
			width: 133.5px;
		}
		
		.nascimento{
			width: 221px;
			position: absolute;
			margin-top: -115px;
		}
		.nascimento input{
			width: 129px;
			height: 27px;
			background-color: #DDFDFE;
		}
		.est_civil{
			width: 210px;
			position: absolute;
			margin-top: -115px;
			margin-left: 250px;
		}
		.est_civil input{
			width: 120px;
		}
		.nacionalidade{
			width: 222px;
			position: absolute;
			margin-top: -65px;
		}
		.nacionalidade select{
			width: 117px;
			margin-left: -4px;
			height: 31px;
			background-color: #DDFDFE;
			border-radius: 0px 5px 5px 0px;
		}
		.endereco{
			width: 403px;
			position: absolute;
			margin-top: -65px;
			margin-left: 250px;
		}
		.endereco input{
			width: 328px;
		}
		.bairro{
			position: absolute;
			margin-top: -15px;
			width: 220px;
			float: left;
			margin-right: 10px;

		}
		.bairro input{
			width: 165px;
		}
		.cidade{
			position: absolute;
			margin-top: -15px;
			width: 190px;
			margin-left: 250px;

		}
		.cidade input{
			width: 128px;
		}
		.responsavel{
			width: 650px;
			margin-top: 55px;
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
			height: 325px;
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
		}

		.botao{
			margin-left: 570px;
			margin-bottom: 25px;
			
			background-color: #449D44;
			color: #ffffff;
			border-style: none;
			border-radius: 5px;
			width: 200px;
			height: 35px;
			font-size: 18px;
		}
	</style>
{% endblock %}

{% block content %}
		
	<div class="container">
      <h2 class="titulo">Alterar informações</h2>
      <hr class="new5">
      <div class="row">
      </div>
    </div>
    <form action="{{ url_for('alunos.alunos_edit_post', _id_=_id_)}}" method="POST">
    	<input type="hidden" name="csrf_token" value="{{ csrf_token () }}"/>

    <div class="info-tudo">
    	<div class="nome">
		    <label>Nome</label>
		    <input type="text" name="nome"  value="{{dados.nome}}">
		</div>
		<div class="serie">
		    <label>Série</label><campo></campo>		<!--FAZER ESSE CAMPO DEPOIS-->
    		<select name="serie" value="{{dados.serie}}">
    			<option value="1º ano" {% if dados.serie == "1º ano" %} selected {% endif %}>1º ano</option>
    			<option value="2º ano" {% if dados.serie == "2º ano" %} selected {% endif %}>2º ano</option>
    			<option value="3º ano" {% if dados.serie == "3º ano" %} selected {% endif %}>3º ano</option>
    		</select>
		</div>
		<div class="turma">
		    <label>Turma</label><campo></campo>		<!--FAZER ESSE CAMPO DEPOIS-->
    		<select name="turma">
    			<!-- <option disabled selected>{{dados.turma}}</option> -->
    				<option value="a1" {% if dados.turma == "a1" %} selected {% endif %}>A1</option>
    				<option value="a2" {% if dados.turma == "a2" %} selected {% endif %}>A2</option>
    				<option value="l1" {% if dados.turma == "l1" %} selected {% endif %}>L1</option>
    				<option value="l2" {% if dados.turma == "l2" %} selected {% endif %}>L2</option>
    				<option value="r1" {% if dados.turma == "r1" %} selected {% endif %}>R1</option>
    				<option value="r2" {% if dados.turma == "r2" %} selected {% endif %}>R2</option>
    		</select>
		</div>
		<div class="sexo">
		    <label class="sexo-titulo">Sexo</label>
		    {% if dados.sexo == "masculino" %}
		    	<label class="sexo-masc"><input type="radio" name="sexo" value="masculino" checked>Masculino</label>
		    	<label class="sexo-femi"><input type="radio" name="sexo" value="feminino">Feminino</label>
		    {% else %}
		   		 <label class="sexo-masc"><input type="radio" name="sexo" value="masculino">Masculino</label>
		    	<label class="sexo-femi"><input type="radio" name="sexo" value="feminino" checked>Feminino</label>
		    {% endif %}
		</div>
		<div class="nascimento">
		    <label>Nascimento</label>
		    
		    <input type="date" name="nascimento"  value="{{dados.nascimento.strftime('%Y-%m-%d')}}">
		    
		</div>
		<div class="est_civil">
		    <label>Estado civil</label>
		    <input type="text" name="est_civil"  value="{{dados.est_civil}}">
		</div>
		
		<div class="nacionalidade">
		    <label>Nacionalidade</label>
		    
			<select name="nacionalidade">
				
				{% for item,valor in nacio.items() %}				
					<option value="{{valor}}" 
					{% if dados.nacionalidade in valor %}
						
					 	selected

					{% endif %}>{{valor}}</option>
				{% endfor %}
    			
    		</select>
		</div>
		<div class="endereco">
		    <label>Endereço</label>
		    <input type="text" name="endereco"  value="{{dados.endereco}}">
		</div>
		<div class="bairro">
		    <label>Bairro</label>
		    <input type="text" name="bairro"  value="{{dados.bairro}}">
		</div>
		<div class="cidade">
		    <label>Cidade</label>
		    <input type="text" name="cidade"  value="{{dados.cidade}}">
		</div>
		<div class="responsavel">
		    <label>Responsavel</label>
		    <input type="text" name="nome_responsavel"  value="{{dados.nome_responsavel}}">
		</div>
		<div class="cep">
		    <label>CEP</label>
		    <input type="text" name="cep"  value="{{dados.cep}}">
		</div>
		<div class="telefone">
		    <label>Telefone</label>
		    <input type="text" name="telefone"  value="{{dados.telefone}}">
		</div>

    </div>
 	<input type="submit" class="botao" name="botao" value="Alterar">
    </form>
    <a class="icon-home" href="/"><i class="fas fa-home fa-3x">Home</i></a>
   
{% endblock %}