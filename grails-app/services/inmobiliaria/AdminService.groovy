package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdminService {

    def altaCliente(Map params){
        def cliente = new Cliente(params).save(flush:true)
    }

    def editarCliente(Map params){
        def cliente = Cliente.get(params.id)

        cliente.nombre = params.nombre
        cliente.apellido = params.apellido
        cliente.sexo = params.sexo
        cliente.dni = params.dni
        cliente.fechaNacimiento = params.fechaNacimiento
        cliente.domicilio = params.domicilio
        cliente.telefono = params.telefono
        cliente.email = params.email        

        cliente.save(flush: true)
    }

    def listadoClientes(){
        def clientes = Cliente.findAll()
        return clientes
    }

    def eliminarCliente(Long id){
        def cliente = Cliente.get(id)
        cliente.delete(flush: true)
    }

    def buscarCliente(Map params){
        if(params.dni){
            params.dni = '%'+params.dni+'%'
            return Cliente.findAllByDniLike(params.dni)
        }else if(params.apellido){
            params.apellido = '%'+params.apellido+'%'
            return Cliente.findAllByApellidoLike(params.apellido)
        }else {
            params.nombre = '%'+params.nombre+'%'
            return Cliente.findAllByNombreLike(params.nombre)
        }
    }

}
