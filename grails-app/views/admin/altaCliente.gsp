<!DOCTYPE html>
<html>  
<head>
    <title>Crear Cliente</title>
</head>  
<body>
    <h1><g:link action="cliente">Crear Cliente</g:link></h1>  
    <g:form action="guardarAltaCliente" method="POST">
        <fieldset class="form">
            <f:all bean="cliente" except="contratos"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Cliente"/>
            <g:link action="cliente">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>