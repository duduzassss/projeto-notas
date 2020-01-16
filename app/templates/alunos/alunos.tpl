{% extends "alunos/base.tpl" %}
{% block title %}Alunos{% endblock %}

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
		.fa-trash-alt{
			color: #E01817;
		}
		.fa-edit{
			color: #083C78;
		}
		.fa-eye{
			color: #0B0000;
			margin-right: 5px;
		}
		.fa-home{
			color: #51CB20;

		}
		home{
			font-size: 10px;
			font-weight: bolder;
			font-family: 'Pacifico', cursive;
			color: #31393C;
		}
	</style>
{% endblock %}
{% block content %}
	<a href="/"><i class="fas fa-home fa-3x"><home>HOME</home></i></a>

	<div class="container">
      <h2 class="titulo">Lista de Alunos</h2>
      <hr class="new5">
      <div class="row">
      </div>
    </div>


    <table class="table table-sm">
	  <thead>
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">NOME DO ALUNO</th>
	      <th scope="col">DATA NASCIMENTO</th>
	      <th scope="col">RESPONSAVEL</th>
	      <th scope="col">TELEFONE</th>
	      
	    </tr>
	  </thead>
	  {% for dado in dados %}
	  <tbody>
	    <tr>
	      <th scope="row">{{dado.id}}</th>
	      <td>{{ dado.nome }}</td>
	      <td>{{ dado.nascimento }}</td>
	      <td>{{ dado.nome_responsavel }}</td>
	      <td>{{ dado.telefone }}</td>
	      <td>
	      	
            <a href="/alunos/edit/{{dado.id}}"><i class="fas fa-edit fa-2x"></i></a>
            <a href="/alunos/view/{{dado.id}}"><i class="fas fa-eye fa-2x"></i></a>
            <a href="#"><i class="fas fa-trash-alt fa-2x"></i></a>
          
	      </td>
	    </tr>
	  </tbody>
	  {% endfor %}
	</table>

{% endblock %}