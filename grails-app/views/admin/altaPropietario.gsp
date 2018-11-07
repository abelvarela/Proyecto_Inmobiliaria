<!DOCTYPE html>
<html>  
<head>
    <title>Crear Propietario</title>
</head>  
<body>
    <h1><g:link action="propietario">Crear Propietario</g:link></h1>  
    <g:form action="guardarAltaPropietario" method="POST">
        <fieldset class="form">
            <f:all bean="propietario" except="contratos, propiedades" />
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Propietario"/>
            <g:link action="propietario">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>