
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.CartBean, model.ProductBean, model.UserBean, java.util.*"%>
<%
	if (session.getAttribute("carrello") == null) {
		CartBean carrello = new CartBean();
		session.setAttribute("carrello", carrello);
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">

	<!-- Stili -->
	<link rel="stylesheet" href="./css/style.css">
	<!-- Icona --> 
	<link rel="icon" href="./img/icon.png">
	
	<title>Geek Factory - Home</title>
</head>
<body>


<jsp:include page="header.jsp"/>
	
 <section>
 
 
 <div class="content">
		
		<h1><sub><span>&lt;h1&gt;</span></sub>ESPLORA IL NOSTRO MAGAZZINO<sup><span>&lt;/h1&gt;</span></sup></h1>
		
		<p><sup><span>&lt;p&gt;</span></sup>Vendi o compra modelli 3D e stampe 3D!<sub><span>&lt;/p&gt;</span></sub></p>
			
		</div>
 
 
 
   <div class="container">
      <div class="categories">
			<div class="wrapper">
				
				<h4 class="category-subtitle">&lt;categorie/&gt;</h4>


				<div class="categories-container">
					
					<div class="category">
					<a href="Tipologia?tipologia=Action-Figures">

						<img src="./img/cat1x.jpg" alt="">
						<div class="category-body">
							<h5>Action Figures</h5>
						</div>
					</a>
					</div>

					<a href="Tipologia?tipologia=Arredamento-Casa">
					<div class="category">

						<img src="./img/cat2x.jpg" alt="">
						<div class="category-body">
							<h5>Arredamento Casa</h5>
						</div>
					</div>
					</a>
					
					<a href="Tipologia?tipologia=Gadget">
					<div class="category">

						<img src="./img/cat3x.jpg" alt="">
						<div class="category-body">
							<h5>Gadget</h5>
						</div>
					</div>
					</a>
				</div>
				
				<div class="mysteryObj">
  					<button id="mistObj" type="button">Oggetto Casuale</button>
				</div>				
				
			</div>
		</div>
	</div>

</section>	

	<jsp:include page="footer.jsp"/>
	
	<script src="script/jquery.js"></script>
	<script>
		$(document).ready(function() {
			$("#mistObj").click(function(event) {
				$.get('OggettoMisterioso', function(resp) {
					alert(resp);
				});
			});
		});
	</script>
	
</body>
</html>