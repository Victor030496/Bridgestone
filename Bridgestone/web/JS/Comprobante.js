/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


  function Comprobante(numeroDeComprobante) {
    this.Comprobante(numeroDeComprobante);
  }
  
  Comprobante.prototype={
        numeroDeComprobante:0,
       
	Comprobante: function(numeroDeComprobante){
                this.numeroDeComprobante= numeroDeComprobante;
	},
	toString:function(){
	  return this.numeroDeComprobante;
	}
  }
  
  Comprobante.from= function(plain){
    comprobant = new Comprobante(plain.numeroDeComprobante);
	return comprobant;
  };
  
    Comprobante.to= function(comprobante){
    return {
        _class : 'Comprobante',
        numeroDeComprobante:comprobante.numeroDeComprobante,
 
    };	
  };