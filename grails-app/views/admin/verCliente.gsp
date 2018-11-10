<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Ver Cliente</title>
</head>
<body>
    <h1><g:link action="cliente">Ver Cliente</g:link></h1>  


    <%-- <div id="show-cliente" class="content scaffold-show" role="main">
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if> 
    </div> --%>

        
        <%-- aqui se muestra todo--%>
    <f:display bean="cliente" except="contratos , fechaNacimiento"/>
        
        
    <%-- mostramos fecha nacimiento yyyy-MM-dd   --%>    
    <ol class="property-list cliente">
        <li class="fieldcontain">
            <span id="tipo-label" class="property-label">Fecha Nacimiento</span>
            <div class="property-value" aria-labelledby="tipo-label" >
                ${cliente.fechaNacimiento.year + 1900}-${cliente.fechaNacimiento.month}-${cliente.fechaNacimiento.date}  
            </div>
        </li>
    </ol>

    <%-- mostramos contratos   --%>
    <g:if test="${!cliente.contratos.isEmpty()}">
        <ol class="property-list cliente">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Contratos</span>
                <g:each in="${cliente.contratos?}">
                    <div class="property-value" aria-labelledby="tipo-label" >
                        <g:link action="verContrato" id="${it.id}"> ${it} </g:link>
                    </div>
                </g:each>    
            </li>
        </ol>
    </g:if>


    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarCliente" id="${cliente.id}" method="POST">
            <%-- se agrega el fieldset y nombres de class --%>
            <fieldset class="buttons">
                <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
                <g:link class="edit" action="editarCliente" id="${cliente.id}">Editar</g:link>
                <g:link class="list" action="cliente">Volver</g:link>
            </fieldset>
    </g:form>

</body>  
</html>
