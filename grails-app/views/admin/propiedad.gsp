<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Propiedad</title>
    </head>  
    <body>
    
        <h1 style="text-align: center"> Propiedad </h1>
        <%-- form de busqueda  --%>
        <g:form action="buscarPropiedad" method="POST">
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <h2>Busqueda:</h2>
                <label for="tipo">Tipo: </label>
                <select name ="tipo" id="tipo">
                    <option value="%%"> Todos </option>
                    <option value="Casa"> Casa </option>
                    <option value="Departamento"> Departamento </option>
                    <option value="Local"> Local </option>
                    <option value="Oficina"> Oficina </option>
                </select>
                
                <label for="ubicacion">Ubicacion: </label>
                <select name ="ubicacion" id="ubicacion">
                    <option value="%%"> Todas </option>
                    <option value="F.M.E."> F.M.E. </option>
                    <option value="Valle Viejo"> Valle Viejo </option>
                    <option value="Capital"> Capital </option>
                    <option value="Ambato"> Ambato </option>
                </select>

                <label for="operacion">Operacion: </label>
                <select name ="operacion" id="operacion">
                    <option value="%%"> Todas </option>
                    <option value="Venta"> Venta </option>
                    <option value="Alquiler"> Alquiler </option>
                </select>

                <label for="direccion">Direccion: </label>
                <input type="search" name="direccion" id="direccion"/>

                <label for="precioMin">Precio Min:</label>
                <input type="number" name="precioMin" id="precioMin" value="0"/>
                <label for="precioMax">Precio Max:</label>
                <input type="number" name="precioMax" id="precioMax" value="9999999999"/>
                 
                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link class="list" action="propiedad">Mostrar todos</g:link>
                <g:link class="create" action="altaPropiedad">Crear propiedad</g:link>
            </fieldset>

        </g:form>

        <%-- ${println(params)} --%>


        <table class="table">
            <tr>
                <g:form action="ordenarPropiedad" method="POST">    
                    <g:hiddenField name="tipo" value="${params.tipo}"/>
                    <g:hiddenField name="ubicacion" value="${params.ubicacion}"/>
                    <g:hiddenField name="operacion" value="${params.operacion}"/>
                    <g:hiddenField name="direccion" value="${params.direccion}"/>
                    <g:hiddenField name="precioMin" value="${params.precioMin}"/>
                    <g:hiddenField name="precioMax" value="${params.precioMax}"/>
                    <g:hiddenField name="orden" value="tipo"/>
                    <th><g:submitButton name="subtipo" value="Tipo"/></th>
                </g:form>
                <g:form action="ordenarPropiedad" method="POST">    
                    <g:hiddenField name="tipo" value="${params.tipo}"/>
                    <g:hiddenField name="ubicacion" value="${params.ubicacion}"/>
                    <g:hiddenField name="operacion" value="${params.operacion}"/>
                    <g:hiddenField name="direccion" value="${params.direccion}"/>
                    <g:hiddenField name="precioMin" value="${params.precioMin}"/>
                    <g:hiddenField name="precioMax" value="${params.precioMax}"/>
                    <g:hiddenField name="orden" value="ubicacion"/>
                    <th><g:submitButton name="sububicacion" value="Ubicacion"/></th>
                </g:form>
                <g:form action="ordenarPropiedad" method="POST">    
                    <g:hiddenField name="tipo" value="${params.tipo}"/>
                    <g:hiddenField name="ubicacion" value="${params.ubicacion}"/>
                    <g:hiddenField name="operacion" value="${params.operacion}"/>
                    <g:hiddenField name="direccion" value="${params.direccion}"/>
                    <g:hiddenField name="precioMin" value="${params.precioMin}"/>
                    <g:hiddenField name="precioMax" value="${params.precioMax}"/>
                    <g:hiddenField name="orden" value="operacion"/>
                    <th><g:submitButton name="suboperacion" value="Operacion"/></th>
                </g:form>
                <g:form action="ordenarPropiedad" method="POST">    
                    <g:hiddenField name="tipo" value="${params.tipo}"/>
                    <g:hiddenField name="ubicacion" value="${params.ubicacion}"/>
                    <g:hiddenField name="operacion" value="${params.operacion}"/>
                    <g:hiddenField name="direccion" value="${params.direccion}"/>
                    <g:hiddenField name="precioMin" value="${params.precioMin}"/>
                    <g:hiddenField name="precioMax" value="${params.precioMax}"/>
                    <g:hiddenField name="orden" value="direccion"/>
                    <th><g:submitButton name="subdireccion" value="Direccion"/></th>
                </g:form>
                <g:form action="ordenarPropiedad" method="POST">    
                    <g:hiddenField name="tipo" value="${params.tipo}"/>
                    <g:hiddenField name="ubicacion" value="${params.ubicacion}"/>
                    <g:hiddenField name="operacion" value="${params.operacion}"/>
                    <g:hiddenField name="direccion" value="${params.direccion}"/>
                    <g:hiddenField name="precioMin" value="${params.precioMin}"/>
                    <g:hiddenField name="precioMax" value="${params.precioMax}"/>
                    <g:hiddenField name="orden" value="precio"/>
                    <th><g:submitButton name="subprecio" value="Precio"/></th>
                </g:form>
                
                <%-- <th><g:link action="ordenarPropiedad" params="[tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion, direccion: params.direccion, precioMin: params.precioMin, precioMax: params.precioMax, orden: ubicacion]" >Ubicacion</g:link></th>
                <th><g:link action="ordenarPropiedad" params="[tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion, direccion: params.direccion, precioMin: params.precioMin, precioMax: params.precioMax, orden: operacion]" >Operacion</g:link></th>
                <th><g:link action="ordenarPropiedad" params="[tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion, direccion: params.direccion, precioMin: params.precioMin, precioMax: params.precioMax, orden: direccion]" >Direccion</g:link></th>
                <th><g:link action="ordenarPropiedad" params="[tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion, direccion: params.direccion, precioMin: params.precioMin, precioMax: params.precioMax, orden: precio]" >Precio</g:link></th> --%>
                <th>Propietario</th>
                <g:form action="ordenarPropiedad" method="POST">    
                    <g:hiddenField name="tipo" value="${params.tipo}"/>
                    <g:hiddenField name="ubicacion" value="${params.ubicacion}"/>
                    <g:hiddenField name="operacion" value="${params.operacion}"/>
                    <g:hiddenField name="direccion" value="${params.direccion}"/>
                    <g:hiddenField name="precioMin" value="${params.precioMin}"/>
                    <g:hiddenField name="precioMax" value="${params.precioMax}"/>
                    <g:hiddenField name="orden" value="estado"/>
                    <th><g:submitButton name="subestado" value="¿Disponible?"/></th>
                </g:form>
                <%-- <th><g:link action="ordenarPropiedad" params="[tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion, direccion: params.direccion, precioMin: params.precioMin, precioMax: params.precioMax, orden: estado]" >¿Disponible</g:link></th> --%>
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
                    <td>${it.direccion}</td>
                    <td>${it.precio}</td>
                    <td><span class="buttons"><g:link action="verPropietario" id="${it.propietario.id}">${it.propietario.nombre} ${it.propietario.apellido}</g:link></span></td>
                    <td>${estado}</td>
                    <td><span class="buttons"><g:link action="verPropiedad" id="${it.id}">Ver</g:link></span></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
