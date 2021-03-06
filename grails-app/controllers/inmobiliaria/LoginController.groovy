package inmobiliaria

class LoginController {

    def index() {
        if(session.usuario){
            redirect(controller:"admin", action:"index")
        }
        render(view:"login")
    }

    def iniciar() {
        if (request.get) {
            return render(view: 'login')
        }
        
        def u = Usuario.findByEmail(params.email)
        if (u) {
            if (u.contrasena == u.generateMD5_A(params.contrasena)) {
                session.usuario = u
                redirect(controller: "admin", action: "index")
            } else {
                render(view: "login", model: [message: "Constraseña Incorrecta"])
            }
        } else {
            render(view: "login", model: [message: "No existe el usuario ingresado"])
        }
    }

    def logout() {
        session.usuario=null
        redirect(controller: "principal", action: "index")
    }
}