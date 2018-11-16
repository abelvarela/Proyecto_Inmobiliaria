<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Cliente</title>
    </head>  
     <body>
        <h1 style="text-align: center"> Cliente </h1>
        <%-- formulario de busqueda --%>
        <g:form action="buscarCliente" method="POST">

            <h2>Busqueda:</h2>
            <%-- se agrega fieldset para estilo --%>
            <fieldset class="buttons">
                <table class="table">
                    <tr>
                        <td>
                            <label for="nombre">Nombre: </label>
                            <input type="search" name="nombre" id="nombre"/>
                        </td>
                        
                        <td>
                            <label for="apellido">Apellido: </label>
                            <input type="search" name="apellido" id="apellido"/>
                        </td>
                        
                        <td>
                            <label for="dni">Dni: </label>
                            <input type="search" name="dni" id="dni"/>
                        </td>
                        
                        <td>
                            <label for="telefono">Telefono: </label>
                            <input type="search" name="telefono" id="telefono"/>
                        </td>
                        
                        <td>
                            <label for="email">Email: </label>
                            <input type="search" name="email" id="email"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label for="domicilio">Domicilio: </label>
                            <input type="search" name="domicilio" id="domicilio"/>
                        </td>
                        
                        <td>
                            <label for="sexo">Sexo: </label>
                            <select name ="sexo" id="sexo">
                                <option value="%%"> Todos </option>
                                <option value="M"> Masculino </option>
                                <option value="F"> Femenino </option>
                            </select>
                        </td>
                        
                        <td>
                            <label for="fechaD">Fecha Nac. Desde: </label>
                            <input type="date" name="fechaD" id="fechaD"/>
                        </td>
                        
                        <td>
                            <label for="fechaH">Fecha Nac. Hasta: </label>
                            <input type="date" name="fechaH" id="fechaH"/>
                        </td>
                        
                        
                        <td>
                            <g:submitButton name="search" class="search" value="Buscar"/>
                            <g:link action="cliente">Mostrar todos</g:link>
                            <g:link action="altaCliente">Crear cliente</g:link>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </g:form>




        <h2>Lista:</h2>
        <table class="table">
            <tr>
                <g:form action="ordenarCliente" method="POST">    
                    <g:hiddenField name="nombre" value="${params.nombre}"/>
                    <g:hiddenField name="apellido" value="${params.apellido}"/>
                    <g:hiddenField name="dni" value="${params.dni}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="domicilio" value="${params.domicilio}"/>
                    <g:hiddenField name="sexo" value="${params.sexo}"/>
                    <input type="date" name="fechaD" value="${params.fechaD}" hidden/>
                    <input type="date" name="fechaH" value="${params.fechaH}" hidden/>
                    <g:hiddenField name="orden" value="nombre"/>
                    <th><g:submitButton name="subnombre" value="Nombre"/></th>
                </g:form>
                <g:form action="ordenarCliente" method="POST">    
                    <g:hiddenField name="nombre" value="${params.nombre}"/>
                    <g:hiddenField name="apellido" value="${params.apellido}"/>
                    <g:hiddenField name="dni" value="${params.dni}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="domicilio" value="${params.domicilio}"/>
                    <g:hiddenField name="sexo" value="${params.sexo}"/>
                    <input type="date" name="fechaD" value="${params.fechaD}" hidden/>
                    <input type="date" name="fechaH" value="${params.fechaH}" hidden/>
                    <g:hiddenField name="orden" value="apellido"/>
                    <th><g:submitButton name="subapellido" value="Apellido"/></th>
                </g:form>
                <g:form action="ordenarCliente" method="POST">    
                    <g:hiddenField name="nombre" value="${params.nombre}"/>
                    <g:hiddenField name="apellido" value="${params.apellido}"/>
                    <g:hiddenField name="dni" value="${params.dni}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="domicilio" value="${params.domicilio}"/>
                    <g:hiddenField name="sexo" value="${params.sexo}"/>
                    <input type="date" name="fechaD" value="${params.fechaD}" hidden/>
                    <input type="date" name="fechaH" value="${params.fechaH}" hidden/>
                    <g:hiddenField name="orden" value="dni"/>
                    <th><g:submitButton name="subdni" value="Dni"/></th>
                </g:form>
                <g:form action="ordenarCliente" method="POST">    
                    <g:hiddenField name="nombre" value="${params.nombre}"/>
                    <g:hiddenField name="apellido" value="${params.apellido}"/>
                    <g:hiddenField name="dni" value="${params.dni}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="domicilio" value="${params.domicilio}"/>
                    <g:hiddenField name="sexo" value="${params.sexo}"/>
                    <input type="date" name="fechaD" value="${params.fechaD}" hidden/>
                    <input type="date" name="fechaH" value="${params.fechaH}" hidden/>
                    <g:hiddenField name="orden" value="telefono"/>
                    <th><g:submitButton name="subtelefono" value="Telefono"/></th>
                </g:form>
                <g:form action="ordenarCliente" method="POST">    
                    <g:hiddenField name="nombre" value="${params.nombre}"/>
                    <g:hiddenField name="apellido" value="${params.apellido}"/>
                    <g:hiddenField name="dni" value="${params.dni}"/>
                    <g:hiddenField name="telefono" value="${params.telefono}"/>
                    <g:hiddenField name="email" value="${params.email}"/>
                    <g:hiddenField name="domicilio" value="${params.domicilio}"/>
                    <g:hiddenField name="sexo" value="${params.sexo}"/>
                    <input type="date" name="fechaD" value="${params.fechaD}" hidden/>
                    <input type="date" name="fechaH" value="${params.fechaH}" hidden/>
                    <g:hiddenField name="orden" value="email"/>
                    <th><g:submitButton name="subemail" value="Email"/></th>
                </g:form>
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
                    <td><span class="buttons"><g:link action="verCliente" id="${it.id}">Ver</g:link></span></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>


