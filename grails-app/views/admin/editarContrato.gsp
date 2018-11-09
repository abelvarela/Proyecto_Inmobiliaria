<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Editar Contrato</title>
</head>  
<body>
    <h1><g:link action="contrato">Editar Contrato</g:link></h1>  
    <g:form action="guardarEditarContrato" id="${contrato.id}" method="POST">
        <fieldset class="form">
            <f:all bean="contrato" except="propietario" /> 
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar cambios" />
            <g:link action="verContrato" id="${contrato.id}" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
