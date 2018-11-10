<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main" />
    <title>Ver Consulta</title>
</head>
<body>

        <h1>Ver Consulta</h1>  


        
        <%-- aqui se muestra todo --%>
        <f:display bean="consulta" except="propiedad"/>
            <%-- se agrego esto para que tenga mismo estilo --%>
        <ol class="property-list consulta">
            <li class="fieldcontain">
                <span id="tipo-label" class="property-label">Propiedad</span>
                <div class="property-value" aria-labelledby="tipo-label" >
                    <g:link action="verPropiedad" id="${consulta.propiedad.id}">${consulta.propiedad}</g:link>
                </div>
            </li>
        </ol>



        <%-- se agrega el fieldset y nombres de class --%>
        <fieldset class="buttons">
            <g:link class="edit" action="atenderConsulta" id="${consulta.id}" onclick="return confirm('¿Estás seguro?');">Atender</g:link>
            <g:link class="list" action="consulta">Cancelar</g:link>
        </fieldset>
    

</body>  
</html>