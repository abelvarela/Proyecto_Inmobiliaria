<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Propiedad</title>
    </head>  
     <body>
        
        <%-- form de busqueda  --%>
        <g:form action="buscarPropiedad" method="POST">
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
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
                 <%-- agregar buscar por operacion --%>
                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link class="list" action="propiedad">Mostrar todos</g:link>
                <g:link class="create" action="altaPropiedad">Crear propiedad</g:link>
            </fieldset>
        </g:form>





        <table class="table">
            <tr>
                <th>Tipo</th>
                <th>Ubicacion</th>
                <th>Operacion</th>
                <th>Precio</th>
                <th>Propietario</th>
                <th>¿Disponible?</th>
                <th>Ver</th>
            </tr>

            <%-- en listado tenemos array de propiedades --%>
            <g:each in="${listado?}">
                <g:if test="${it.estado}">
                    <g:set var="estado" value="Si" />
                </g:if>
                <g:else>
                    <g:set var="estado" value="No" />
                </g:else>    
            
                <tr>
                    <td>${it.tipo}</td>
                    <td>${it.ubicacion}</td>
                    <td>${it.operacion}</td>
                    <td>${it.precio}</td>
                    <td><g:link action="verPropietario" id="${it.propietario.id}">${it.propietario.nombre} ${it.propietario.apellido}</g:link></td>
                    <td>${estado}</td>
                    <td><g:link action="verPropiedad" id="${it.id}">Ver</g:link></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
