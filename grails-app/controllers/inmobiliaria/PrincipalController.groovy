package inmobiliaria

class PrincipalController {
    def principalService

    def index() {
        // render(view: 'principal', model: [ listado: Propiedad.findAllByOferta(true)])
        render(view: 'principal', model: [ listado: Propiedad.findAll()])
    }

    def verPropiedad(Long id){
        [propiedad: Propiedad.get(id)]
    }

    def buscarPropiedad(){
        [propiedad: Propiedad.get(params.id)]
    }

    def consultarPropiedad(Long id){
        [consulta: new Consulta(), propiedad: Propiedad.get(id)]
    }

    def guardarConsultaPropiedad(){
        principalService.guardarConsulta(params)
        redirect(action: 'index')
    }





}
