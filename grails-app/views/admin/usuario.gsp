<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Usuario</title>
    </head>  
     <body>
        <h1><g:link action="index">Inicio</g:link></h1>

        <g:form action="buscarUsuario" method="POST">
            <label for="email">Email: </label>
            <input type="search" name="email" id="email"/>
            <label for="nombreUsuario">Usuario: </label>
            <input type="search" name="nombreUsuario" id="nombreUsuario"/>
            <label for="apellido">Apellido: </label>
            <input type="search" name="apellido" id="apellido"/>
            <label for="nombre">Nombre: </label>
            <input type="search" name="nombre" id="nombre"/>
            <g:submitButton name="search" class="search" value="Buscar"/>
            <g:link action="usuario">Mostrar todos</g:link>
            <g:link action="altaUsuario">Crear usuario</g:link>
        </g:form>


        <table class="table">
            <tr>
                <th>Usuario</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Editar</th>
                <th>Eliminar</th>
                <th>Ver</th>
            </tr>
            <g:each in="${listado?}">
                <tr>
                    <td>${it.nombreUsuario}</td>
                    <td>${it.nombre}</td>
                    <td>${it.apellido}</td>
                    <td><g:link action="editarUsuario" id="${it.id}">Editar</g:link></td>
                    <td><g:link action="eliminarUsuario" id="${it.id}">Eliminar</g:link></td>
                    <td><g:link action="verUsuario" id="${it.id}">Ver</g:link></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
