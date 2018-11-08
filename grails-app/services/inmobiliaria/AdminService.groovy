package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdminService {

// ------------------ CLIENTE --------------------------

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

    def listadoCliente(){
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

// ------------------- FIN CLIENTE ----------------------


// ------------------ PROPIETARIO --------------------------

    def altaPropietario(Map params){
        def propietario = new ClientePropietario(params).save(flush:true)
    }

    def editarPropietario(Map params){
        def propietario = ClientePropietario.get(params.id)

        propietario.nombre = params.nombre
        propietario.apellido = params.apellido
        propietario.sexo = params.sexo
        propietario.dni = params.dni
        propietario.fechaNacimiento = params.fechaNacimiento
        propietario.domicilio = params.domicilio
        propietario.telefono = params.telefono
        propietario.email = params.email        

        propietario.save(flush: true)
    }

    def listadoPropietario(){
        def propietarios = ClientePropietario.findAll()
        return propietarios
    }

    def eliminarPropietario(Long id){
        def propietario = ClientePropietario.get(id)
        propietario.delete(flush: true)
    }

    def buscarPropietario(Map params){
        if(params.dni){
            params.dni = '%'+params.dni+'%'
            return ClientePropietario.findAllByDniLike(params.dni)
        }else if(params.apellido){
            params.apellido = '%'+params.apellido+'%'
            return ClientePropietario.findAllByApellidoLike(params.apellido)
        }else {
            params.nombre = '%'+params.nombre+'%'
            return ClientePropietario.findAllByNombreLike(params.nombre)
        }
    }

// ------------------- FIN PROPIETARIO ----------------------


// ------------------ PROPIEDAD --------------------------

    def altaPropiedad(Map params){
        params.propietario = ClientePropietario.get(params.propietario)
        def propiedad = new Propiedad(params).save(flush:true)
    }

    def editarPropiedad(Map params){
        def propiedad = Propiedad.get(params.id)

        propiedad.tipo = params.tipo
        propiedad.ubicacion = params.ubicacion
        propiedad.direccion = params.direccion
        propiedad.descripcion = params.descripcion
        propiedad.precio = params.precio

        propiedad.save(flush: true)
    }

    def listadoPropiedad(){
        def propiedades = Propiedad.findAll()
        return propiedades
    }

    def eliminarPropiedad(Long id){
        def propiedad = Propiedad.get(id)
        propiedad.delete(flush: true)
    }

    def buscarPropiedad(Map params){
        if(params.tipo!="" && params.ubicacion!=""){
            return Propiedad.findAllByTipoAndUbicacion(params.tipo,params.ubicacion)
        }else if(params.tipo!="" && params.ubicacion==""){
            return Propiedad.findAllByTipo(params.tipo)
        }else if(params.tipo=="" && params.ubicacion!="") {
            return Propiedad.findAllByUbicacion(params.ubicacion)
        }else{
            return Propiedad.findAll()
        }
    }

// ------------------- FIN PROPIEDAD ----------------------


}
