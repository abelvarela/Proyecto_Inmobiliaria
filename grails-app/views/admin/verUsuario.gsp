<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Ver Usuario</title>
</head>
<body>
    <h1><g:link action="usuario">Ver Usuario</g:link></h1>  

    
        <%-- aqui se muestra todo, medio pelo --%>
        <f:display bean="usuario"  />


    <%-- editar o eliminar --%>
    <g:form action="confirmarEliminarUsuario" id="${usuario.id}" method="POST">
        <%-- se agrega el fieldset y nombres de class --%>
        <fieldset class="buttons">
            <g:submitButton name="delete" class="delete" value="Eliminar" onclick="return confirm('¿Estás seguro?');"/>
            <g:link class="edit" action="editarUsuario" id="${usuario.id}">Editar</g:link>
            <g:link class="list" action="usuario">Volver</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
