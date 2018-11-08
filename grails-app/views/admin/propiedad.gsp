<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Propiedad</title>
    </head>  
     <body>
        <h1><g:link action="index">Inicio</g:link></h1>

        <g:form action="buscarPropiedad" method="POST">
            <label for="tipo">Tipo: </label>
            <select name ="tipo" id="tipo">
                <option value=""> Todos </option>
                <option value="Casa"> Casa </option>
                <option value="Departamento"> Departamento </option>
                <option value="Local"> Local </option>
                <option value="Oficina"> Oficina </option>
            </select>

            <label for="ubicacion">Ubicacion: </label>
            <select name ="ubicacion" id="ubicacion">
                <option value=""> Todas </option>
                <option value="F.M.E."> F.M.E. </option>
                <option value="Valle Viejo"> Valle Viejo </option>
                <option value="Capital"> Capital </option>
                <option value="Ambato"> Ambato </option>
            </select>

            <g:submitButton name="search" class="search" value="Buscar"/>
            <g:link action="propiedad">Mostrar todos</g:link>
            <g:link action="altaPropiedad">Crear propiedad</g:link>
        </g:form>





        <table class="table">
            <tr>
            <th>Tipo</th>
            <th>Ubicacion</th>
            <th>Precio</th>
            <th>Propietario</th>
            <th>Editar</th>
            <th>Eliminar</th>
            <th>Ver</th>
            </tr>
            <g:each in="${listado?}">
                <tr>
                    <td>${it.tipo}</td>
                    <td>${it.ubicacion}</td>
                    <td>${it.precio}</td>
                    <td><g:link action="verPropietario" id="${it.propietario.id}">${it.propietario.nombre} ${it.propietario.apellido}</g:link></td>
                    <td><g:link action="editarPropiedad" id="${it.id}">Editar</g:link></td>
                    <td><g:link action="eliminarPropiedad" id="${it.id}">Eliminar</g:link></td>
                    <td><g:link action="verPropiedad" id="${it.id}">Ver</g:link></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
