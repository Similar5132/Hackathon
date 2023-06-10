<%-- 
    Document   : registro
    Created on : 06-05-2023, 10:03:36 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Voluntariado</title>
    <style>
        body {
            background-color: #f3f3f3;
            font-family: Arial, sans-serif;
        }
        
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #777;
        }
        
        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="email"],
        .form-group input[type="tel"],
        .form-group select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        
        .form-group input[type="submit"] {
            width: 100%;
            padding: 8px;
            background-color: #4CAF50;
            border: none;
            color: #fff;
            cursor: pointer;
            border-radius: 4px;
        }
        
        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }
        
        .alert {
            margin-top: 20px;
            padding: 10px;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
            border-radius: 4px;
            display: none;
        }
    </style>
    <script>
        function mostrarMensajeExito() {
            var alertElement = document.getElementById("alert-exito");
            alertElement.style.display = "block";
            
            setTimeout(function() {
                alertElement.style.display = "none";
                location.href = "index.html"; // Redirigir al inicio de sesión después de mostrar el mensaje
            }, 3000); // Mostrar el mensaje durante 3 segundos antes de redirigir
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Registro de Voluntariado</h2>
        
        <form action="RegistroServlet" method="POST" onsubmit="mostrarMensajeExito();">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            
            <div class="form-group">
                <label for="edad">Edad:</label>
                <input type="number" id="edad" name="edad" required>
            </div>
            
            <div class="form-group">
                <label for="usuario">Usuario:</label>
                <input type="text" id="usuario" name="usuario" required>
            </div>
            
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <div class="form-group">
                <label for="fecha-nacimiento">Fecha de Nacimiento:</label>
                <input type="date" id="fecha-nacimiento" name="fecha-nacimiento" required>
            </div>
            
            <div class="form-group">
                <label for="formacion-academica">Formación Académica:</label>
                <input type="text" id="formacion-academica" name="formacion-academica" required>
            </div>
            
            <div class="form-group">
                <label for="telefono">Número de Teléfono:</label>
                <input type="tel" id="telefono" name="telefono" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="direccion">Dirección:</label>
                <input type="text" id="direccion" name="direccion" required>
            </div>
            
     
            
            <div class="form-group">
                <label for="departamento">Departamento:</label>
                <select id="departamento" name="departamento" required>
    <option value="">Selecciona un departamento</option>
    <option value="Ahuachapán">Ahuachapán</option>
    <option value="Cabañas">Cabañas</option>
    <option value="Chalatenango">Chalatenango</option>
    <option value="Cuscatlán">Cuscatlán</option>
    <option value="La Libertad">La Libertad</option>
    <option value="La Paz">La Paz</option>
    <option value="La Unión">La Unión</option>
    <option value="Morazán">Morazán</option>
    <option value="San Miguel">San Miguel</option>
    <option value="San Salvador">San Salvador</option>
    <option value="San Vicente">San Vicente</option>
    <option value="Santa Ana">Santa Ana</option>
    <option value="Sonsonate">Sonsonate</option>
    <option value="Usulután">Usulután</option>
</select>

            </div>
            
            <div class="form-group">
                <label for="municipio">Municipio:</label>
                <input type="text" id="municipio" name="municipio" required>
            </div>
            
            <div class="form-group">
                <input type="submit" value="Registrarse">
            </div>
        </form>
        
        <div id="alert-exito" class="alert">
            Registro exitoso. Serás redirigido al inicio de sesión.
        </div>
    </div>
</body>
</html>
