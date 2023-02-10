/**
 * SesionController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */
  const fs = require('fs');
 //const Herramientastra = require("../models/Herramientastra");

//const Identificacion = require("../models/Identificacion");

module.exports = {

  registro: async (peticion, respuesta) => {
    respuesta.view('pages/registro')
  },
  
  
  procesarRegistro: async (peticion, respuesta) => {
    let hora=peticion.body.hora;

    console.log(hora)
    let cliente = await Cliente.findOne({ email: peticion.body.email });  
    
   if (cliente) {
      peticion.addFlash('mensaje', 'Email duplicado')
      return respuesta.redirect("/registro");
    }
    else {
      let cliente = await Cliente.create({
        email: peticion.body.email,
        nombre: peticion.body.nombre,
        contrasena: peticion.body.contrasena
      })
      peticion.session.cliente = cliente;
      peticion.addFlash('mensaje', 'Cliente registrado')
      return respuesta.redirect("/");
    }
  },

  procesarFicha: async (peticion, respuesta) => {
    if (!peticion.session || !peticion.session.cliente) {
      return respuesta.redirect("/")
    }
      
    let ficha = await Ficha.findOne({ capataz: peticion.body.capataz });    
    
   if (ficha) {
      peticion.addFlash('mensaje', 'Email duplicado')
      return respuesta.redirect("/fichas");
    }
    else {
      let ficha = await Ficha.create({
        hora: peticion.body.hora,
        fecha: peticion.body.fecha,
        region: peticion.body.region,
        supervisor: peticion.body.supervisor,
        programa: peticion.body.programa,
        capataz: peticion.body.capataz,
        ubicacion: peticion.body.ubicacion,
        cant_jornalero: peticion.body.cant_jornalero,
        cliente_id: peticion.body.cliente_id,
        activar: true       
      })
      
      let ficha_id = await Ficha.findOne({ capataz: peticion.body.capataz, fecha:peticion.body.fecha, hora: peticion.body.hora });
      let id = ficha_id.id;
      console.log(id)
      //peticion.session.cliente = cliente;
      peticion.addFlash('mensaje', 'Cliente registrado')
      return respuesta.redirect("/fichas2");      
    }
  },

  procesarIdentificacion: async (peticion, respuesta) => {
    if (!peticion.session || !peticion.session.cliente) {
      return respuesta.redirect("/")
    }
        let identificacion = await Identificacion.create({
        mamelucos: peticion.body.mamelucos,
        chalecos_reflectores: peticion.body.chalecos_reflectores,
        gorras: peticion.body.gorras,
        cascos: peticion.body.cascos,
        botas_de_gomas: peticion.body.botas_de_gomas,
        tenis: peticion.body.tenis,
        sandalias: peticion.body.sandalias,
        zapatos: peticion.body.zapatos,
        lentes: peticion.body.lentes,
        guantes: peticion.body.guantes,
        botas_de_material: peticion.body.botas_de_material,
        // herramientas de trabajo
     
        machetes: peticion.body.machetes,
        machetes_propios: peticion.body.machetes_propios,
        limas: peticion.body.limas,
        picos: peticion.body.picos,
        palas: peticion.body.palas,
        escobas: peticion.body.escobas,
        rastrillos: peticion.body.rastrillos,
        trimmer: peticion.body.trimmer,
        motosierras: peticion.body.motosierras,
        hilos_trimmers: peticion.body.hilos_trimmers,
        combustible: peticion.body.combustible,
        carretillas: peticion.body.carretillas,
        carritos_contadores: peticion.body.carritos_contadores, 
        
       // Herramientas de seguridad
       cono: peticion.body.cono,
       drones: peticion.body.drones,
       vallas_t_libro: peticion.body.vallas_t_libro,
       condicion: peticion.body.condicion,
       cintas: peticion.body.cintas,
      // manejo de desechos
       regogido_por: peticion.body.regogido_por,
       ///// 
       observacion: peticion.body.observacion,
        origen:peticion.body.origen,
        ficha_id: peticion.body.ficha_id,
        status: true               
      })   
      
      await Ficha.update( { activar: true }, {activar: false })
     // peticion.addFlash('mensaje', 'Foto desactivada')
   //eturn respuesta.redirect("/admin/principal")
    
      //peticion.session.cliente = cliente;
      peticion.addFlash('mensaje', 'Cliente registrado')
      return respuesta.redirect("/fichas");      
    
    
  },

  procesarHerremientas: async (peticion, respuesta) => {
    if (!peticion.session || !peticion.session.cliente) {
      return respuesta.redirect("/")
    }
    

      let ficha3 = await Herramientastra.create({
        machetes: peticion.body.machetes,
        machetes_propios: peticion.body.machetes_propios,
        limas: peticion.body. limas,
        picos: peticion.body.picos,
        palas: peticion.body.palas,
        escobas: peticion.body.escobas,
        rastrillos: peticion.body.rastrillos,
        trimmer: peticion.body.trimmer,
        motosierras: peticion.body.motosierras,
        hilos_trimmers: peticion.body.hilos_trimmers,
        combustible: peticion.body.combustible,
        carretillas: peticion.body.carretillas,
        condicion:peticion.body.condicion,
        ficha_id: peticion.body.ficha_id,
        status: true               
      })  
      
    
      //peticion.session.cliente = cliente;
      peticion.addFlash('mensaje', 'Cliente registrado')
      return respuesta.redirect("/identi2");      
    
    
  },



  inicioSesion: async (peticion, respuesta) => {
    respuesta.view('pages/inicio_sesion')
  },


  identificacion: async (peticion, respuesta) => {
    respuesta.view('pages/identificacion',{ ficha_id })
  },

  procesarInicioSesion: async (peticion, respuesta) => {    
    let cliente = await Cliente.findOne({ email: peticion.body.email, contrasena: peticion.body.contrasena });  
      
    if (cliente) {
      if (cliente.activa==false ){
        peticion.addFlash('mensaje', 'Usuario Desactivado')
        return respuesta.redirect("/inicio-sesion");
      }
      peticion.session.cliente = cliente
      let carroCompra = await CarroCompra.find({cliente: cliente.id})
      peticion.session.carroCompra = carroCompra
      peticion.addFlash('mensaje', 'Sesión iniciada')
      return respuesta.redirect("/")
    } 
    else {
      peticion.addFlash('mensaje', 'Email o contraseña invalidos')
      return respuesta.redirect("/inicio-sesion");
    } 
    
  },

  cerrarSesion: async (peticion, respuesta) => {
    peticion.session.cliente = undefined;
    peticion.addFlash('mensaje', 'Sesión finalizada')
    return respuesta.redirect("/");
  },

};

