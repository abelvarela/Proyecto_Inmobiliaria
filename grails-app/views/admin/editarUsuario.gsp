<!DOCTYPE html>
<html>  
<head>
    <title>Editar Usuario</title>
</head>  
<body>
    <h1><g:link action="usuario">Editar Usuario</g:link></h1>  
    <g:form action="guardarEditarUsuario" id="${usuario.id}" method="POST">
        <fieldset class="form">
            <f:all bean="usuario"/> 
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar cambios" />
            <g:link action="usuario">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
