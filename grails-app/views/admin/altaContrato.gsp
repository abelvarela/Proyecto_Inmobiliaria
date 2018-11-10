<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Crear Contrato</title>
</head>  
<body>
    
    <%-- dar estilo al titulo --%>
    <h1>Crear Contrato</h1>  
    
    
    
    <g:form action="guardarAltaContrato" method="POST">
        <fieldset class="form">
            <f:all bean="contrato" except="propietario"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Contrato"/>
            <g:link action="contrato" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>