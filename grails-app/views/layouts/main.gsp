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
                        <li class="active" ><a href="/">Inicio</a></li>  
                        <li><g:link controller="admin" action="cliente">Cliente</g:link></li>
                        <li><g:link controller="admin" action="propietario">Propietario</g:link></li>
                        <li ><g:link controller="admin" action="propiedad">Propiedad</g:link></li>
                        <li><g:link controller="admin" action="usuario">Usuario</g:link></li>
                        <li><label>${session?.usuario?.nombreUsuario}</label></li>
                        <li><g:link controller="login" action="logout">Cerrar Sesion</g:link></li>
                    </ul>

                <%-- <g:if test="${session!=null && session.usuario!=null}">    
                    <ul class="nav navbar-nav navbar-right" >
                        <li><g:link controller="Login" action="login"><b>${session?.usuario?.nombreUsuario}</b></g:link></li>
                        <li><g:link controller="Login" action="logout">Salir</g:link></li>
                    </ul>
                </g:if>    
                    
                <g:else>    
                    <ul class="nav navbar-nav navbar-right" >
                        <li class="dropdown btn-group">
                        <g:link controller="Login" action="login">
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
