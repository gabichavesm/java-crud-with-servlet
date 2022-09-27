<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>CRUD Java - Atualizar Cliente</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="cold-md-7">
		<hr>
		<h3>Atualizar Cliente</h3>
		<hr>
		<form action="ClienteUpdate" method="post">
			<input value="${cliente.id}" name="id" type="number" style="visibility:hidden">
			<div class="form-floating mb-3">
						<input value="${cliente.nome}" name="nome" maxlength="60" type="text" class="form-control" id="floatingInput1"> 
						<label>Nome completo</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.email}" name="email" maxlength="50" type="text" class="form-control"> 
						<label>E-mail</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.CPF}" name="CPF" maxlength="11" type="text" class="form-control"> 
						<label>CPF (apenas números)</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.dataNascimento}" name="dataNascimento" type="date" class="form-control" placeholder="Nascimento">
						<label>Data de nascimento</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${cliente.telefone}" name="telefone" maxlength="15" type="number" class="form-control"> 
						<label>Telefone (incluindo DDD)</label>
					</div>
					<select name="situacao" class="form-select mb-3" aria-label="Default select example">
						<option value="Inativo" selected>Selecione a situação</option>
						<option value="Ativo">Ativo</option>
						<option value="Inativo">Inativo</option>
					</select>

					<button class="btn btn-sucess" type="submit">Atualizar
						Dados</button>
					<button class="btn btn-secondary" type="reset">Limpar
						Formulário</button>
		</form>
		<br>
		<h5><a href="index.html">Voltar para o Cadastro de Clientes</a></h5>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>