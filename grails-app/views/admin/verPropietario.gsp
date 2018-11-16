<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Ver Propietario</title>
</head>
<body>
    <h1><g:link action="propietario">Ver Propietario</g:link></h1>  


    <%-- <div id="show-propietario" class="content scaffold-show" role="main"> --%>
        <%-- <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if> --%>

        
        <%-- aqui se muestra todo --%>
        <f:display bean="propietario" except="contratos, fechaNacimiento, propiedades" />
        
        <%-- mostramos fecha nacimiento yyyy-MM-dd   --%>    
        <ol class="property-list clientePropietario">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Fecha Nacimiento</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    ${propietario.fechaNacimiento.year + 1900}-${propietario.fechaNacimiento.month + 1}-${propietario.fechaNacimiento.date}  
                </div>
            </li>
        </ol>

        <%-- mostramos contratos   --%>
        <g:if test="${!propietario.contratos.isEmpty()}">
            <ol class="property-list clientePropietario">
                <li class="fieldcontain">
                    <span id="tipo-label" class="property-label">Contratos</span>
                    <g:each in="${propietario.contratos?}">
                        <div class="property-value" aria-labelledby="tipo-label" >
                            <g:link action="verContrato" id="${it.id}"> ${it} </g:link>
                        </div>
                    </g:each>    
                </li>
            </ol>
        </g:if>

        <%-- mostramos propiedades   --%>
        <g:if test="${!propietario.propiedades.isEmpty()}">
            <ol class="property-list clientePropietario">
                <li class="fieldcontain">
                    <span id="tipo-label" class="property-label">Propiedades</span>
                    <g:each in="${propietario.propiedades?}">
                        <div class="property-value" aria-labelledby="tipo-label" >
                            <g:link action="verPropiedad" id="${it.id}"> ${it} </g:link>
                        </div>
                    </g:each>    
                </li>
            </ol>
        </g:if>



    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarPropietario" id="${propietario.id}" method="POST">
            <%-- se agrega el fieldset y nombres de class --%>
            <fieldset class="buttons">
                <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
                <g:link class="edit" action="editarPropietario" id="${propietario.id}">Editar</g:link>
                <g:link class="list" action="propietario">Volver</g:link>
            </fieldset>
    </g:form>

</body>  
</html>

