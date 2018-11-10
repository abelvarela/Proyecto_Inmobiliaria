<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Editar Propietario</title>
</head>  
<body>

    <h1>Editar Propietario</h1>  

    <g:form action="guardarEditarPropietario" id="${propietario.id}" method="POST">
        <fieldset class="form">
            <f:all bean="propietario" except="contratos, propiedades"/> 
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar cambios" />
            <g:link action="verPropietario" id="${propietario.id}" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
