<!DOCTYPE html>
<html>  
<head>
    <title>Crear Propiedad</title>
</head>  
<body>
    <h1><g:link action="propiedad">Crear Propiedad</g:link></h1>  
    <g:form action="guardarAltaPropiedad" method="POST">
        <fieldset class="form">
            <f:all bean="propiedad" except="propietario"/>
            <label for="propietario">Propietario: </label>
            <select name ="propietario" id="propietario">
                <g:each in="${listado?}">   
                <option value="${it.id}"> ${it.nombre} </option>
                </g:each>
            </select>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Propiedad"/>
            <g:link action="propiedad">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>