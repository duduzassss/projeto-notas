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
		body{
			background-color: #A2D3C2;
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

		.swal-title {
		  color: #000000;
		  font-weight: bold;
		 
		}
		.swal-text{
			color: red;
			font-weight: bold;

		}
		.style-hr2{
		    height: 10px;
		    border: 0;
		    box-shadow: 0 10px 10px -9px #000000 inset;
		    width: 570px;
		    margin-left: 0px;
		    margin-top: 6px;
		}
		.style-hr1{
			height: 10px;
		    border: 0;
		    box-shadow: 0 10px 4px -9px #000000 inset;
		    width: 570px;
		    margin-left: 0px;
		    margin-bottom: 0px;
		}

	</style>
{% endblock %}
{% block content %}
	<a href="/"><i class="fas fa-home fa-3x"><home>HOME</home></i></a>

	<div class="container">
      <h2 class="titulo">Lista de Alunos</h2>
      <div class="row">
      </div>
    </div>

	<div class="separador-search">
		
		<div class="input-group col-sm-5">
		  <input class="form-control"
		         placeholder="Procurar por alunos...">
		  <div class="input-group-addon" style="background-color: #0D1B1E;"><i class="fa fa-search" style="color: #ffffff;"></i></div>
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
	      <th scope="row">{{dado.id}}</th>
	      <td class="nome">{{ dado.nome }}</td>
	      <td>{{ dado.nascimento.strftime('%d/%m/%Y') }}</td>
	      <td>{{ dado.nome_responsavel }}</td>
	      <td>{{ dado.telefone }}</td>
	      <td>
	      	
            <a href="/alunos/edit/{{dado.id}}"><i class="fas fa-edit fa-2x"></i></a>
            <a href="/alunos/view/{{dado.id}}"><i class="fas fa-eye fa-2x"></i></a>

            <a href="#" onclick="return confirmation({{dado.id}})"><i class="fas fa-trash-alt fa-2x"></i></a>

	      </td>
	    </tr>
	  </tbody>
	  {% endfor %}
	</table>
	{% block scripts %}
		{{super()}}
		<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha256-KsRuvuRtUVvobe66OFtOQfjP8WA2SzYsmm4VPfMnxms=" crossorigin="anonymous"></script>
		<script type="text/javascript">
			nome_aluno = document.querySelector(".nome").innerHTML;
			function confirmation(id){
			    console.log(id);
			    swal({
			    	title:'Aluno(a):'+nome_aluno,
			    	text:'DELETAR?',
			    	className:"swal-title",
			    	className:"swal-text",
			    	buttons:{
			    		cancel:{
			    			text:"Não, cancelar agora!",
			    			value:null,
			    			visible:true

			    		},
			    		confirm:{
			    			text:"Sim, desejo excluir!",
			    			value:true,
			    			visible:true,

			    		}
			    	}
			    }).then(
			    		function (isConfirm) {
						        if (isConfirm) {
						        		swal("Excluído","","success",{
					        			buttons:false
						        	})	
						        		
					        		setTimeout(function(){
					        			location.href = '/alunos/del/'+id
					        		},1200)
					        	} else{
					        		setTimeout(function(){
					        		swal("Cancelado","","error");
					        		},200)
					        	}
					    }
					    
			    	)
			    	
			    
			    // location.href = '/alunos/del/'+id
			    return false;
			};
		</script>
	{% endblock %}
{% endblock %}