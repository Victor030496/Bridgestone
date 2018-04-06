/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

  function Baja(id,comentario,id_equi) {
    this.Baja(id,comentario,id_equi);
  }
  
  Baja.prototype={
        id:0,
        comentario:"",
        id_equi:0,
	
	Baja: function(id,comentario,id_equi){
                this.id= id;
                this.comentario = comentario;
                this.id_equi= id_equi;

	},
	toString:function(){
	  return this.id +this.comentario;
	}
  }
  
  Baja.from= function(plain){
    devo = new Baja(plain.id,plain.comentario,plain.id_equi);
	return devo;
  };
  
  
    Baja.to= function(baja){
    return {
        _class: 'Baja',
        id:baja.id,
        comentario: baja.comentario,
        id_equi: baja.id_equi,
    };	
  };
  /*
  Baja.to2= function(baja){
    return {
        _class: 'Baja',
        id:baja.id,
        comentario: baja.comentario,
        id_equi: baja.id_equi,
    };	
  };*/

