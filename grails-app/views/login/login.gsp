<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Iniciar Sesion</title>
</head>
<body>
    <div class="container">
    <g:if test="${message}">
      <div class="message" role="status">${message}</div>
    </g:if>
      <h1>Iniciar Sesion</h1>
      <g:form controller="login" action="iniciar" method="POST">
          <input type='email' name='email' placeholder="Email..." required/>
          <br><br>
          <input type="password" name='contrasena' placeholder="Contraseña" required/>
          <br><br>
          <g:submitButton value="Iniciar Sesion"/>
      </g:form>
    </div>

</body>
</html>
