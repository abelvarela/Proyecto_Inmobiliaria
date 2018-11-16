<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Usuario</title>
    </head>  
     <body>
        <h1 style="text-align: center"> Usuario </h1>
        <%-- formulario de busqueda --%>
        <g:form action="buscarUsuario" method="POST">
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <h2>Busqueda:</h2>
                <label for="nombreUsuario">Usuario: </label>
                <input type="search" name="nombreUsuario" id="nombreUsuario"/>
                <label for="nombre">Nombre: </label>
                <input type="search" name="nombre" id="nombre"/>
                <label for="apellido">Apellido: </label>
                <input type="search" name="apellido" id="apellido"/>
                <label for="email">Email: </label>
                <input type="search" name="email" id="email"/>
                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link action="usuario">Mostrar todos</g:link>
                <g:link action="altaUsuario">Crear usuario</g:link>
            </fieldset>
        </g:form>


        <table class="table">
            <tr>
                <th>Usuario</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Ver</th>
            </tr>
            <g:each in="${listado?}">
                <tr>
                    <td>${it.nombreUsuario}</td>
                    <td>${it.nombre}</td>
                    <td>${it.apellido}</td>
                    <td>${it.email}</td>
                    <td><span class="buttons"><g:link action="verUsuario" id="${it.id}">Ver</g:link></span></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
