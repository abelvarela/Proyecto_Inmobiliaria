package inmobiliaria
import grails.rest.RestfulController

class PropiedadController extends RestfulController<Propiedad>{
    static responseFormats = ['json', 'xml']

    PropiedadController(){
        super(Propiedad)
    }

    def listaPorUbicacion(String p){
        def u = "%" + p + "%"
        if (u)
            respond Propiedad.findAllByUbicacionLike(u)
        else
            respond ([])
    }
    
    def listaPorTipo(String p){
        def t = "%" + p + "%"
        if (t)
            respond Propiedad.findAllByTipoLike(t)
        else
            respond ([])
    }



}
