<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Club de socios Web</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@300&display=swap" rel="stylesheet">
<style>
h1, label{ font-family: 'Source Code Pro', monospace;
}
</style>
</head>

<body>
<div class="container">
<div class="card">
<div class="card-header">
	<h1>Club de socios web</h1>
</div>
<div class="card-body">
	<form action="ControllerWeb" method="get" enctype="multipart/form-data" 
	class="row g-3 needs-validation" novalidate>
	<div class="col-md-4">
	<label for="validationCustom01" class="form-label">
	Nombre del socio:
	</label>
	<input type="text" class="form-control" id="validationCustom01" required
	name="nombreSocio">
	<div class="invalid-feedback">
	El nombre es obligatorio
	</div>
	</div>
	
	<div class="col-md-4">
	<label for="validationCustom02" class="form-label">
	Dirección:
	</label>
	<input type="text" class="form-control" id="validationCustom02" required
	name="direccionSocio">
	<div class="invalid-feedback">
	La dirección es obligatoria
	</div>
	</div>
	
	<div class="col-md-4">
	<label for="validationCustom03" class="form-label">
	Fecha de alta:
	</label>
	<input type="date" class="form-control" id="validationCustom03" required
	name="altaSocio">
	<div class="invalid-feedback">
	Escriba la fecha de alta
	</div>
	</div>
	
	<div class="col-md-4">
	<label for="archivo" class="form-label">
	Fichero XML
	</label>
	<input type="file" accept=".xml" class="form-control" id="archivo" required
	name="archivo">
	<div class="col-12 mt-4">
	<input type="submit" class="btn btn-outline-secondary" value="Enviar formulario">
	</div>
	</div>
	</form>
</div>


</div>
<c:out value="${mensaje}"/>
<table class="table table-striped table-hover">
	<tr>
	<th> ID</th>
	<th> Nombre</th>
	<th> Dirección</th>
	<th> Fecha de alta</th>
	<th> Foto</th>
	<th> Acciones</th>
	</tr>

	<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td> 
	<a href="CrontollerWeb?" title="borrar" class="btn" id="eliminar"> &#128465; </a>
	<a href="CrontollerWeb?" title="modificar" class="btn" id="modificar"> &#128394; </a>
	</td>
	
	</tr>

</table>




</div>
<script>
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()

</script>


</body>
</html>