<!DOCTYPE html>
<html>  
  <head>
	<title>Gestion de Stock</title>
  </head>  
  <body>
	<h1><g:link action="cliente">Cliente</g:link></h1>

    <%-- <g:form action="buscarCliente" method="POST">
        <label for="dni">Dni: </label>
        <input type="search" name="dni" id="dni"/>
        <label for="apellido">Apellido: </label>
        <input type="search" name="apellido" id="apellido"/>
        <label for="nombre">Nombre: </label>
        <input type="search" name="nombre" id="nombre"/>
        <g:submitButton name="search" class="search" value="Buscar"/>
        <g:link action="index">Mostrar todos</g:link>
    </g:form>





  <table class="table">
    <tr>
      <th>Nombre</th>
      <th>Apellido</th>
      <th>Editar</th>
      <th>Eliminar</th>
    </tr>
      <g:each in="${listado?}">
          <tr>
            <td>${it.nombre}</td>
            <td>${it.apellido}</td>
            <td><g:link action="editarCliente" id="${it.id}">Editar</g:link></td>
            <td><g:link action="eliminarCliente" id="${it.id}">Eliminar</g:link></td>
          </tr>
      </g:each>
  </table> --%>
  </body>  
</html>
