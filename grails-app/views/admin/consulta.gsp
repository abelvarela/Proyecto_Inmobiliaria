<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Consulta</title>
    </head>  
     <body>

        <h1 style="text-align: center"> Consulta </h1>
        
        <%-- form de busqueda  --%>
        <g:form action="buscarConsulta" method="POST">
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <h2>Busqueda:</h2>
                <label for="nombreApellido">Nombre y Apellido: </label>
                <input type="text" name="nombreApellido" id="nombreApellido">

                <label for="telefono">Telefono: </label>
                <input type="text" name="telefono" id="telefono">

                <label for="email">Email: </label>
                <input type="text" name="email" id="email">

                <label for="propiedad">Propiedad: </label>
                <select name ="propiedad" id="propiedad">
                    <option value="%%"> Todas </option>                    
                    <g:each in="${propiedades}">
                        <option value="${it.id}"> ${it.direccion} </option>
                    </g:each>
                </select>


                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link class="list" action="consulta">Mostrar todas</g:link>
            </fieldset>
        </g:form>

        <table class="table">
            <tr>
                <th>Nombre y Apellido</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Fecha</th>
                <th>Estado</th>
                <th>Propiedad</th>
                <th>Acción</th>
            </tr>

            <%-- en listado tenemos array de contratos --%>
            <g:each in="${listado?}">            
                <tr>
                    <td>${it.nombreApellido}</td>
                    <td>${it.telefono}</td>
                    <td>${it.email}</td>
                    <td>${it.fecha}</td>
                    <td>${it.estado}</td>
                    <td><span class="buttons"><g:link action="verPropiedad" id="${it.propiedad.id}">${it.propiedad}</g:link></span></td>
                    <td><span class="buttons"><g:link action="verConsulta" id="${it.id}">Atender</g:link></span></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
