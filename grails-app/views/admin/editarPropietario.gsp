<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Editar Propietario</title>
</head>  
<body>
    <h1><g:link action="propietario">Editar Propietario</g:link></h1>  
    <g:form action="guardarEditarPropietario" id="${propietario.id}" method="POST">
        <fieldset class="form">
            <f:all bean="propietario" except="contratos, propiedades"/> 
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar cambios" />
            <g:link action="propietario">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>
