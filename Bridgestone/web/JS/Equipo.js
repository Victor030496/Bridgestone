  function Equipo(idEquipo,contrato,comprobante,marca,modelo,memoria,procesador,departamento,usuario,descripcion,estado) {
    this.Equipo(idEquipo,contrato,comprobante,marca,modelo,memoria,procesador,departamento,usuario,descripcion,estado);
  }
  
  Equipo.prototype={
  	idEquipo: "",
	contrato: "",
        comprobante:"",
        marca:"",
	modelo: "",
	memoria: "",
        procesador: "",
        departamento: "",
        usuario: "",
        descripcion: "",
        estado: "",

	Equipo: function(idEquipo,contrato,comprobante,marca,modelo,memoria,procesador,departamento,usuario,descripcion,estado){
		this.idEquipo=idEquipo;
		this.contrato=contrato;
                this.comprobante = comprobante;
                this.marca = marca;
                this.modelo=modelo;
                this.memoria=memoria;
                this.procesador= procesador;
                this.departamento=departamento;
                this.usuario=usuario;
                this.descripcion=descripcion;
                this.estado=estado;

	},
	toString:function(){
	  return this.idEquipo;
	}
  }
  
  Equipo.from= function(plain){
    equipo = new Equipo(plain.idEquipo, plain.contrato, plain.comprobante , plain.marca , plain.modelo, plain.memoria,plain.procesador,plain.departamento,plain.usuario,plain.descripcion,plain.estado);
	return equipo;
  };
  
    Equipo.to= function(Equipo){
    return {
        _class : 'Equipo',
        idEquipo:Equipo.idEquipo,
        contrato:Equipo.contrato,
        comprobante:Equipo.comprobante,
        marca:Equipo.marca,
        modelo:Equipo.modelo,
        memoria:Equipo.memoria,
        procesador:Equipo.procesador,
        departamento:Equipo.departamento,
        usuario:Equipo.usuario,
        descripcion:Equipo.descripcion,
        estado:Equipo.estado
       
    };	
  };
  




