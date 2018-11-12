<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main2" />
	    <title>Propiedad</title>
    </head>  
     <body>
        
        <%-- form de busqueda  --%>
        <g:form controller="principal" action="buscarPropiedad" method="POST">
            <%-- se agrega fieldset para estilo --%>
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
                </select>
                 <%-- agregar buscar por operacion --%>
                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link class="list" controller="principal" action="principal">Mostrar todos</g:link>
            </fieldset>
        </g:form>





        <%-- <table class="table">
            <tr>
                <th>Tipo</th>
                <th>Ubicacion</th>
                <th>Operacion</th>
                <th>Direccion</th>
                <th>Precio</th>
                <th>Ver</th>
            </tr>

            <%-- en listado tenemos array de propiedades 
            <g:each in="${listado?}">
                <g:if test="${it.estado}">
                    <g:set var="estado" value="Si" />
                </g:if>
                <g:else>
                    <g:set var="estado" value="No" />
                </g:else>    
            
                <tr>
                    <td>${it.tipo}</td>
                    <td>${it.ubicacion}</td>
                    <td>${it.operacion}</td>
                    <td>${it.direccion}</td>
                    <td>${it.precio}</td>                    
                    <td><g:link action="verPropiedad" id="${it.id}">Ver más</g:link></td>
                </tr>
            </g:each>
        </table> --%>

<div class="container">
       
       <g:each in="${listado?}"  

 

          <div class="row">
              <div class="col-md-4">
                  <div class="card mb-4 shadow-sm">
                    <img class="card-img-top" src=${createLink(controller:"admin", action:"verImagen", id:"${it.imagen.id}")} style="height: 225px; width: 100%; display: block;" data-holder-rendered="true">
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
