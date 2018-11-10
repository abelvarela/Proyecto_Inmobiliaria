<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Crear Propietario</title>
</head>  
<body>

    <h1>Crear Propietario</h1>  

    <g:form action="guardarAltaPropietario" method="POST">
        <fieldset class="form">
            <f:all bean="propietario" except="contratos, propiedades" />
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Propietario"/>
            <g:link action="propietario" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>