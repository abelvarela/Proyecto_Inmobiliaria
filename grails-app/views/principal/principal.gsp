<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main2" />
	    <title>Propiedad</title>
    </head>  
     <body>
        <style>
        body {
            background-image : url('${resource(dir: "images/", file: "casa.jpg")}')
        }
        h1#titulo{
            font-size: 4.3em;
            font-family: impact;
            text-align: center;
            color: orange;
            
        }
        </style>

        <span><h1 id="titulo">Inmobiliaria Express</h1></span>
        <%-- form de busqueda  --%>
        <%-- <g:form controller="principal" action="buscarPropiedad" method="POST">
            se agrega fieldset para estilo
            <fieldset class="buttons">
                <label for="tipo">Tipo: </label>
                <select name ="tipo" id="tipo">
                    <option value="%%"> Todos </option>
                    <option value="Casa"> Casa </option>
                    <option value="Departamento"> Departamento </option>
                    <option value="Local"> Local </option>
                    <option value="Oficina"> Oficina </option>
                </select>
                
                <label for="ubicacion">Ubicacion: </label>
                <select name ="ubicacion" id="ubicacion">
                    <option value="%%"> Todas </option>
                    <option value="F.M.E."> F.M.E. </option>
                    <option value="Valle Viejo"> Valle Viejo </option>
                    <option value="Capital"> Capital </option>
                    <option value="Ambato"> Ambato </option>
                </select>

                <label for="operacion">Operacion: </label>
                <select name ="operacion" id="operacion">
                    <option value="%%"> Todas </option>
                    <option value="Venta"> Venta </option>
                    <option value="Alquiler"> Alquiler </option>
                </select> --%>
                 <%-- agregar buscar por operacion --%>
                <%-- <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link class="list" controller="principal" action="principal">Mostrar todos</g:link>
            </fieldset>
        </g:form> --%>






<div class="container">
       
       <g:each in="${listado?}"  

 

            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <g:if test="${it.imagen}">
                        <img class="card-img-top" src=${createLink(controller:"principal", action:"verImagen", id:"${it.imagen.id}")} style="height: 225px; width: 100%; display: block;" data-holder-rendered="true">
                        </g:if>
                        <div class="card-body">
                        <p class="card-text">Direccion:${it.direccion}
                        
                        <br> Ubicacion: ${it.ubicacion}
                        <%-- <br> Ciudad: ${it.ciudad} --%>
                        <br>  
                        <br> Precio: $${it.precio}
                        </p>


                        <div class="d-flex justify-content-between align-items-center">
                            
                            <div class="buttons">
                                <%-- <button type="button" class="btn btn-sm btn-outline-secondary"><g:link action="consultarPropiedad" id="${it.id}">Consultar</g:link></button>              --%>
                                <g:link action="consultarPropiedad" id="${it.id}">Consultar</g:link>
                            </div>

                        
                        </div>
                        </div>
                    </div>
                </div>
           
       </g:each>
        <!-- </div> -->
        </div>


        </div>



    </body>  
</html>
