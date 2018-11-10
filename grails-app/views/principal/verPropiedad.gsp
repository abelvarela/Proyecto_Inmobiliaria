<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main2" />
    <title>Ver Propiedad</title>
</head>
<body>

    <h1>Ver Propiedad</h1>  


    <%-- <div id="show-propiedad" class="content scaffold-show" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    </div> --%>
        
        <%-- aqui se muestra todo --%>
    <f:display bean="propiedad" except="propietario, estado, oferta" />
        


    <%-- se agrega el fieldset y nombres de class --%>
    <fieldset class="buttons">
        <g:link class="edit" action="consultarPropiedad" id="${propiedad.id}">Consultar</g:link>
        <g:link class="list" action="index">Volver</g:link>
    </fieldset>
    

</body>  
</html>