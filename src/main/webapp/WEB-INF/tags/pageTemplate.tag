<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="titulo" required="true" %>
<%@ attribute name="bodyClass" required="false" %>
<%@ attribute name="extraScripts" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
<c:set var="context" value="${pageContext.request.contextPath}" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979" type="image/ico" />
<link href="https://plus.googlecom/108540024862647200608" rel="publisher" />

<title>${titulo} - Casa do Código</title>

<link href="${context}/resources/css/cssbase-min.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' />
<link href="${context}/resources/css/fonts.css" rel="stylesheet"	type="text/css" media="all" />
<link href="${context}/resources/css/fontello-ie7.css" rel="stylesheet"	type="text/css" media="all" />
<link href="${context}/resources/css/fontello-embedded.css"	rel="stylesheet" type="text/css" media="all" />
<link href="${context}/resources/css/fontello.css" rel="stylesheet"	type="text/css" media="all" />
<link href="${context}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${context}/resources/css/layout-colors.css" rel="stylesheet" type="text/css" media="all" />
<link href="${context}/resources/css/responsive-style.css"	rel="stylesheet" type="text/css" media="all" />
<link href="${context}/resources/css/guia-do-programador-style.css"	rel="stylesheet" type="text/css" media="all" />
<link href="${context}/resources/css/produtos.css" rel="stylesheet"	type="text/css" media="all" />
<link rel="canonical" href="http://www.casadocodigo.com.br/" />
<link href="${context}/resources/css/book-collection.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>

	<header id="layout-header">
		<div class="clearfix container">
			<a href="${context}" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">

					<ul class="clearfix">
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="${s:mvcUrl('PC#form').build()}" rel="nofollow">Cadastro
									de Produtos</a></li>
							<li><a href="${s:mvcUrl('PC#lista').build()}" rel="nofollow">Lista
									de Produtos</a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<li><a href="${context}/logout" rel="nofollow">Logout</a></li>
						</security:authorize>
						<security:authorize access="!isAuthenticated()">
							<li><a href="${context}/login" rel="nofollow">Login</a></li>
						</security:authorize>
						<li><a href="${context}/carrinho" rel="nofollow">
							<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}" />
						</a></li>
						<li><a href="?locale=pt" rel="nofollow">
							<img src="${context}/resources/imagens/flag_brasil.png" alt="Português">
						</a></li>
						<li><a href="?locale=en" rel="nofollow">
							<img src="${context}/resources/imagens/flag_usa.png" alt="English">
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="http://www.casadocodigo.com.br">
				<s:message code="navegacao.categoria.home"/>
			</a></li>
			<li class="category"><a href="/collections/livros-de-agile">
				<s:message code="navegacao.categoria.agile"/> 
			</a></li>
			<li class="category"><a href="/collections/livros-de-front-end">
				<s:message code="navegacao.categoria.front_end"/>
			</a></li>
			<li class="category"><a href="/collections/livros-de-games">
				<s:message code="navegacao.categoria.games"/>
			</a></li>
			<li class="category"><a href="/collections/livros-de-java">
				<s:message code="navegacao.categoria.java"/>		
			</a></li>
			<li class="category"><a href="/collections/livros-de-mobile">
				<s:message code="navegacao.categoria.mobile"/>		
			</a></li>
			<li class="category"><a href="/collections/livros-desenvolvimento-web"> 
				<s:message code="navegacao.categoria.web"/>
			</a></li>
			<li class="category"><a href="/collections/outros">
				<s:message code="navegacao.categoria.outros"/>
			</a></li>
		</ul>
	</nav>





	<jsp:doBody />
    <jsp:invoke fragment="extraScripts"></jsp:invoke>






	<footer id="layout-footer">
		<div class="clearfix container">
			<div id="collections-footer">
				<!-- cdc-footer -->
				<p class="footer-title">Coleções de Programação</p>
				<ul class="footer-text-links">
					<li><a href="/collections/livros-de-java">Java</a></li>
					<li><a href="/collections/livros-desenvolvimento-web">Desenvolvimento
							Web</a></li>
					<li><a href="/collections/livros-de-mobile">Mobile</a></li>
					<li><a href="/collections/games">Games</a></li>
					<li><a href="/collections/livros-de-front-end">Front End</a></li>
				</ul>
				<p class="footer-title">Outros Assuntos</p>
				<ul class="footer-text-links">
					<li><a href="/collections/livros-de-agile">Agile</a></li>
					<li><a href="/collections/outros">e outros...</a></li>
				</ul>
			</div>
			<div id="social-footer">
				<!-- books-footer -->
				<p class="footer-title">Links da Casa do Código</p>
				<ul class="footer-text-links">
					<li><a href="http://livros.casadocodigo.com.br" rel="nofollow">Meus
							E-books</a></li>
					<li><a href="/pages/sobre-a-casa-do-codigo">Sobre a Casa
							do Código</a></li>
					<li><a href="/pages/perguntas-frequentes">Perguntas
							Frequentes</a></li>
					<li><a href="https://www.caelum.com.br">Caelum - Ensino e
							Inovação</a></li>
					<li><a href="http://www.codecrushing.com/" rel="nofollow">Code
							Crushing</a></li>
					<li><a
						href="http://www.casadocodigo.com.br/pages/politica-de-privacidade"
						rel="nofollow">Política de Privacidade</a></li>
				</ul>
				<p class="footer-title">Redes Sociais</p>
				<ul>
					<li class="social-links"><a
						href="http://www.twitter.com/casadocodigo" target="_blank"
						id="twitter" rel="nofollow">Facebook</a> <a
						href="http://www.facebook.com/casadocodigo" target="_blank"
						id="facebook" rel="nofollow">Twitter</a></li>
				</ul>
			</div>
			<div id="newsletter-footer">
				<!-- social-footer -->
				<p class="footer-title">Receba as Novidades e Lançamentos</p>
				<div id="form-newsletter">
					<form action="" method="POST" id="ss-form" class="form-newsletter">
						<ul>
							<li><input type="hidden" name="pageNumber" value="0" /><input
								type="hidden" name="backupCache" value="" /><input type="email"
								name="entry.0.single" value="" class="ss-q-short" id="entry_0"
								placeholder="seu@email.com" /></li>
							<li><input type="submit" name="submit"
								value="Quero Receber!" id="submit-newsletter" /></li>
						</ul>
					</form>
					<ul>
						<li class="ie8"><a href="" rel="nofollow">Receba as
								Novidades e Lançamentos</a></li>
					</ul>
				</div>
				<ul class="footer-payments">
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
	</footer>

</body>
</html>