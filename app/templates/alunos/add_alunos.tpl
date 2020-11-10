{% extends "bootstrap/base.html" %}
{% import 'bootstrap/wtf.html' as wtf %}

{% block title %}DORA BABY - Adicionar Alunos{% endblock %}

{% block head %}
	{{super()}}
	{{ fontawesome_html() }}
	<link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
{% endblock %}

{% block styles %}
	{{super()}}
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
		home{
			font-size: 10px;
			font-weight: bolder;
			font-family: 'Pacifico', cursive;
			color: #31393C;
		}
		.fa-home{
			color: #0D1B1E;

		}
		campo input{
			background-color: #2E4052;
			border: solid 2px #01161E;
			color: white;
			font-weight: bold;
		}
		.nome{
			margin-right: 30px;
			width: 1042px;
			margin-bottom: 18px;
		}
		.nome input{
			width: 1000px;
			border-radius: 2px;

		}
		
		.serie{
			float: left;
			margin-right: 23px;
			width: 173px;
		}

		.turma{
			float: left;
			margin-right: 23px;
		}

		.nascimento{
			width: 250px;
			float: left;
			margin-right: 23px;

		}
		.nascimento input{
			width: 135px;
			text-align: center;
			border-radius: 5px;
			background-color: #2E4052;
			color: white;
		}
		.est_civil{
			width: 210px;
			float: left;
			margin-right: 23px;

		}
		.sexo{
			width: 133px;
			float: left;
			margin-bottom: 18px;
		}
		.sexo select{
			width: 90px;

		}
		.nacionalidade{
			width: 373px;
			clear: both;
			float: left;
			margin-right: 30px;
		}
		.nacionalidade input{
			width: 253px;
			border-radius: 2px;

		}
		.nacionalidade select, input{
			width: 250px;
		}
		.responsavel{
			width: 638px;
			float: left;
			margin-bottom: 18px;
		}
		.responsavel input{
			width: 532px;
			border-radius:2px;
		}
		.endereco{
			float: left;
			width: 373px;
			margin-right: 30px;
		}
		.endereco input{
			width: 291px;
			border-radius:2px;
		}
		.bairro{
			width: 330px;
			float: left;
			margin-right: 30px;
		}
		.bairro input{
			width: 274px;
			border-radius: 2px;
		}
		.cidade{
			width: 278px;
			float: left;
			margin-bottom: 18px;
		}
		.cidade input{
			width: 224px;
			border-radius: 2px;
		}
		.cep{
			float: left;
			width: 373px;
			margin-right: 30px;
		}
		.cep input{
			width: 341px;
			border-radius: 2px;
		}
		.telefone{
			width:330px;
			float: left;
			margin-bottom: 18px;
		}
		.telefone input{
			width:254px;
			border-radius: 2px;
		}


		.botao{
			clear: both;
			float: left;
			width: 340px;
			font-weight: bold;
			font-size: 18px;
			margin-left: 500px;
		}
		.sexo .est_civil .turma .serie, select{
			background-color: #2E4052;
			color: #ffffff;
		}
		.sexo .est_civil .turma .serie, option{
			background-color: #2E4052;
		}

		.data input{
			width: 150px;
			background-color: red;
		}
	</style>
{% endblock %}
{% block content %}
	


	<a href="/"><i class="fas fa-home fa-3x"><home>HOME</home></i></a>

	<div class="container">
      <h2 class="titulo">Informações do novo aluno</h2>
      <hr class="new5">
      <div class="row">
      </div>
    </div>

    <form action="{{ url_for('alunos.alunos_add_post')}}" method="POST">
    	
    	<input type="hidden" name="csrf_token" value="{{ csrf_token () }}"/>
    	

    	<div class="nome">
    		<label>NOME</label><campo>{{form.nome}}</campo>
    	</div>
    	<div class="serie">
    		<label>SÉRIE</label><campo></campo>		<!--FAZER ESSE CAMPO DEPOIS-->
    		<select name="serie">
    			<option disabled selected>Selecionar série</option>
    			<option>1º ano</option>
    			<option>2º ano</option>
    			<option>3º ano</option>
    		</select>

    	</div>
    	<div class="turma">
    		<label>TURMA</label><campo></campo>		<!--FAZER ESSE CAMPO DEPOIS-->
    		<select name="turma">
    			<option disabled selected>Selecionar turma</option>
    			<option>A1</option>
    			<option>A2</option>
    			<option>L1</option>
    			<option>L2</option>
    			<option>R1</option>
    			<option>R2</option>
    		</select>
    	</div>
    	<div class="nascimento">
    		<label>NASCIMENTO</label><!-- <campo name="nascimento">{{form.nascimento}}</campo> -->
    		<input type="date" class="data" name="nascimento">
    	</div>
    	<div class="est_civil">
    		<label>ESTADO CIVIL</label><campo></campo>              <!--FAZER ESSE CAMPO DEPOIS-->
    		<select name="est_civil">
    			<option disabled selected>Selecionar</option>
    			<option>Solteiro(a)</option>
    			<option>Casado(a)</option>
    			<option>Divorciado(a)</option>
    			<option>Viúvo(a)</option>
    		</select>
    	</div>
    	<div class="sexo">
    		<label>SEXO</label><campo></campo>			<!--FAZER ESSE CAMPO DEPOIS-->
    		<select name="sexo">
    			<option disabled selected>Selecionar</option>
    			<option>Masculino</option>
    			<option>Feminino</option>

    		</select>
    	</div>
    	<div class="nacionalidade">
    		<label>NACIONALIDADE</label><!-- <campo>{{form.nacionalidade}}</campo> -->
    		<select name="nacionalidade">
    			{% for nac in nacio.values() %}
    				<option>{{nac}}</option>
    			{% endfor %}
    		</select>
    	</div>
    	<div class="responsavel">
    		<label>RESPONSÁVEL</label><campo>{{form.nome_responsavel}}</campo>
    	</div>
    	<div class="endereco">
    		<label>ENDEREÇO</label><campo>{{form.endereco}}</campo>
    	</div>
    	<div class="bairro">
    		<label>BAIRRO</label><campo>{{form.bairro}}</campo>
    	</div>
    	<div class="cidade">
    		<label>CIDADE</label><campo>{{form.cidade}}</campo>
    	</div>
    	<div class="cep">
    		<label>CEP</label><campo>{{form.cep}}</campo>
    	</div>
    	<div class="telefone">
    		<label>TELEFONE</label><campo>{{form.telefone}}</campo>
    	</div>


    	<input type="submit" class="botao btn btn-success " name="botao" value="Concluir cadastro">
    </form>

	<!--{{wtf.quick_form(form=form)}}-->



{% endblock %}