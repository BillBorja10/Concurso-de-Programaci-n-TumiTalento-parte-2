<?php
    class db{
        private $host = 'localhot';
        private $usuario = 'root';
        private $password = '';
        private $base = 'misempleados';

        //conectar BD
        public function conectar(){
            $conexion_mysql = "mysql:host=$this->host;dbname=$this->base";
            $conexionDB = new PDO($conexion_mysql,$this->usuario,$this->password);
            $conexionDB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            //arregla la codificacion de caracteres 

            $conexionDB -> exec("set names utf8");

            return $conexionDB;
        }
    }












?>