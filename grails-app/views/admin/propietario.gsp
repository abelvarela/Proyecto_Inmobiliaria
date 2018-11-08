<!DOCTYPE html>
<html>  
    <head>
	    <title>Propietario</title>
    </head>  
     <body>
        <h1><g:link action="index">Inicio</g:link></h1>

        <g:form action="buscarPropietario" method="POST">
            <label for="dni">Dni: </label>
            <input type="search" name="dni" id="dni"/>
            <label for="apellido">Apellido: </label>
            <input type="search" name="apellido" id="apellido"/>
            <label for="nombre">Nombre: </label>
            <input type="search" name="nombre" id="nombre"/>
            <g:submitButton name="search" class="search" value="Buscar"/>
            <g:link action="propietario">Mostrar todos</g:link>
            <g:link action="altaPropietario">Crear propietario</g:link>
        </g:form>





        <table class="table">
            <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Editar</th>
            <th>Eliminar</th>
            <th>Ver</th>
            </tr>
            <g:each in="${listado?}">
                <tr>
                    <td>${it.nombre}</td>
                    <td>${it.apellido}</td>
                    <td><g:link action="editarPropietario" id="${it.id}">Editar</g:link></td>
                    <td><g:link action="eliminarPropietario" id="${it.id}">Eliminar</g:link></td>
                    <td><g:link action="verPropietario" id="${it.id}">Ver</g:link></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>