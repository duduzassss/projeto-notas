<style type="text/css">
  .dropdown-menu{
    background-color: #2C3E50;
  }
  .dropdown-item{
    color: white;
  }
</style>
<nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Dora Baby</a>

      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            
            <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle py-3 px-0 px-lg-3 rounded js-scroll-trigger" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              ALUNOS
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="/alunos">Lista de Alunos</a>
              <a class="dropdown-item" href="/alunos/add">Adicionar Alunos</a>
             
            </div>
            </div>
          </li>


          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle py-3 px-0 px-lg-3 rounded js-scroll-trigger" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              FECHAR NOTAS
            </button>
            <div class="dropdown-menu dropright" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item dropdown-toggle " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">notas</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">inserir nota</a>
                        <a class="dropdown-item" href="#">editar uma nota</a>
                        <a class="dropdown-item" href="#">deletar uma nota</a>
                    </div>
                  
              <a class="dropdown-item" href="#">Listar alunos/notas</a>
            </div>
            </div>


          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/login">Login</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/logout">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>