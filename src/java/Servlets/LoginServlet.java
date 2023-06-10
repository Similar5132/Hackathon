/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        // Verificar las credenciales en la base de datos
        boolean credencialesValidas = verificarCredenciales(usuario, password);

        if (credencialesValidas) {
            // Autenticación exitosa
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);

            // Redirigir al usuario a la página de inicio
            response.sendRedirect("index.jsp");
        } else {
            // Autenticación fallida
            response.sendRedirect("login.jsp?error=1");
        }
    }

    private boolean verificarCredenciales(String usuario, String password) {
        // Aquí debes implementar la lógica para verificar las credenciales en la base de datos
        // Puedes utilizar una biblioteca de persistencia como JPA o JDBC para realizar la consulta a la base de datos
        // Retorna true si las credenciales son válidas, false en caso contrario
        // Por simplicidad, en este ejemplo se asume que las credenciales son válidas si el usuario y la contraseña son iguales
        return usuario.equals(password);
    }
}

