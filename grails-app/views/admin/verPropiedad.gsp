<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Ver Propiedad</title>
</head>
<body>

    <h1><g:link action="propiedad">Ver Propiedad</g:link></h1>  


    <%-- <div id="show-propiedad" class="content scaffold-show" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    </div> --%>
        
        <%-- aqui se muestra todo --%>
        <f:display bean="propiedad" except="propietario" />
            <%-- se agrego esto para que tenga mismo estilo --%>
        <ol class="property-list propiedad">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Propietario</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    <g:link action="verPropietario" id="${propiedad.propietario.id}">${propiedad.propietario.nombre} ${propiedad.propietario.apellido}</g:link>
                </div>
            </li>
        </ol>



    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarPropiedad" id="${propiedad.id}" method="POST">
            <%-- se agrega el fieldset y nombres de class --%>
            <fieldset class="buttons">
                <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
                <g:link class="edit" action="editarPropiedad" id="${propiedad.id}">Editar</g:link>
                <g:link class="list" action="propiedad">Volver</g:link>
            </fieldset>
    </g:form>

</body>  
</html>