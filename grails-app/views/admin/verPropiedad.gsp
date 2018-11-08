<!DOCTYPE html>
<html>  
<%-- <head>
    <title>Alta Propiedad</title>
</head>   --%>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'propiedad.label', default: 'Propiedad')}" />
    <title>Ver Propiedad</title>
</head>
<body>
    <h1><g:link action="propiedad">Ver Propiedad</g:link></h1>  


    <%-- <div id="show-propiedad" class="content scaffold-show" role="main"> --%>
        <%-- <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if> --%>

        
        <%-- aqui se muestra todo, medio pelo --%>
        <f:display bean="propiedad"  />
        <label>Contratos: </label>
        <g:each in="${propiedad.contratos?}">
            ${it.monto}
        </g:each>        
        <br>
        
        <%-- <g:link action="eliminarPropiedad" id="${propiedad.id}">Eliminar</g:link> --%>
    <%-- </div> --%>



    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarPropiedad" id="${propiedad.id}" method="POST">
            <g:link action="editarPropiedad" id="${propiedad.id}">Editar</g:link>
            <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
            <g:link class="edit" action="propiedad">Cancelar</g:link>
    </g:form>

</body>  
</html>

        <%-- <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Página Principal</a></li>
                <li><g:link class="list" action="index">Lista de Propiedads</g:link></li>
                <li><g:link class="create" action="create">Crear Nuevo Propiedad</g:link></li>
            </ul>
        </div>
        <div id="show-propiedad" class="content scaffold-show" role="main">
            <h1>Propiedad en la Base de Datos</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="propiedad" />
            <g:form resource="${this.propiedad}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.propiedad}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div> --%>


<%-- <!DOCTYPE html>
<html>  
<head>
    <title>Alta Propiedad</title>
</head>  
<body>
    <h1><g:link action="index">Opciones</g:link> - Alta</h1>  
            <f:display bean="propiedad" except="contratos"/>
    <g:form action="confirmarEliminarPropiedad" id="${propiedad.id}" method="POST">
        <fieldset class="form">
            
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Confirmar" />
            <g:link action="index">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html> --%>