<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>


    <nav class="navbar navbar-default navbar-inverse" role="navigation" style="background-color: black">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">

		            <asset:image src="icono4.png" alt="logo_inmobiliaria"/>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                     <ul class="nav navbar-nav">
                        <li class="active" ><g:link controller="principal" action="index">Inicio</g:link></li>  
                        <li ><g:link controller="principal" action="propiedad">Propiedades</g:link></li>
                    </ul>

                <g:if test="${session!=null && session.usuario!=null}">    
                    <ul class="nav navbar-nav navbar-right" >
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> ${session?.usuario?.nombreUsuario} <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><g:link controller="login" action="logout">Salir</g:link></li>
                            </ul>
                        </li>
                    </ul>
                </g:if>    

<%-- aaaaa --%>
                <g:else>    
                    <ul class="nav navbar-nav navbar-right" >
                        <li class="dropdown btn-group">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Iniciar Sesion <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">
                                        <h1 style="color: white">Iniciar Sesion</h1>
                                        <g:form class="form" role="form" controller="login" action="iniciar" method="POST" accept-charset="UTF-8" id="login-nav">
                                            <div class="form-group">
                                                <label class="form-control" for="email">Correo</label>
                                                <input class="form-control" id="email" type='email' name='email' placeholder="Email..." required/>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-control" for="contrasena">Contraseña</label>
                                                <input class="form-control" id="contrasena" type="password" name='contrasena' placeholder="Contraseña..." required/>
                                                <br>
                                            </div>
                                            <div class="form-group">
                                                <g:submitButton class="btn btn-primary btn-block" name="iniciar" value="Iniciar Sesion"/>
                                            </div>
                                        </g:form>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </g:else>






                <%-- <g:else>    
                    <ul class="nav navbar-nav navbar-right" >
                        <li class="dropdown btn-group">
                        <g:link controller="login" action="iniciar">
                        <b>Iniciar Sesión</b></g:link></li>
                    </ul>
                </g:else> --%>


            </div>        

        </div>
    </nav>

    <g:layoutBody/>

    <div class="footer" role="contentinfo">
      Universidad Nacional de Catamarca - FTyCA - Cátedra Programacion III - 2018
    </div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
