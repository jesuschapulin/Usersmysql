$(document).ready(function () {
    var urlParams = new URLSearchParams(window.location.search);
    var has_accion = urlParams.has('accion'); // true (boolean)
    var accion = urlParams.get('accion'); //success
    var page = urlParams.get('page'); //success
    if(accion=="admon" || accion=="registro" || accion=="login"){
        $("#admonOption").attr("style", "background-color: lightgrey");
    }else if(accion=="consulta"){
        $("#consultaOption").attr("style", "background-color: lightgrey");
    }
    $( "#btnPrepareMod" ).on( "click", function() {
        var regex = /^[a-zA-Z]+$/;
        var regexNum=/^[A-Za-z\u00C0-\u017F]+$/;
        var nombre=$("#boxNombre").val();
        var apaterno=$("#boxApaterno").val();
        var amaterno=$("#boxAmaterno").val();
        var correo=$("#boxCorreo").val();
        var telefono=$("#boxTelefono").val();
        var usuario=$("#boxUsuario").val();
        var password=$("#boxPassword").val();
        var mensaje="";
        var errNombre=false;
        var errApaterno=false;
        var errAmaterno=false;
        var errCorreo=false;
        var errTelefono=false;
        var errUsuario=false;
        var errPassword=false;
        
        var isNumeric=$.isNumeric(telefono);
        var isNumericNombre = regexNum.test(nombre);
        var isNumericApa=regexNum.test(apaterno);
        var isNumericAma=regexNum.test(amaterno);
       
        
        if(telefono.length<10 || telefono.length>10){
            errTelefono=true;
            mensaje="El tamaño de telefono no contiene en total 10 digitos";
            console.log("el tamaño de telefono no coincide");
            $("label.boxTelefono").attr("style","color:red");
        }
        if(isNumeric===false){
            errTelefono=true;
            mensaje+="El telefono solo debe contener numeros\n";
            console.log("no tienen solo numeros");
            $("label.boxTelefono").attr("style","color:red");
        };
        
        
        if(nombre==''){
            errNombre=true;
            mensaje+="El nombre no debe estar vacio\n";
            $("label.boxNombre").attr("style","color:red");
        };
        if(isNumericNombre==false){
            errNombre=true;
            mensaje+="El nombre no debe contener numeros\n";
            $("label.boxNombre").attr("style","color:red");
        };
        
        
        if(apaterno==''){
            errApaterno=true;
            mensaje+="El Apellido paterno no debe estar vacio\n";
            $("label.boxApaterno").attr("style","color:red");
        }
        if(isNumericApa===false){
            errApaterno=true;
            mensaje+="El Apellido paterno no debe contener numeros\n";
            $("label.boxApaterno").attr("style","color:red");
        }
        
        
        if(amaterno==''){
            errAmaterno=true;
            mensaje+="El Apellido materno no debe estar vacio\n";
            $("label.boxAmaterno").attr("style","color:red");
        }
        if(isNumericAma===false){
            errAmaterno=true;
            mensaje+="El Apellido materno no debe contener numeros\n";
            $("label.boxAmaterno").attr("style","color:red");
        }
        
        
        if(usuario==''){
            errUsuario=true;
            mensaje+="El Usuario no debe estar vacio\n";
            $("label.boxUsuario").attr("style","color:red");
        }
        if(correo==''){
            errCorreo=true;
            mensaje+="El Correo no debe estar vacio\n";
            $("label.boxCorreo").attr("style","color:red");
        }
        if(password==''){
            errPassword=true;
            mensaje+="La contraseña no debe estar vacia\n";
            $("label.boxPassword").attr("style","color:red");
        }
        console.log("telefono::::: "+telefono+" "+isNumeric+ " :::: nombre::::: "+nombre+" "+isNumericNombre
                + " :::: apaterno::::: "+apaterno+" "+isNumericApa + " :::: amaterno::::: "+amaterno+" "+isNumericAma);
        if(errNombre==true || errApaterno==true ||   errAmaterno==true || errTelefono==true || errPassword==true
                ){
            Swal.fire({
                title: 'Error!',
                text: mensaje,
                icon: 'error',
                confirmButtonText: 'Cool'
              })
        }else{
            Swal.fire({
                title: "Esta seguro de guarar los cambios?",
                text: "se pueden volver a modificar!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Si, actualizar!"
              }).then(function(result){
                if (result.isConfirmed) {
                  Swal.fire({
                    title: "Datos actualizados",
                    text: "Your file has been deleted.",
                    icon: "success"
                  });
                  $( "#btnModifica" ).click();
                }
                });
            
        }
        
    } );
    
    $( "#btnPrepareReg" ).on( "click", function() {
        var regex = /^[a-zA-Z]+$/;
        var regexNum=/^[A-Za-z\u00C0-\u017F]+$/;
        var nombre=$("#boxNombre").val();
        var apaterno=$("#boxApaterno").val();
        var amaterno=$("#boxAmaterno").val();
        var correo=$("#boxCorreo").val();
        var telefono=$("#boxTelefono").val();
        var usuario=$("#boxUsuario").val();
        var password=$("#boxPassword").val();
        var mensaje="";
        var errNombre=false;
        var errApaterno=false;
        var errAmaterno=false;
        var errCorreo=false;
        var errTelefono=false;
        var errUsuario=false;
        var errPassword=false;
        
        var isNumeric=$.isNumeric(telefono);
        var isNumericNombre = regexNum.test(nombre);
        var isNumericApa=regexNum.test(apaterno);
        var isNumericAma=regexNum.test(amaterno);
       
        
        if(telefono.length<10 || telefono.length>10){
            errTelefono=true;
            mensaje="El tamaño de telefono no contiene en total 10 digitos";
            console.log("el tamaño de telefono no coincide");
            $("label.boxTelefono").attr("style","color:red");
        }
        if(isNumeric===false){
            errTelefono=true;
            mensaje+="El telefono solo debe contener numeros\n";
            console.log("no tienen solo numeros");
            $("label.boxTelefono").attr("style","color:red");
        };
        
        
        if(nombre==''){
            errNombre=true;
            mensaje+="El nombre no debe estar vacio\n";
            $("label.boxNombre").attr("style","color:red");
        };
        if(isNumericNombre==false){
            errNombre=true;
            mensaje+="El nombre no debe contener numeros\n";
            $("label.boxNombre").attr("style","color:red");
        };
        
        
        if(apaterno==''){
            errApaterno=true;
            mensaje+="El Apellido paterno no debe estar vacio\n";
            $("label.boxApaterno").attr("style","color:red");
        }
        if(isNumericApa===false){
            errApaterno=true;
            mensaje+="El Apellido paterno no debe contener numeros\n";
            $("label.boxApaterno").attr("style","color:red");
        }
        
        
        if(amaterno==''){
            errAmaterno=true;
            mensaje+="El Apellido materno no debe estar vacio\n";
            $("label.boxAmaterno").attr("style","color:red");
        }
        if(isNumericAma===false){
            errAmaterno=true;
            mensaje+="El Apellido materno no debe contener numeros\n";
            $("label.boxAmaterno").attr("style","color:red");
        }
        
        
        if(usuario==''){
            errUsuario=true;
            mensaje+="El Usuario no debe estar vacio\n";
            $("label.boxUsuario").attr("style","color:red");
        }
        if(correo==''){
            errCorreo=true;
            mensaje+="El Correo no debe estar vacio\n";
            $("label.boxCorreo").attr("style","color:red");
        }
        if(password==''){
            errPassword=true;
            mensaje+="La contraseña no debe estar vacia\n";
            $("label.boxPassword").attr("style","color:red");
        }
        console.log("telefono::::: "+telefono+" "+isNumeric+ " :::: nombre::::: "+nombre+" "+isNumericNombre
                + " :::: apaterno::::: "+apaterno+" "+isNumericApa + " :::: amaterno::::: "+amaterno+" "+isNumericAma);
        if(errNombre==true || errApaterno==true ||   errAmaterno==true || errTelefono==true || errPassword==true
                ){
            Swal.fire({
                title: 'Error!',
                text: mensaje,
                icon: 'error',
                confirmButtonText: 'Cool'
              })
        }else{
            Swal.fire({
                title: "Esta seguro de guarar los datos ?",
                text: "se pueden modificar mas adelante!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Si, actualizar!"
              }).then(function(result){
                if (result.isConfirmed) {
                  Swal.fire({
                    title: "Datos registrados",
                    text: "ya se pueden consultar los resultados.",
                    icon: "success"
                  });
                  $( "#btnRegistra" ).click();
                }
                });
            
        }
        
    } );
    
    $( "#btnPrepareLog" ).on( "click", function() {
        var usuario=$("#boxUsuario").val();
        var password=$("#boxPassword").val();
        var mensaje="";
        var errUsuario=false;
        var errPassword=false;
        
        if(usuario==''){
            errUsuario=true;
            mensaje+="El Usuario no debe estar vacio\n";
            $("label.boxUsuario").attr("style","color:red");
        }
        if(password==''){
            errPassword=true;
            mensaje+="La contraseña no debe estar vacia\n";
            $("label.boxPassword").attr("style","color:red");
        }
        if(errUsuario==true || errPassword==true){
            Swal.fire({
                title: 'Error!',
                text: mensaje,
                icon: 'error',
                confirmButtonText: 'Continuar'
              })
        }else{
            Swal.fire({
                title: "Esta seguro de que los datos son correctos ?",
                text: "solo se permiten 5 intentos antes de bloquear la cuenta!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Si, continuar!"
              }).then(function(result){
                if (result.isConfirmed) {
                  Swal.fire({
                    title: "Datos correctos",
                    text: "se redigira al sistema.",
                    icon: "success"
                  });
                  $( "#btnLoguear" ).click();
                }
                });
            
        }
        
    } );
    
    if(accion=="loguear"){
        var usuario=$("#logUser").val();
        var estadoActual=$("#estadoActual").val();
        if(estadoActual==2){
            Swal.fire({
                title: "Error de acceso, el usuario \""+usuario+"\" esta bloqueado \n\
                        favor de comunicarse con su superior",
                icon: "question",
                iconHtml: "x",
                confirmButtonText: "OK",
                cancelButtonText: "",
                showCancelButton: false,
                showCloseButton: true
              });
        }
    }
    ///prueba de jelastic
	$("#btn-jelastic").click(function(event)
	{
            console.log("testing service on jelastic:::::::::");
            var dom="https://node150639-env-9117163.fr-1.paas.massivegrid.net";
            var local="http://127.0.0.1:8013/demo";
            $.get(dom+"/service/hello",function(res){
              console.log("respuesta del test:::::: "+res);
            //res=JSON.parse(res);
        });

	});
    console.log("cargando jquery::::::: "+accion);
    console.log("cargando pagina::::::: "+page);
});