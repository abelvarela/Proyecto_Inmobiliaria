<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Crear Propiedad</title>
</head>  
<body>
    
    <%-- dar estilo al titulo --%>
    <h1>Crear Propiedad</h1>  
    
    <g:form action="guardarAltaPropiedad" method="POST">
        <fieldset class="form">
            <f:all bean="propiedad"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Propiedad"/>
            <g:link action="propiedad" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>