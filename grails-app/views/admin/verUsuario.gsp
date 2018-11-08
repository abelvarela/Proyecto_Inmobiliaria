<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <%-- <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" /> --%>
    <title>Ver Usuario</title>
</head>
<body>
    <h1><g:link action="usuario">Ver Usuario</g:link></h1>  


    <%-- <div id="show-usuario" class="content scaffold-show" role="main"> --%>
        <%-- <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if> --%>

        
        <%-- aqui se muestra todo, medio pelo --%>
        <f:display bean="usuario"  />
        
        
        <%-- <g:link action="eliminarUsuario" id="${usuario.id}">Eliminar</g:link> --%>
    <%-- </div> --%>



    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarUsuario" id="${usuario.id}" method="POST">
            <g:link action="editarUsuario" id="${usuario.id}">Editar</g:link>
            <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
            <g:link class="edit" action="usuario">Cancelar</g:link>
    </g:form>

</body>  
</html>

        <%-- <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Usuarios</g:link></li>
                <li><g:link class="create" action="create">Crear Nuevo Usuario</g:link></li>
            </ul>
        </div>
        <div id="show-usuario" class="content scaffold-show" role="main">
            <h1>Usuario en la Base de Datos</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="usuario" />
            <g:form resource="${this.usuario}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.usuario}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div> --%>


<%-- <!DOCTYPE html>
<html>  
<head>
    <title>Alta Usuario</title>
</head>  
<body>
    <h1><g:link action="index">Opciones</g:link> - Alta</h1>  
            <f:display bean="usuario" except="contratos"/>
    <g:form action="confirmarEliminarUsuario" id="${usuario.id}" method="POST">
        <fieldset class="form">
            
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Confirmar" />
            <g:link action="index">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html> --%>