<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main2" />
    <title>Nueva Consulta</title>
</head>
<body>

    <h1><g:link action="propiedad">Ver Propiedad</g:link></h1>  

        
        <%-- aqui se muestra propiedad --%>
    <f:display bean="propiedad" except="propietario, estado, oferta" />

    
    <%-- nueva consulta --%>
    <h3> Consulta </h3>
    
    <g:form action="guardarConsultaPropiedad" id="${propiedad.id}" method="POST">
        <fieldset class="form">
            <f:all bean="consulta" except="fecha, estado, propiedad"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Enviar consulta"/>
            <g:link action="verPropiedad" id="${propiedad.id}" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>    

</body>  
</html>