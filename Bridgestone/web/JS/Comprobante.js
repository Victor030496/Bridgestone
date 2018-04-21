/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


  function Comprobante(numeroDeComprobante,garantia) {
    this.Comprobante(numeroDeComprobante,garantia);
  }
  
  Comprobante.prototype={
        numeroDeComprobante:0,
        garantia:"",
       
	Comprobante: function(numeroDeComprobante,garantia){
                this.numeroDeComprobante= numeroDeComprobante;
                this.garantia= garantia;
	},
	toString:function(){
	  return this.garantia+this.numeroDeComprobante;
	}
  }
  
  Comprobante.from= function(plain){
    comprobant = new Comprobante(plain.numeroDeComprobante,plain.garantia);
	return comprobant;
  };
  
    Comprobante.to= function(comprobante){
    return {
        _class : 'Comprobante',
        numeroDeComprobante:comprobante.numeroDeComprobante,
        garantia:comprobante.garantia,
 
    };	
  };