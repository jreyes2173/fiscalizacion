/**
 * Identificacion.js
 *
 * @description :: A model definition.  Represents a database table/collection/etc.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {

    attributes: {
  
      //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
      //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
      //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝
      
         
      mamelucos: { type: 'number' },
  
      chalecos_reflectores: { type: 'number' },
  
      gorras : { type: 'number' },

      cascos: { type: 'number' },

      botas_de_gomas: { type: 'number' },

      zapatos: { type: 'number' },

      tenis: { type: 'number' },

      sandalias: { type: 'number' },

      lentes: { type: 'number' },

      guantes: { type: 'number' },
      
      botas_de_material: { type: 'number' },
 
// herramientas de trabajo

      machetes: { type: 'number' },
  
      machetes_propios: { type: 'number' },
  
      limas : { type: 'number' },

      picos: { type: 'number' },

      palas: { type: 'number' },

      escobas: { type: 'number' },

      rastrillos: { type: 'number' },

      trimmer: { type: 'number' },

      motosierras: { type: 'number' },

      hilos_trimmers: { type: 'number' },
      
      combustible: { type: 'number' },

      carretillas: { type: 'number' },

      carritos_contadores: { type: 'number' },

   // Herramientas de seguridad
   cono: { type: 'number'},
   
   drones: { type: 'number'},

   vallas_t_libro: { type: 'number'},

   cintas: { type: 'number'},   
   

   // manejo de desechos

   recogido_por: { type: 'string'}, 

   
      condicion: { type: 'string' },

      origen: { type: 'string' },
  
      observacion: { type: 'string' },         

      ficha_id: { type: 'string' },

      status: { type: 'boolean'} 

  
       
  
  
  
      //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
      //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
      //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝
  
  
      //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
      //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
      //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝
  
    },
  
  };
  
  