<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Editar Cliente</title>
</head>  
<body>
 
    <h1>Editar Cliente</h1>  
 
    <g:form action="guardarEditarCliente" id="${cliente.id}" method="POST">
        <fieldset class="form">
            <f:all bean="cliente" except="contratos" /> 
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar cambios" />
            <g:link action="verCliente" id="${cliente.id}" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
