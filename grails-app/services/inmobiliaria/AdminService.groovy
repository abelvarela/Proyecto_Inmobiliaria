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
        params.propietario = ClientePropietario.get(params.propietario.id)
        // params.precio = new BigDecimal(params.precio)
        def propiedad = new Propiedad(params).save(flush:true)
    }

    def editarPropiedad(Map params){
        def propiedad = Propiedad.get(params.id)
        
        if(params.estado=="on")
            propiedad.estado = true
        else
            propiedad.estado = false
        
        if(params.oferta=="on")
            propiedad.oferta = true
        else
            propiedad.oferta = false
        

        propiedad.tipo = params.tipo
        propiedad.ubicacion = params.ubicacion
        propiedad.operacion = params.operacion
        propiedad.direccion = params.direccion
        propiedad.descripcion = params.descripcion
        propiedad.precio = new BigDecimal(params.precio)
        propiedad.propietario = ClientePropietario.get(params.propietario.id)

        propiedad.save(flush: true)
    }

    def eliminarPropiedad(Long id){
        def propiedad = Propiedad.get(id)
        propiedad.delete(flush: true)
    }

    def buscarPropiedad(Map params){
        // if(params.tipo!="" && params.ubicacion!=""){
        //     return Propiedad.findAllByTipoAndUbicacion(params.tipo,params.ubicacion,[sort: "ubicacion", order: "asc"])
        // }else if(params.tipo!="" && params.ubicacion==""){
        //     return Propiedad.findAllByTipo(params.tipo,[sort: "ubicacion", order: "asc"])
        // }else if(params.tipo=="" && params.ubicacion!="") {
        //     return Propiedad.findAllByUbicacion(params.ubicacion,[sort: "tipo", order: "asc"])
        // }else{
        //     return Propiedad.findAll([sort: "ubicacion", order: "asc"])
        // }

        return Propiedad.findAll("from Propiedad as p where p.tipo like :tipo and p.ubicacion like :ubicacion and p.operacion like :operacion",
        [tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion])




    }

// ------------------- FIN PROPIEDAD ----------------------




// ------------------ CONTRATO --------------------------

    def altaContrato(Map params){
        params.propiedad = Propiedad.get(params.propiedad.id)
        params.propietario = params.propiedad.propietario
        params.cliente = Cliente.get(params.cliente.id)
        def contrato = new Contrato(params).save(flush:true)

        def propiedad = params.propiedad
        propiedad.estado = false
        propiedad.save(flush:true)
    }

    def editarContrato(Map params){
        def contrato = Contrato.get(params.id)

        // aqui queda disponible la anterior propiedad
        contrato.propiedad.estado = true
        contrato.propiedad.save(flush:true)


        contrato.propiedad = Propiedad.get(params.propiedad.id)
        contrato.propietario = contrato.propiedad.propietario
        contrato.cliente = Cliente.get(params.cliente.id)
        
        contrato.fechaOperacion = params.fechaOperacion
        contrato.fechaCaducidad = params.fechaCaducidad
        contrato.monto = new BigDecimal(params.monto)
        contrato.comision = new BigDecimal(params.comision)
        

        contrato.save(flush: true)
    }

    def eliminarContrato(Long id){
        def contrato = Contrato.get(id)

        contrato.propiedad.estado = true
        contrato.propiedad.save(flush:true)

        contrato.delete(flush: true)
    }

    def buscarContrato(Map params){
        // if(params.tipo!="" && params.ubicacion!=""){
        //     return Contrato.findAllByTipoAndUbicacion(params.tipo,params.ubicacion)
        // }else if(params.tipo!="" && params.ubicacion==""){
        //     return Contrato.findAllByTipo(params.tipo)
        // }else if(params.tipo=="" && params.ubicacion!="") {
        //     return Contrato.findAllByUbicacion(params.ubicacion)
        // }else{
        //     return Contrato.findAll()
        // }


        // return Contrato.findAll("from Contrato as c where c.cliente.id = :cliente and c.propietario.id = :propietario and c.propiedad.tipo = :tipo and c.propiedad.ubicacion = :ubicacion",
        // [cliente: new Long (params.cliente), propietario: new Long (params.propietario),
        // tipo: params.tipo, ubicacion: params.ubicacion])

        // if(params.tipo!="" && params.ubicacion!=""){
        //     return Contrato.findAllByTipoAndUbicacion(params.tipo,params.ubicacion)
        // }else if(params.tipo!="" && params.ubicacion==""){
        //     return Contrato.findAllByTipo(params.tipo)
        // }else if(params.tipo=="" && params.ubicacion!="") {
        //     return Contrato.findAllByUbicacion(params.ubicacion)
        // }else{
        //     return Contrato.findAll()
        // }
        
        // return Contrato.findAll("from Contrato as c where c.cliente.id like :cliente and ")
        


        if(params.cliente!="%%" && params.propietario!="%%"){
            params.cliente = new Long(params.cliente)
            params.propietario = new Long(params.propietario)
            return Contrato.findAll("from Contrato as c where c.cliente.id = :cliente and c.propietario.id = :propietario and c.propiedad.tipo like :tipo and c.propiedad.ubicacion like :ubicacion",
            [cliente: params.cliente, propietario: params.propietario,
            tipo: params.tipo, ubicacion: params.ubicacion])
        }else if(params.cliente!="%%" && params.propietario=="%%"){
            params.cliente = new Long(params.cliente)
            return Contrato.findAll("from Contrato as c where c.cliente.id = :cliente and c.propiedad.tipo like :tipo and c.propiedad.ubicacion like :ubicacion",
            [cliente: params.cliente, tipo: params.tipo, ubicacion: params.ubicacion])
        }else if(params.cliente=="%%" && params.propietario!="%%"){
            params.propietario = new Long(params.propietario)
            return Contrato.findAll("from Contrato as c where c.propietario.id = :propietario and c.propiedad.tipo like :tipo and c.propiedad.ubicacion like :ubicacion",
            [propietario: params.propietario, tipo: params.tipo, ubicacion: params.ubicacion])
        }else{
            return Contrato.findAll("from Contrato as c where c.propiedad.tipo like :tipo and c.propiedad.ubicacion like :ubicacion",
            [tipo: params.tipo, ubicacion: params.ubicacion])
        }




    }

// ------------------- FIN CONTRATO ----------------------






// ------------------ USUARIO --------------------------

    def altaUsuario(Map params){
        def usuario = new Usuario(params).save(flush:true)
        def rol = Rol.get(params.rol)
        def usuRol = new UsuarioRol(usuario: usuario, rol: rol).save(flush:true)
    }

    def editarUsuario(Map params){
        def usuario = Usuario.get(params.id)

        usuario.nombreUsuario = params.nombreUsuario
        usuario.nombre = params.nombre
        usuario.apellido = params.apellido
        usuario.contrasena = params.contrasena
        usuario.email = params.email        

        usuario.save(flush: true)
    }

    def eliminarUsuario(Long id){
        def usuario = Usuario.get(id)
        usuario.delete(flush: true)
    }

    def buscarUsuario(Map params){
        if(params.email){
            params.email = '%'+params.email+'%'
            return Usuario.findAllByEmailLike(params.email)
        }else if(params.nombreUsuario){
            params.nombreUsuario = '%'+params.nombreUsuario+'%'
            return Usuario.findAllByNombreUsuarioLike(params.nombreUsuario)
        }else if(params.apellido){
            params.apellido = '%'+params.apellido+'%'
            return Usuario.findAllByApellidoLike(params.apellido)
        }else {
            params.nombre = '%'+params.nombre+'%'
            return Usuario.findAllByNombreLike(params.nombre)
        }
    }

// ------------------- FIN USUARIO ----------------------

}
