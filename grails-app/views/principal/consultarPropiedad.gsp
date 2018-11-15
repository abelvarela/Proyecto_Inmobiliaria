<!DOCTYPE html>
<html>  
<head>
    <meta name="layout" content="main2" />
    <title>Nueva Consulta</title>
</head>
<body>

    <style>
        body {
            background-image : url('${resource(dir: "images/", file: "casa.jpg")}')
        }
    </style>

    

        
        <%-- aqui se muestra propiedad --%>
    <f:display bean="propiedad" except="propietario, estado, oferta, imagen" />

    <g:if test="${propiedad.imagen}">
        <div class="form-group row">
            <label for="staticPhome" class="col-sm-4 col-form-label">Imagen:</label>
            <div class="col-sm-7">            
                    <img src=${createLink(controller:"principal", action:"verImagen", id:"${propiedad.imagen.id}")} width='300' />
            </div>
        </div>
    </g:if>

    
    <%-- nueva consulta --%>
    <h3> Consulta </h3>
    
    <g:form action="guardarConsultaPropiedad" id="${propiedad.id}" method="POST">
        <fieldset class="form">
            <f:all bean="consulta" except="fecha, estado, propiedad, textoConsulta"/>
            <div class="fieldcontain required">
                <label for="textoConsulta">Consulta<span class="required-indicator">*</span></label>
                <textarea id="textoConsulta" name="textoConsulta" maxlength="100" required></textarea>
            </div>
        
        </fieldset>

        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Enviar consulta"/>
            <g:link action="verPropiedad" id="${propiedad.id}" onclick="return confirm('¿Estás seguro?');">Cancelar</g:link>
        </fieldset>
    </g:form>    

</body>  
</html>