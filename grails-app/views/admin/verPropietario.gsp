<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <%-- <g:set var="entityName" value="${message(code: 'propietario.label', default: 'Propietario')}" /> --%>
    <title>Ver Propietario</title>
</head>
<body>
    <h1><g:link action="propietario">Ver Propietario</g:link></h1>  


    <%-- <div id="show-propietario" class="content scaffold-show" role="main"> --%>
        <%-- <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if> --%>

        
        <%-- aqui se muestra todo, medio pelo --%>
        <f:display bean="propietario"  />
        <%-- <label>Contratos: </label>
        <g:each in="${propietario.contratos?}">
            ${it.monto}
        </g:each>         --%>
        <br>
        
        <%-- <g:link action="eliminarPropietario" id="${propietario.id}">Eliminar</g:link> --%>
    <%-- </div> --%>



    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarPropietario" id="${propietario.id}" method="POST">
            <g:link action="editarPropietario" id="${propietario.id}">Editar</g:link>
            <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
            <g:link class="edit" action="propietario">Cancelar</g:link>
    </g:form>

</body>  
</html>

        <%-- <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Propietarios</g:link></li>
                <li><g:link class="create" action="create">Crear Nuevo Propietario</g:link></li>
            </ul>
        </div>
        <div id="show-propietario" class="content scaffold-show" role="main">
            <h1>Propietario en la Base de Datos</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="propietario" />
            <g:form resource="${this.propietario}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.propietario}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div> --%>


<%-- <!DOCTYPE html>
<html>  
<head>
    <title>Alta Propietario</title>
</head>  
<body>
    <h1><g:link action="index">Opciones</g:link> - Alta</h1>  
            <f:display bean="propietario" except="contratos"/>
    <g:form action="confirmarEliminarPropietario" id="${propietario.id}" method="POST">
        <fieldset class="form">
            
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Confirmar" />
            <g:link action="index">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html> --%>