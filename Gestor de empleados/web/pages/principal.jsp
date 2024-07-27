<%-- 
    Document   : principal
    Created on : 25/07/2024, 1:39:48 p. m.
    Author     : delga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inventario</title>
    <link rel="stylesheet" href="normalize.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
    <!-- Nav lateral -->
    <section class="full-width navLateral">
        <div class="full-width navLateral-body">
            <figure class="full-width navLateral-body-tittle-menu">
                <div>
                    <img src="avatar-male.png" alt="Avatar">
                </div>
                <figcaption class="navLateral-body-cr hide-on-tablet">
                    Nombre de usuario<br><small>Administrador</small>
                </figcaption>
            </figure>
            
            <ul class="full-width list-unstyle menu-principal">
                <li class="full-width">
                    <a href="home.jsp" class="full-width menu-link">
                        <div class="navLateral-body-cl">
                            <i class="material-icons">home</i>
                        </div>
                        <div class="navLateral-body-cr hide-on-tablet">
                            Inicio
                        </div>
                    </a>
                </li>
                
                <li class="full-width">
                    <a href="product.html" class="full-width menu-link">
                        <div class="navLateral-body-cl">
                            <i class="material-icons">inventory</i>
                        </div>
                        <div class="navLateral-body-cr hide-on-tablet">
                            Inventario
                        </div>
                    </a>
                </li>
                <li class="full-width">
                    <a href="solicitar.html" class="full-width menu-link">
                        <div class="navLateral-body-cl">
                            <i class="material-icons">send</i>
                        </div>
                        <div class="navLateral-body-cr hide-on-tablet">
                            Solicitar
                        </div>
                    </a>
                </li>
                <li class="full-width">
                    <a href="solicitudes.jsp" class="full-width menu-link">
                        <div class="navLateral-body-cl">
                            <i class="material-icons">attach_money</i>
                        </div>
                        <div class="navLateral-body-cr hide-on-tablet">
                            Entradas
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </section>

    <!-- pageContent -->
    <section class="full-width pageContent">
        <!-- navBar -->
        <div class="full-width navBar">
            <div class="full-width navBar-options">
                <i class="material-icons btn-menu">menu</i>    
                <div class="mdl-tooltip" for="btn-menu">Menú</div>
                <nav class="navBar-options-list">
                    <ul class="list-unstyle">
                        <li class="btn-Notification" id="notifications">
                            <i class="material-icons">notifications</i>
                            <div class="mdl-tooltip" for="notifications">Notificaciones</div>
                        </li>
                        <li class="btn-exit-system">
                            <i class="material-icons">power_settings_new</i>
                            <div class="mdl-tooltip" for="btn-exit-system">Cerrar sesión</div>
                        </li>
                        <li class="text-condensedLight noLink"><small>Nombre de usuario</small></li>
                        <li class="noLink">
                            <figure>
                                <img src="avatar-male.png" alt="Avatar" class="img-responsive">
                            </figure>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        
        <!-- Contenedor para el contenido dinámico -->
        <div id="contentContainer" class="content-container">
            <!-- Contenido inicial que se mostrará solo en la página de inicio -->
        </div>
    </section>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Selecciona todos los enlaces del menú
            var menuLinks = document.querySelectorAll('.menu-link');
            
            menuLinks.forEach(function(link) {
                link.addEventListener('click', function(event) {
                    event.preventDefault(); // Previene la acción por defecto del enlace
                    
                    // Obtiene la URL del archivo a cargar
                    var url = this.getAttribute('href');
                    
                    // Oculta el contenido inicial
                    var initialContent = document.getElementById('initialContent');
                    if (initialContent) {
                        initialContent.style.display = 'none';
                    }

                    // Realiza una solicitud para obtener el contenido del archivo
                    fetch(url)
                        .then(response => response.text())
                        .then(data => {
                            // Inserta el contenido del archivo en el contenedor
                            document.getElementById('contentContainer').innerHTML = data;

                            // Ajusta el tamaño del contenedor dinámico
                            var contentContainer = document.getElementById('contentContainer');
                            contentContainer.style.minHeight = 'calc(100vh - 60px)'; // Ajusta la altura para que llene el espacio disponible
                        })
                        .catch(error => console.error('Error al cargar el contenido:', error));
                });
            });
        });
    </script>
</body>
</html>
