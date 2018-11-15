package inmobiliaria

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "principal" , action: "index" )
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/propiedades"(resources:"Propiedad"){

            collection {"/ubicacion"(controller: "propiedad", action: "listaPorUbicacion")}

            collection {"/tipo"(controller: "propiedad", action: "listaPorTipo")}
    
        }
    }
}
