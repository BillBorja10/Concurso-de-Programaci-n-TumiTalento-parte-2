<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;


$app = new \Slim\App;


//obtener los empleados 

$app->get('/api/empleados', function(Request $request, Request $response){

    $consulta = 'SELECT * FROM empleados';

    try{
        //instanciar base de datos
        $db = new db();

        //conexion
        $db = $db->conectar();
        $ejecutar = $db->query($consulta);
        $empleados = $ejecutar->fetchAll(PDO::FETH_OBJ);
        $db = null ;

        //Exportar y mostrar 
        echo json_encode($empleados);

    }catch(PDOException $e){
            echo '{"error": {"text": '.$e->getMessage().'}';
    }

});

//obtener todos los empleados pero con los parametros mencionados

$app->get('/api/empleadosord', function(Request $request, Request $response){

    $consulta = 'SELECT name,email,position,salary FROM empleados';

    try{
        //instanciar base de datos
        $db = new db();

        //conexion
        $db = $db->conectar();
        $ejecutar = $db->query($consulta);
        $empleados = $ejecutar->fetchAll(PDO::FETH_OBJ);
        $db = null ;

        //Exportar y mostrar 
        echo json_encode($empleados);

    }catch(PDOException $e){
            echo '{"error": {"text": '.$e->getMessage().'}';
    }

});


//obtener empleados por correo 

$app->get('/api/empleados/{correo}', function(Request $request, Request $response){

    $email = $request->getAttribute('email');

    $consulta = "SELECT * FROM empleados WHERE email='$email'";

    try{
        //instanciar base de datos
        $db = new db();

        //conexion
        $db = $db->conectar();
        $ejecutar = $db->query($consulta);
        $empleados = $ejecutar->fetchAll(PDO::FETH_OBJ);
        $db = null ;

        //Exportar y mostrar 
        echo json_encode($empleados);

    }catch(PDOException $e){
            echo '{"error": {"text": '.$e->getMessage().'}';
    }

});


//agregar un empleado   

$app->post('/api/empleados/agregar', function(Request $request, Request $response){

    $id = $request->getParam('id');
    $isOnline = $request->getParam('isOnline');
    $salary = $request->getParam('salary');
    $age = $request->getParam('age');
    $position = $request->getParam('position');
    $name = $request->getParam('name');
    $gender = $request->getParam('gender');
    $email = $request->getParam('email');
    $phone = $request->getParam('phone');
    $address = $request->getParam('address');
    $skills = $request->getParam('skills');
    


    $consulta = "INSERT INTO empleados (id,isOnline,salary,age,position,name,gender,email,phone,address,skills)VALUES
    (:id, :isOnline, :salary, :age, :position, :name, :gender, :email, :phone, :address, :skills)";

    try{
        //instanciar base de datos
        $db = new db();

        //conexion
        $db = $db->conectar();
        $stmt = $db->prepare($consulta);
        $stmt->bindParam(':isOnline',$isOnline);
        $stmt->bindParam(':salary',$salary);
        $stmt->bindParam(':age',$age);
        $stmt->bindParam(':position',$position);
        $stmt->bindParam(':name',$name);
        $stmt->bindParam(':gender',$gender);
        $stmt->bindParam(':email',$email);
        $stmt->bindParam(':phone',$phone);
        $stmt->bindParam(':address',$address);
        $stmt->bindParam(':skills',$skills);
        $stmt->execute();
        echo '{"notice": {"text": "Cliente agregado"}';


    }catch(PDOException $e){
            echo '{"error": {"text": '.$e->getMessage().'}';
    }

});




?>
