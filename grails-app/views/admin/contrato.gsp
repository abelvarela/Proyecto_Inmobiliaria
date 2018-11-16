<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Contrato</title>
    </head>  
     <body>
        <h1 style="text-align: center"> Contrato </h1>
        <%-- form de busqueda  --%>
        <g:form action="buscarContrato" method="POST">
            <h2>Busqueda:</h2>
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <table class="table">
                    <tr>
                        <td>
                            <label for="cliente">Cliente: </label>
                            <select name ="cliente" id="cliente">
                                <option value="%%"> Todos </option>                    
                                <g:each in="${clientes?}">
                                    <option value="${it.id}"> ${it.apellido} </option>
                                </g:each>
                            </select>
                        </td>
                        
                        <td>
                            <label for="propietario">Propietario: </label>
                            <select name ="propietario" id="propietario">
                                <option value="%%"> Todos </option>                    
                                <g:each in="${propietarios}">
                                    <option value="${it.id}"> ${it.apellido} </option>
                                </g:each>
                            </select>
                        </td>
                        
                        <%-- <td>
                            <label for="propiedad">Propiedad: </label>
                            <select name ="propiedad" id="propiedad">
                                <option value="%%"> Todas </option>                    
                                <g:each in="${propiedades}">
                                    <option value="${it.id}"> ${it.direccion} </option>
                                </g:each>
                            </select>
                        </td> --%>
                        
                        <td>
                            <label for="tipo">Tipo:</label>
                            <select name ="tipo" id="tipo">
                                <option value="%%">Todos</option>
                                <option value="Casa">Casa</option>
                                <option value="Departamento">Departamento </option>
                                <option value="Local">Local</option>
                                <option value="Oficina">Oficina</option>
                            </select>
                        </td>
                        
                        <td>
                            <label for="ubicacion">Ubicacion:</label>
                            <select name ="ubicacion" id="ubicacion">
                                <option value="%%">Todas</option>
                                <option value="F.M.E.">F.M.E.</option>
                                <option value="Valle Viejo">Valle Viejo</option>
                                <option value="Capital">Capital</option>
                                <option value="Ambato">Ambato</option>
                            </select>
                        </td>
                        
                        <td>
                            <g:submitButton name="search" class="search" value="Buscar"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <g:link class="list" action="contrato">Mostrar todos</g:link>
                            <g:link class="create" action="altaContrato">Crear contrato</g:link>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </g:form>




        <h2>Lista:</h2>
        <table class="table">
            <tr>
                <th>Cliente</th>
                <th>Propietario</th>
                <th>Tipo</th>
                <th>Ubicacion</th>
                <th>Ver</th>
            </tr>

            <%-- en listado tenemos array de contratos --%>
            <g:each in="${listado?}">            
                <tr>
                    <td><span class="buttons"><g:link action="verCliente" id="${it.cliente.id}">${it.cliente.nombre} ${it.cliente.apellido}</g:link></span></td>
                    <td><span class="buttons"><g:link action="verPropietario" id="${it.propietario.id}">${it.propietario.nombre} ${it.propietario.apellido}</g:link></span></td>
                    <td>${it.propiedad.tipo}</td>
                    <td>${it.propiedad.ubicacion}</td>
                    <td><span class="buttons"><g:link action="verContrato" id="${it.id}">Ver</g:link></span></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
