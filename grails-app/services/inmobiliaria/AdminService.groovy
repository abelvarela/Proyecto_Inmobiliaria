package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdminService {

// ------------------ CLIENTE --------------------------

    def altaCliente(Map params){
        def cliente = new Cliente(params).save(flush:true)
        return cliente.id
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
        
        if(params.fechaD)
            params.fechaD = Date.parse("yyyy-MM-dd",params.fechaD)
        else
            params.fechaD = Date.parse("yyyy-MM-dd","1900-01-01")
        if(params.fechaH)
            params.fechaH = Date.parse("yyyy-MM-dd",params.fechaH)
        else
            params.fechaH = new Date()

        params.nombre = "%" + params.nombre + "%"
        params.apellido = "%" + params.apellido + "%"
        params.dni = "%" + params.dni + "%"
        params.telefono = "%" + params.telefono + "%"
        params.email = "%" + params.email + "%"
        params.domicilio = "%" + params.domicilio + "%"
        
        def listado = Cliente.findAllByNombreLikeAndApellidoLikeAndDniLikeAndTelefonoLikeAndEmailLikeAndDomicilioLikeAndSexoLikeAndFechaNacimientoBetween(
            params.nombre,params.apellido,params.dni,params.telefono,params.email,params.domicilio,params.sexo,params.fechaD,params.fechaH)
        
        if(params.orden=="nombre") listado.sort{it.nombre}
        if(params.orden=="apellido") listado.sort{it.apellido}
        if(params.orden=="dni") listado.sort{it.dni}
        if(params.orden=="telefono") listado.sort{it.telefono}
        if(params.orden=="email") listado.sort{it.email}    

        return listado
        
    }

// ------------------- FIN CLIENTE ----------------------


// ------------------ PROPIETARIO --------------------------

    def altaPropietario(Map params){
        def propietario = new ClientePropietario(params).save(flush:true)
        return propietario.id
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

        if(params.fechaD)
            params.fechaD = Date.parse("yyyy-MM-dd",params.fechaD)
        else
            params.fechaD = Date.parse("yyyy-MM-dd","1900-01-01")
        if(params.fechaH)
            params.fechaH = Date.parse("yyyy-MM-dd",params.fechaH)
        else
            params.fechaH = new Date()

        params.nombre = "%" + params.nombre + "%"
        params.apellido = "%" + params.apellido + "%"
        params.dni = "%" + params.dni + "%"
        params.telefono = "%" + params.telefono + "%"
        params.email = "%" + params.email + "%"
        params.domicilio = "%" + params.domicilio + "%"
        
        def listado = ClientePropietario.findAllByNombreLikeAndApellidoLikeAndDniLikeAndTelefonoLikeAndEmailLikeAndDomicilioLikeAndSexoLikeAndFechaNacimientoBetween(
            params.nombre,params.apellido,params.dni,params.telefono,params.email,params.domicilio,params.sexo,params.fechaD,params.fechaH,[sort: "apellido", order: "asc"])

        if(params.orden=="nombre") listado.sort{it.nombre}
        if(params.orden=="apellido") listado.sort{it.apellido}
        if(params.orden=="dni") listado.sort{it.dni}
        if(params.orden=="telefono") listado.sort{it.telefono}
        if(params.orden=="email") listado.sort{it.email}    

        return listado
        
    }

// ------------------- FIN PROPIETARIO ----------------------


// ------------------ PROPIEDAD --------------------------

    def altaPropiedad(Map params){
        params.propietario = ClientePropietario.get(params.propietario.id)
        def propiedad = new Propiedad(params).save(flush:true)
        return propiedad.id
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
        // return Propiedad.findAll("from Propiedad as p where p.tipo like :tipo and p.ubicacion like :ubicacion and p.operacion like :operacion",
        // [tipo: params.tipo, ubicacion: params.ubicacion, operacion: params.operacion])
    
        
        // def aux
        // if (params.precioMax < params.precioMin)
        //     aux = params.precioMax
        //     params.precioMax = params.precioMin
        //     params.precioMin = aux
            
        // params.precioMin = new BigDecimal(params.precioMin)
        // params.precioMax = new BigDecimal(params.precioMax)

        // return Propiedad.findAllByTipoLikeAndUbicacionLikeAndOperacionLikeAndDireccionLikeAndPrecioBetween(params.tipo,params.ubicacion,params.operacion,params.direccion,params.precioMin,params.precioMax,[sort: "ubicacion", order: "asc"])
        params.direccion = "%" + params.direccion + "%"
        def listado = Propiedad.findAllByTipoLikeAndUbicacionLikeAndOperacionLikeAndDireccionLikeAndPrecioBetween(params.tipo,params.ubicacion,params.operacion,params.direccion,params.precioMin,params.precioMax)
        
        
        if(params.orden=="tipo") listado.sort{it.tipo}
        if(params.orden=="ubicacion") listado.sort{it.ubicacion}
        if(params.orden=="operacion") listado.sort{it.operacion}
        if(params.orden=="direccion") listado.sort{it.direccion}
        if(params.orden=="precio") listado.sort{it.precio}
        if(params.orden=="estado") listado.sort{it.estado}
        if(params.orden=="oferta") listado.sort{it.oferta}
        
        return listado

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

        return contrato.id
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
        return usuario.id
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
        // if(params.email){
        //     params.email = '%'+params.email+'%'
        //     return Usuario.findAllByEmailLike(params.email)
        // }else if(params.nombreUsuario){
        //     params.nombreUsuario = '%'+params.nombreUsuario+'%'
        //     return Usuario.findAllByNombreUsuarioLike(params.nombreUsuario)
        // }else if(params.apellido){
        //     params.apellido = '%'+params.apellido+'%'
        //     return Usuario.findAllByApellidoLike(params.apellido)
        // }else {
        //     params.nombre = '%'+params.nombre+'%'
        //     return Usuario.findAllByNombreLike(params.nombre)
        // }

        params.nombreUsuario = "%" + params.nombreUsuario + "%"
        params.nombre = "%" + params.nombre + "%"
        params.apellido = "%" + params.apellido + "%"
        params.email = "%" + params.email + "%"

        return Usuario.findAllByNombreUsuarioLikeAndNombreLikeAndApellidoLikeAndEmailLike(params.nombreUsuario,params.nombre,params.apellido,params.email,[sort: "apellido", order: "asc"])





    }

// ------------------- FIN USUARIO ----------------------



// ------------------- CONSULTA ----------------------
    def buscarConsulta(Map params){
        def propiedad = Propiedad.get(params.propiedad)
        params.nombreApellido = "%" + params.nombreApellido + "%"
        params.telefono = "%" + params.telefono + "%"
        params.email = "%" + params.email + "%"
        if(propiedad)    
            return Consulta.findAllByNombreApellidoLikeAndTelefonoLikeAndEmailLikeAndPropiedad(params.nombreApellido,params.telefono,params.email,propiedad,[sort: "estado", order: "desc"])
        else
            return Consulta.findAllByNombreApellidoLikeAndTelefonoLikeAndEmailLike(params.nombreApellido,params.telefono,params.email,[sort: "estado", order: "desc"])
        

    }

// ------------------- FIN CONSULTA ----------------------




}
