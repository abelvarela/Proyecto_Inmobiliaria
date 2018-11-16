package inmobiliaria


class SecurityInterceptor {

    boolean before() {
        if (!session.usuario && actionName != "iniciar") {
            redirect(controller: "login", action: "iniciar")
            return false
        }

        if(controllerName=='admin' && (actionName=='listadoUsuario' || actionName=='altaUsuario' ||
                        actionName=='editarUsuario' || actionName=='eliminarUsuario' || 
                        actionName=='guardarAltaUsuario' || actionName=='guardarEditarUsuario' || 
                        actionName=='confirmarEliminarUsuario' || actionName=='verUsuario')) {

            if(!session.usuario.getRoles().any{it.authority=='ADMINISTRADOR'}) {
                render(view: "admin", model: [message:'No tiene permisos suficientes'])
                return false
            }
        }

        return true        
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }

    SecurityInterceptor() {
        match(controller:"admin")
    }
}
