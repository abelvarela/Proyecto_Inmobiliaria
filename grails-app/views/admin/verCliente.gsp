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
        
        
        <%-- falta para ver contratos --%>
        <ol class="property-list cliente">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Fecha Nacimiento</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    ${cliente.fechaNacimiento.year + 1900}-${cliente.fechaNacimiento.month}-${cliente.fechaNacimiento.date}  
                </div>
            </li>
        </ol>
        


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

        <%-- <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Clientes</g:link></li>
                <li><g:link class="create" action="create">Crear Nuevo Cliente</g:link></li>
            </ul>
        </div>
        <div id="show-cliente" class="content scaffold-show" role="main">
            <h1>Cliente en la Base de Datos</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="cliente" />
            <g:form resource="${this.cliente}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.cliente}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div> --%>


<%-- <!DOCTYPE html>
<html>  
<head>
    <title>Alta Cliente</title>
</head>  
<body>
    <h1><g:link action="index">Opciones</g:link> - Alta</h1>  
            <f:display bean="cliente" except="contratos"/>
    <g:form action="confirmarEliminarCliente" id="${cliente.id}" method="POST">
        <fieldset class="form">
            
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Confirmar" />
            <g:link action="index">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html> --%>