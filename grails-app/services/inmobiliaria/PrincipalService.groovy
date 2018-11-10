package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class PrincipalService {

    def listadoOferta(){
        Propiedad.findAllByOferta(true)
    }

    def guardarConsulta(Map params){
        params.fecha = new Date()
        params.estado = 'Pendiente'
        params.propiedad = Propiedad.get(params.id)

        def consulta = new Consulta(params).save(flush: true)
    }    

}
