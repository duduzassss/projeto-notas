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
			color: #0D1B1E;

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

	  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	  
	  {% for dado in dados %}
	  <tbody>
	    <tr>
	      <th scope="row" id="_id_{{dado.id}}">{{dado.id}}</th>
	      <td>{{ dado.nome }}</td>
	      <td>{{ dado.nascimento }}</td>
	      <td>{{ dado.nome_responsavel }}</td>
	      <td>{{ dado.telefone }}</td>
	      <td>
	      	
            <a href="/alunos/edit/{{dado.id}}"><i class="fas fa-edit fa-2x"></i></a>
            <a href="/alunos/view/{{dado.id}}"><i class="fas fa-eye fa-2x"></i></a>

            <a href="/alunos/del/{{dado.id}}" name="id_aluno"><i id="trash{{dado.id}}" class="fas fa-trash-alt fa-2x" onclick="confirmDelete()"></i></a>
     		
     		
        	<script type="text/javascript">
        		idAluno = document.getElementById('_id_{{dado.id}}');
        		$("#trash{{dado.id}}").click(function(event){
                event.preventDefault();
                // ajax_delete_user();
                console.log(document.getElementById('_id_{{dado.id}}'));
                // let idAluno = document.getElementById('_id_{{dado.id}}');


            });


        	</script>

	      </td>
	    </tr>
	  </tbody>
	  {% endfor %}
	</table>
	{% block scripts %}
		{{super()}}
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha256-KsRuvuRtUVvobe66OFtOQfjP8WA2SzYsmm4VPfMnxms=" crossorigin="anonymous"></script>
		<script type="text/javascript">
			var ids;
			function confirmDelete(){
				$.ajax({
				    url: '/alunos/del/',
				    async: false,
				    type: 'GET',
				    success: function(data){
				        ids = document.getElementById('_id_{{dados.id}}');
				        console.log(ids);
				       
				    },
				    error: function(error){
				        console.log(error)
				    }
				});


				$.ajax({
					url: '/alunos/del/'+ ids,
					type: 'GET',
					success: function(response){
						console.log(response);
					},
					error: function(error){
						console.log(error);
					}
				})
			}

		// $(document).ready(function(){
		// 	function ajax_delete_user(){
		// 		$.ajax({
		// 			url: '/alunos/del/'+ id_aluno,
		// 			type: 'GET',
		// 			data: {id_aluno_app : idAluno},
		// 			success: function(response){
		// 				console.log(response);
		// 			},
		// 			error: function(error){
		// 				swal("Ops, algo deu errado","ERRO","error");
		// 				console.log(error);
		// 			}
		// 		});
		// 	}
		// });
			
				
		</script>
	{% endblock %}
{% endblock %}