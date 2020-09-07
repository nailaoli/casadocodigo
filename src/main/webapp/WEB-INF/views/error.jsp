<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tags:pageTemplate titulo="Produto não encontrado">

	<section id="index-section" class="container middle">
		<br />
		<br />
		<br />
		<h2>
			Deu erro :( <br /> Tente novamente mais tarde
		</h2>
		Causa: ${exception.message}

		<!-- 
        <c:forEach items="${exception.stackTrace}" var="stk">
            ${stk}
        </c:forEach>    
    -->
	</section>

</tags:pageTemplate>


