/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Realizar el registro del usuario en la base de datos
        // Aquí puedes agregar la lógica necesaria para guardar los datos en la base de datos
        // Puedes utilizar una biblioteca de persistencia como JPA o JDBC para interactuar con la base de datos

        // Redirigir al usuario a una página de éxito o mostrar un mensaje de éxito en la misma página
        response.sendRedirect("index.html");
    }
}
