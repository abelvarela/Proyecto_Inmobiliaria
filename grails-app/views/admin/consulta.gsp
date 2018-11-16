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
            <h2>Busqueda:</h2>
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <table class="table">
                    <tr>
                        <td>
                            <label for="nombreApellido">Nombre y Apellido: </label>
                            <input type="text" name="nombreApellido" id="nombreApellido">
                        </td>
                        
                        <td>
                            <label for="telefono">Telefono: </label>
                            <input type="text" name="telefono" id="telefono">
                        </td>
                        
                        <td>
                            <label for="email">Email: </label>
                            <input type="text" name="email" id="email">
                        </td>
                        
                        <td>
                            <label for="propiedad">Propiedad: </label>
                            <select name ="propiedad" id="propiedad">
                                <option value="%%"> Todas </option>                    
                                <g:each in="${propiedades}">
                                    <option value="${it.id}"> ${it.direccion} </option>
                                </g:each>
                            </select>
                        </td>
                        
                        <td>
                            <g:submitButton name="search" class="search" value="Buscar"/>
                            <g:link class="list" action="consulta">Mostrar todas</g:link>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </g:form>

        <h2>Lista:</h2>
        <table class="table">
            <tr>
                <g:form action="ordenarConsulta" method="POST">    
                    <g:hiddenField name="nombreApellido" value="${params.nombreApellido}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="propiedad" value="${params.propiedad}"/>
                    <g:hiddenField name="orden" value="nombreApellido"/>
                    <th><g:submitButton name="subnya" value="Nombre y Apellido"/></th>
                </g:form>
                <g:form action="ordenarConsulta" method="POST">    
                    <g:hiddenField name="nombreApellido" value="${params.nombreApellido}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="propiedad" value="${params.propiedad}"/>
                    <g:hiddenField name="orden" value="telefono"/>
                    <th><g:submitButton name="subtel" value="Telefono"/></th>
                </g:form>
                <g:form action="ordenarConsulta" method="POST">    
                    <g:hiddenField name="nombreApellido" value="${params.nombreApellido}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="propiedad" value="${params.propiedad}"/>
                    <g:hiddenField name="orden" value="email"/>
                    <th><g:submitButton name="subemail" value="Email"/></th>
                </g:form>
                <g:form action="ordenarConsulta" method="POST">    
                    <g:hiddenField name="nombreApellido" value="${params.nombreApellido}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="propiedad" value="${params.propiedad}"/>
                    <g:hiddenField name="orden" value="fecha"/>
                    <th><g:submitButton name="subfecha" value="Fecha"/></th>
                </g:form>
                <g:form action="ordenarConsulta" method="POST">    
                    <g:hiddenField name="nombreApellido" value="${params.nombreApellido}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="propiedad" value="${params.propiedad}"/>
                    <g:hiddenField name="orden" value="estado"/>
                    <th><g:submitButton name="subestado" value="Estado"/></th>
                </g:form>
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
