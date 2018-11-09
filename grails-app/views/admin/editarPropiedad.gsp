<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Editar Propiedad</title>
</head>  
<body>
    <h1><g:link action="propiedad">Editar Propiedad</g:link></h1>  
    <g:form action="guardarEditarPropiedad" id="${propiedad.id}" method="POST">
        <fieldset class="form">
            <f:all bean="propiedad" except="contratos" /> 
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar cambios" />
            <g:link action="verPropiedad" id="${propiedad.id}" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
