/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes tell Sails what to do each time it receives a request.
 *
 * For more information on configuring custom routes, check out:
 * https://sailsjs.com/anatomy/config/routes-js
 */

module.exports.routes = {


  //  ╦ ╦╔═╗╔╗ ╔═╗╔═╗╔═╗╔═╗╔═╗
  //  ║║║║╣ ╠╩╗╠═╝╠═╣║ ╦║╣ ╚═╗
  //  ╚╩╝╚═╝╚═╝╩  ╩ ╩╚═╝╚═╝╚═╝

  /***************************************************************************
  *                                                                          *
  * Make the view located at `views/homepage.ejs` your home page.            *
  *                                                                          *
  * (Alternatively, remove this and add an `index.html` file in your         *
  * `assets` directory)                                                      *
  *                                                                          *
  ***************************************************************************/

 'GET /': 'PrincipalController.inicio',

  '/acerca-de': {
    view: 'pages/acerca_de'
  },

  'GET /registro': 'SesionController.registro',  

  'POST /procesar-registro': 'SesionController.procesarRegistro',
  
  'POST /procesar-ficha': 'SesionController.procesarFicha',
  
  'POST /procesar-identificacion': 'SesionController.procesarIdentificacion',

  'POST /procesar-herremientas': 'SesionController.procesarHerremientas',

   
  'GET /inicio-sesion': 'SesionController.inicioSesion',

  'GET /inicio-sesion2': 'SesionController.inicioSesion2',
   
  'GET /identificacion': 'SesionController.identificacion', 

  'GET /cerrar-sesion': 'SesionController.cerrarSesion',

  'POST /procesar-inicio-sesion': 'SesionController.procesarInicioSesion',

  'GET /agregar-carro-compra/:fotoId': 'CompraController.agregarCarroCompra',

  'GET /carro-de-compra': 'CompraController.carroCompra',

  'GET /eliminar-carro-compra/:fotoId': 'CompraController.eliminarCarroCompra',



  'GET /comprar': 'CompraController.comprar',

  'GET /identificacion/:ficha_id': 'CompraController.identificacion',
  
  'GET /identi2': 'CompraController.identificacion2',

  'GET /fichas': 'CompraController.fichas',

  'GET /consulta-fichas': 'CompraController.consultaFichas',
  

  'GET/identificacion': 'CompraController.identificacion',

  'GET /fichas2': 'CompraController.fichas2',

  'GET /mis-ordenes2': 'CompraController.misOrdenes2',

  'GET /mis-ordenes/:ordenId': 'CompraController.ordenDeCompra',  

  'GET /top-vendidas': 'PrincipalController.topVendidas',

  'GET /agregar-lista-deseo/:fotoId': 'CompraController.agregarListaDeseo',

  'GET /lista-deseo': 'CompraController.listaDeseo',

  'GET /eliminar-lista-deseo/:fotoId': 'CompraController.eliminarListaDeseo',

  'GET /admin/inicio-sesion': 'AdminController.inicioSesion',

  'POST /admin/procesar-inicio-sesion': 'AdminController.procesarInicioSesion',

  'GET /admin/principal': 'AdminController.principal',

  'GET /admin/cliente': 'AdminController.cliente',

  'GET /admin/administradores': 'AdminController.administradores',

  'GET /admin/cerrar-sesion': 'AdminController.cerrarSesion',

  'GET /admin/agregar-foto': 'AdminController.agregarFoto',

  'POST /admin/procesar-agregar-foto': 'AdminController.procesarAgregarFoto',

  'GET /admin/desactivar-foto/:fotoId': 'AdminController.desactivarFoto',

  'GET /admin/activar-foto/:fotoId': 'AdminController.activarFoto',

  'GET /admin/desactivar-cliente/:clienteId': 'AdminController.desactivarCliente',

  'GET /admin/activar-cliente/:clienteId': 'AdminController.activarCliente',

  'GET /admin/desactivar-admin/:adminId': 'AdminController.desactivarAdmin',

  'GET /admin/activar-admin/:adminId': 'AdminController.activarAdmin',  
  
  'GET /admin/mis-ordenes/:clienteId': 'AdminController.misOrdenescliente',

  'GET /admin/mis-ordenes2/:cliente2/:ordenId': 'AdminController.ordenDeCompra2',

  'GET /admin/Dashboard': 'AdminController.Dashboard',

  // 'GET /mis-ordenes': 'CompraController.misOrdenes', el boton

  /***************************************************************************
  *                                                                          *
  * More custom routes here...                                               *
  * (See https://sailsjs.com/config/routes for examples.)                    *
  *                                                                          *
  * If a request to a URL doesn't match any of the routes in this file, it   *
  * is matched against "shadow routes" (e.g. blueprint routes).  If it does  *
  * not match any of those, it is matched against static assets.             *
  *                                                                          *
  ***************************************************************************/


  //  ╔═╗╔═╗╦  ╔═╗╔╗╔╔╦╗╔═╗╔═╗╦╔╗╔╔╦╗╔═╗
  //  ╠═╣╠═╝║  ║╣ ║║║ ║║╠═╝║ ║║║║║ ║ ╚═╗
  //  ╩ ╩╩  ╩  ╚═╝╝╚╝═╩╝╩  ╚═╝╩╝╚╝ ╩ ╚═╝



  //  ╦ ╦╔═╗╔╗ ╦ ╦╔═╗╔═╗╦╔═╔═╗
  //  ║║║║╣ ╠╩╗╠═╣║ ║║ ║╠╩╗╚═╗
  //  ╚╩╝╚═╝╚═╝╩ ╩╚═╝╚═╝╩ ╩╚═╝


  //  ╔╦╗╦╔═╗╔═╗
  //  ║║║║╚═╗║
  //  ╩ ╩╩╚═╝╚═╝


};
