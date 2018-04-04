/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



  function Devolucion(id,id_Prestamo,comentario) {
    this.Devolucion(id,id_Prestamo,comentario);
  }
  
  Devolucion.prototype={
        id:0,
        id_Prestamo:"",
        comentario:"",
	
	Devolucion: function(id,id_Prestamo,comentario){
                this.id= id;
                this.id_Prestamo = id_Prestamo;
                this.comentario = comentario;

	},
	toString:function(){
	  return this.id + this.id_Prestamo +this.comentario;
	}
  }
  
  Devolucion.from= function(plain){
    devo = new Devolucion(plain.id,plain.id_Prestamo,plain.comentario);
	return devo;
  };
  
    Devolucion.to= function(contrato){
    return {
        _class : 'Devolucion',
        id:contrato.id,
        id_Prestamo:contrato.id_Prestamo,
        comentario: contrato.comentario
    };	
  };
