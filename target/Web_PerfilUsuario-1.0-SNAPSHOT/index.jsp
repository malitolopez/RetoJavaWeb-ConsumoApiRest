<%-- 
    Document   : index
    Created on : 14/06/2022, 07:51:37 AM
    Author     : mallo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
        
        </br>
        </br>
        <div class="container">
            <h1>Registro</h1>
            <form class="form-group" action="UsuarioServlet" method="post">
                <label for="lbl_Nombres"><b>NOMBRES</b></label>   
                <input  type="text" class="form-control" name="nombres" id="txt_Nombres" placeholder="..." required>
                <label for="lbl_Apellidos"><b>APELLIDOS</b></label>   
                <input  type="text" class="form-control" name="apellidos" id="txt_Apellidos" placeholder="..." required>
                <label for="lbl_Email"><b>EMAIL</b></label>   
                <input  type="email" class="form-control" name="email" id="txt_email" placeholder="..." required>
                <label for="lbl_Telefono"><b>TELEFONO</b></label>   
                <input  type="number" class="form-control" name="telefono" id="txt_Telefono" placeholder="..." required>
                <label for="lbl_Ciudad"><b>CIUDAD</b></label>   
                <input  type="text" class="form-control" name="ciudad" id="txt_Ciudad" placeholder="..." required>
                <label for="lbl_Pais"><b>PAIS</b></label>   
                <input  type="text" class="form-control" name="pais" id="txt_Pais" placeholder="..." required>
                </br>
                <input type="submit" value="Crear Perfil" class="btn btn-danger">
                
                </form>
                        
                </br>

                    </div>
                    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
                    </body>
                  
                    </html>
