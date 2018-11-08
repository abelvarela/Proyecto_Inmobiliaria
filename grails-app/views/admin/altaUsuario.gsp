<!DOCTYPE html>
<html>  
<head>
    <title>Crear Usuario</title>
</head>  
<body>
    <h1><g:link action="usuario">Crear Usuario</g:link></h1>  
    <g:form action="guardarAltaUsuario" method="POST">
        <fieldset class="form">
            <f:all bean="usuario"/>
            <label>Rol: </label>
            <select name ="rol">
                <g:each in="${roles?}">   
                    <option value="${it.id}"> ${it.authority} </option>
                </g:each>
            </select><br>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="Guardar Usuario"/>
            <g:link action="usuario">Cancelar</g:link>
        </fieldset>
    </g:form>

</body>  
</html>