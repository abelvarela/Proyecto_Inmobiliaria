<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Cliente</title>
    </head>  
     <body>
        
        <%-- formulario de busqueda --%>
        <g:form action="buscarCliente" method="POST">
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <label for="dni">Dni: </label>
                <input type="search" name="dni" id="dni"/>
                <label for="apellido">Apellido: </label>
                <input type="search" name="apellido" id="apellido"/>
                <label for="nombre">Nombre: </label>
                <input type="search" name="nombre" id="nombre"/>
                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link action="cliente">Mostrar todos</g:link>
                <g:link action="altaCliente">Crear cliente</g:link>
            </fieldset>
        </g:form>





        <table class="table">
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Dni</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Ver</th>
            </tr>
            
            <%-- en listado tenemos array de clientes --%>
            <g:each in="${listado?}">
                <tr>
                    <td>${it.nombre}</td>
                    <td>${it.apellido}</td>
                    <td>${it.dni}</td>
                    <td>${it.telefono}</td>
                    <td>${it.email}</td>
                    <td><g:link action="verCliente" id="${it.id}">Ver</g:link></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
