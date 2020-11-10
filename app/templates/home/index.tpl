<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>..:: Dora Baby ::..</title>

  <!-- Bootstrap core CSS -->
  <link href="{{ url_for('static', filename='vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="{{ url_for('static', filename='vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Plugin CSS -->
  <link href="{{ url_for('static', filename='vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="{{ url_for('static', filename='css/freelancer.min.css') }}" rel="stylesheet">

  <style type="text/css">
    hr.star-light:after {
      background-color: initial;
    }
    .mudacor{
      background-color: #FAAB3F;
    }
  </style>

</head>

<body id="page-top">
  {% include 'home/menu.tpl' %}
  <!-- Navigation -->
  

  <!-- Header -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container">
      <img class="img-fluid mb-5 d-block mx-auto" src="{{ url_for('static', filename='img/principal.png') }}" alt="">
      <h1 class="text-uppercase mb-0">Dora Baby</h1>
      <hr class="star-light">
      <h2 class="font-weight-light mb-0">As primeiras descobertas... são AQUI!</h2>
    </div>
  </header>

  <!-- Portfolio Grid Section -->
  <section class="portfolio" id="portfolio">
    <div class="container">
      <h2 class="text-center text-uppercase text-secondary mb-0">Projetos infantil</h2>
      <hr class="star-dark mb-5">
      <div class="row">
        <div class="col-md-6 col-lg-4">
          <a class="portfolio-item d-block mx-auto" href="#">
            <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
              <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                <h3>Projeto Plantando para colher</h3>
                <p style="font-size: 15px;">"Trabalhando" em equipe, ops... Diversão em equipe!</p>
              </div>
            </div>
            <img class="img-fluid" src="{{ url_for('static', filename='img/proj-1.jpg') }}" alt="">
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a class="portfolio-item d-block mx-auto" href="#">
            <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
              <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                <h3>Projeto Regue uma plantinha</h3>
                <p style="font-size: 15px;">Clara e Ana, regando as mudinhas, recém plantadas, por elas mesmas!</p>
              </div>
            </div>
            <img class="img-fluid" src="{{ url_for('static', filename='img/proj-2.jpg') }}" alt="">
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a class="portfolio-item d-block mx-auto" href="#">
            <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
              <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                <h3>Projeto Raciocinio rápido</h3>
                <p style="font-size: 15px;">Alunos jogando xadrez, com auxílio da professora Maria.</p>
              </div>
            </div>
            <img class="img-fluid" src="{{ url_for('static', filename='img/proj-3.jpg') }}" alt="">
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a class="portfolio-item d-block mx-auto" href="#">
            <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
              <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                <h3>Projeto Desinibir</h3>
                <p style="font-size: 15px;">Apresentação das nossas florzinhas, da 3º série.</p>
              </div>
            </div>
            <img class="img-fluid" src="{{ url_for('static', filename='img/proj-4.jpg') }}" alt="">
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a class="portfolio-item d-block mx-auto" href="#">
            <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
              <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                <h3>Projeto Da Vinci</h3>
                <p style="font-size: 15px;">Para eles a tinta não serve para pintar, sim para se, DIVERTIIIIR!</p>
              </div>
            </div>
            <img class="img-fluid" src="{{ url_for('static', filename='img/proj-5.jpg') }}" alt="">
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a class="portfolio-item d-block mx-auto" href="#">
            <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
              <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                <h3>Projeto União</h3>
                <p style="font-size: 15px;">Que tal se juntar a nossa fila e se tornar o próximo número?</p>
              </div>
            </div>
            <img class="img-fluid" src="{{ url_for('static', filename='img/proj-6.jpg') }}" alt="">
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- About Section -->
  <section class="mudacor text-white mb-0" id="about">
    <div class="container">
      <h2 class="text-center text-uppercase text-white">nossos princípios</h2>
      <hr class="star-light mb-5">
      <div class="row">
        <div class="col-lg-5 mx-auto text-justify">
          <p class="lead" style="text-indent: 15px;">Igualdade de condições para acesso e permanência na escola.
          Respeito ao pluralismo de ideias e concepções pedagógicas.
          Reconhecimento e respeito da diversidade.
          Garantia de ensino público gratuito, democrático e de qualidade social.
          Gestão democrática na forma da lei.
          Vinculação entre educação escolar, o trabalho e as práticas sociais.</p>
        </div>
      </div>
      
<!-- <div class="col-md-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Siga-nos nas redes</h4> -->



    </div>
  </section>

  <!-- Contact Section -->
  <section id="contact">
    <div class="container">
      <h2 class="text-center text-uppercase text-secondary mb-0">fale conosco</h2>
      <hr class="star-dark mb-5">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
          <form name="sentMessage" id="contactForm" novalidate="novalidate">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Nome</label>
                <input class="form-control" id="name" type="text" placeholder="Nome" required="required" data-validation-required-message="Please enter your name.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Email</label>
                <input class="form-control" id="email" type="email" placeholder="Email" required="required" data-validation-required-message="Please enter your email address.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Telefone</label>
                <input class="form-control" id="phone" type="tel" placeholder="Telefone" required="required" data-validation-required-message="Please enter your phone number.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Sua Mensagem</label>
                <textarea class="form-control" id="message" rows="5" placeholder="Sua Mensagem" required="required" data-validation-required-message="Please enter a message."></textarea>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <br>
            <div id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Enviar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Localização</h4>
          <p class="lead mb-0">Rua Professor Eusebio Bastiani,<br>
           44 - Dom Feliciano, Gravataí - RS</p>
        </div>
        <div class="col-md-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Siga-nos nas redes</h4>
          <ul class="list-inline mb-0">
            <li class="list-inline-item">
              <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                <i class="fab fa-fw fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                <i class="fab fa-fw fa-google-plus-g"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                <i class="fab fa-fw fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                <i class="fab fa-fw fa-linkedin-in"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                <i class="fab fa-fw fa-dribbble"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <h4 class="text-uppercase mb-4">Funcionamento</h4>
          <p class="lead mb-0">Segunda-feira à Sexta-feira, das 07h ás 19h.</p>
        </div>
      </div>
    </div>
  </footer>

  <div class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </div>

 

  

  <!-- Bootstrap core JavaScript -->
  
  <script src="{{ url_for('static', filename='vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ url_for('static', filename='vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

  <!-- Plugin JavaScript -->
  <script src="{{ url_for('static', filename='vendor/jquery-easing/jquery.easing.min.js') }}"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js" integrity="sha256-P93G0oq6PBPWTP1IR8Mz/0jHHUpaWL0aBJTKauisG7Q=" crossorigin="anonymous"></script>

  <!-- Contact Form JavaScript -->
  <script src="{{ url_for('static', filename='js/jqBootstrapValidation.js') }}"></script>
  <script src="{{ url_for('static', filename='js/contact_me.js') }}"></script>

  <!-- Custom scripts for this template -->
  <script src="{{ url_for('static', filename='js/freelancer.min.js') }}"></script>

</body>

</html>

