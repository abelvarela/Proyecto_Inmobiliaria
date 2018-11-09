<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Ver Contrato</title>
</head>
<body>

    <h1><g:link action="contrato">Ver Contrato</g:link></h1>  


    <%-- <div id="show-contrato" class="content scaffold-show" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    </div> --%>
        
        <%-- aqui se muestra todo --%>
        <f:display bean="contrato" except="cliente, propietario, propiedad" />
            <%-- se agrego esto para que tenga mismo estilo --%>
        <ol class="property-list contrato">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Cliente</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    <g:link action="verCliente" id="${contrato.cliente.id}">${contrato.cliente.nombre} ${contrato.cliente.apellido}</g:link>
                </div>
            </li>
        </ol>

        <ol class="property-list contrato">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Propietario</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    <g:link action="verPropietario" id="${contrato.propietario.id}">${contrato.propietario.nombre} ${contrato.propietario.apellido}</g:link>
                </div>
            </li>
        </ol>

        <ol class="property-list contrato">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Propiedad</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    <g:link action="verPropiedad" id="${contrato.propiedad.id}">Ver Propiedad</g:link>
                </div>
            </li>
        </ol>



    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarContrato" id="${contrato.id}" method="POST">
            <%-- se agrega el fieldset y nombres de class --%>
            <fieldset class="buttons">
                <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
                <g:link class="edit" action="editarContrato" id="${contrato.id}">Editar</g:link>
                <g:link class="list" action="contrato">Volver</g:link>
            </fieldset>
    </g:form>

</body>  
</html>