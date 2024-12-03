<%-- 
    Document   : Detalle
    Created on : 14 nov. 2024, 03:06:37
    Author     : Crhist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Detalles Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
        
    <style>
        .container.w-75 {
        margin-top: 5%; 
        }

        .product-gallery {
            display: flex;
            align-items: center;
            gap: 20px; 
        }

        .thumbnails {
            display: flex;
            flex-direction: column;
            gap: 10px; 
            overflow-y: auto; 
            max-height: 300px; 
        }

        .thumbnails img {
            max-width: 100px; 
            max-height: 100px;
            cursor: pointer;
            border: 1px solid transparent;
            transition: border 0.3s;
        }

        .thumbnails img:hover {
            border: 2px solid #ddd; 
        }

        .main-image {
            display: flex;
            width: 100%; 
            height: 100%;
            justify-content: center; 
        }

        .main-image img {
            display: flex;
            object-fit: contain;
            max-height: 100%; 
            max-width: 100%; 
        }

        .circle-btn {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0;
        }

        .table-container {
            width: 100%;
            background-color: #f9f3f8;
            padding: 5px;
            border-radius: 5px;
            position: relative;

        }

        /* Imagen del oso */
        .img-oso {
            max-width: 43%; 
            position: absolute;
            top: -10%;
            left: -32%; 
            transform: rotate(-10deg); 
            z-index: 2;
            transition: all 0.3s ease; 
        }

        /* Media query para pantallas más pequeñas */
        @media (max-width: 768px) {
            .img-oso {
                max-width: 25%;
                left: -5%; 
                top: -5px; 
            }
        }

        /* Media query para pantallas aún más pequeñas (como móviles) */
        @media (max-width: 480px) {
            .img-oso {
                max-width: 15%; 
                left: 0; 
                top: 0; 
                transform: rotate(0deg); 
            }
        }


        /* Estilos para las celdas */
        .table th, .table td {
            padding: 10px;
            color: #866383;
            text-align: left;
        }

        /* Estilo de los datos de las filas */
        .table tbody tr th {
            color: #866383;
            font-weight: bold;
        }

        .favorite-btn i.filled {
            color: red;
        }

        .article-title {
        color:  rgb(78, 14, 14); /* Color guinda */
        font-size: 1.7rem; /* Tamaño de letra más grande */
        font-family: 'Arial', sans-serif; /* Cambia a una fuente más bonita, puedes elegir otra si lo prefieres */
        margin-bottom: 1rem; /* Espacio entre el texto y los contenedores de las imágenes */
        text-align: left; /* Centra el texto (opcional) */
        font-weight: bold;
        }

        .price-box {
        background-color: #e6c6e2; /* Fondo lila */
        color: rgb(78, 14, 14); /* Color del texto */
        font-size: 1rem; /* Tamaño de letra */
        font-weight: bold;
        border-radius: 15px; /* Bordes muy redondeados */
        border-color: #866383;
        padding: 0.8rem; /* Espaciado interno */
        text-align: center; /* Centra el texto dentro del recuadro */
        display: inline-block; /* Permite que el div se ajuste al contenido */
        }


    </style>        
</head>

<body>
    <header>
        <div class="container-fluid primary-color py-3">
            <div class="row align-items-center">
                <!-- Espacio vacío a la izquierda -->
                <div class="col-3"></div>

                <!-- Título K-GLOW centrado -->
                <div class="col-6 text-center">
                    <img src="ImagenesInterface/K-GLOW_big (1).png" alt="Logo K-GLOW" class="img-fluid"
                        style="max-width: 230px;">
                </div>

                <!-- Botones de usuario alineados a la derecha -->
                <div class="col-3 d-flex justify-content-end">
                    <div class="dropdown me-3">
                        <button class="btn btn-dark rounded-0" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="bi bi-person-circle" style="font-size: 2rem; color:white;"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="perfil.php">Perfil</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="salirUser.php">Favoritos</a></li>
                            <li><a class="dropdown-item" href="salirUser.php">Cerrar Sesión</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <button class="btn btn-dark rounded-0" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="bi bi-person-circle" style="font-size: 2rem; color:white;"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="login.html">Iniciar Sesion</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <nav class="primary-color navbar navbar-expand-xl">
            <div class="container-fluid">
                <div class="offcanvas offcanvas-xl offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menú</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav ms-5 justify-content-center flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Principal.jsp">TODO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Ojos.jsp">OJOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Rostro.jsp">ROSTRO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Labios.jsp">LABIOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Servicios.jsp">SERVICIOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Nosotros.jsp">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Contacto.jsp">CONTACTO</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
    </header>

    <div class="container w-75">
        <div class="row align-items-stretch shadow rounded">
            <div class="product-gallery col">
                <div class="thumbnails">
                    <img src="ImagenesInterface/productos/labios/gloss_MarcaPeriPera.png" 
                         onclick="showImage('ImagenesInterface/productos/labios/gloss_MarcaPeriPera.png')" alt="Thumbnail 1">
                    <img src="ImagenesInterface/productos/Labios/gloss_MarcaRom&nd.png" 
                         onclick="showImage('ImagenesInterface/productos/Labios/gloss_MarcaRom&nd.png')" alt="Thumbnail 2">
                    <img src="ImagenesInterface/productos/labios/hidratante_MarcaInnisFree.png" 
                         onclick="showImage('ImagenesInterface/productos/labios/hidratante_MarcaInnisFree.png')" alt="Thumbnail 3">
                </div>
                <div class="main-image">
                    <img id="displayedImage" src="ImagenesInterface/productos/labios/gloss_MarcaPeriPera.png" alt="Main Product Image">
                </div>
            </div>
            <div class="col rounded-end p-5 Help">
                <h1 style="font-size: 2rem; font-weight: bold; color: rgb(78, 14, 14);">GLOSS PARA LABIOS</h1> <!-- Nombre de ejemplo -->
                <hr>
                <p >Gloss hidratante ligero de larga duración</p><!-- Descripción de ejemplo -->
                <div class="d-flex align-items-center">
                    <div class="price-box">s/50</div> <!-- Precio de ejemplo -->
                    <img src="ImagenesInterface/MetodosPago.png" alt="Métodos de pago" style="max-height: 70px; margin-left: 10px;"> <!-- Imagen de métodos de pago -->
                </div>
                <div class="my-3">
                    <p>Colores:</p>
                    <!-- Los colores deben ser dinamicos, dependiendo de los colores colocados en las variables de producto-->
                    <div class="d-flex gap-2">
                        <button type="button" class="btn btn-outline-secondary circle-btn">01</button>
                        <button type="button" class="btn btn-outline-secondary circle-btn">02</button>
                        <button type="button" class="btn btn-outline-secondary circle-btn">03</button>
                        <button type="button" class="btn btn-outline-secondary circle-btn">04</button>
                        <button type="button" class="btn btn-outline-secondary circle-btn">05</button>
                        <button type="button" class="btn btn-outline-secondary circle-btn">06</button>
                    </div>
                </div>
                <div class="my-3">
                    <p id="stock-general-info">Stock:</p>
                </div>
                <div class="my-3 d-flex align-items-center">
                    <!--Contenedor Cantidad a Añadir-->
                    <label for="quantity" class="me-2">Cantidad:</label>
                    <input type="number" id="quantity" class="form-control w-25 me-3" value="1" min="1">
                    <!--Boton de añadir a Carrito-->
                    <button type="button" class="K-btn me-3">
                        Añadir al carrito
                    </button>
                    <!--Boton de añadir a Favoritos-->
                    <button type="button" class="btn favorite-btn">
                        <i class="bi bi-heart"></i>
                    </button>
                </div>
                <script>
                    document.querySelector('.favorite-btn').addEventListener('click', function () {
                        const icon = this.querySelector('i');
                        icon.classList.toggle('filled');
                        icon.classList.toggle('bi-heart-fill');
                        icon.classList.toggle('bi-heart');
                    });
                </script>
            </div>
        </div>
    </div>
    

    <!-- Especificaciones del Producto -->
    <div class="container mt-5" style="max-width: 2000px; overflow: hidden;">
        <div class="row justify-content-center align-items-start">
            <div class="col-md-6 position-relative">
                    <!-- Imagen del Oso -->
                    <img src="ImagenesInterface/osito-removebg-preview.png" alt="Oso" class="img-oso" />
                    
                    <!-- Tabla de Información -->
                    <table class="table my-5">
                        <thead>
                            <tr>
                                <th colspan="4" class="text-center" style="background-color: #e6c6e2; color:#866383;">INFORMACIÓN</th>
                            </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <tr>
                                <th scope="row">Marca</th>
                                <td><!-- Aquí se pone algo así: ?php echo $marca; --></td>
                            </tr>
                            <tr>
                                <th scope="row">Contenido</th>
                                <td><!-- Aquí se pone algo así --></td>
                            </tr>
                            <tr>
                                <th scope="row">Origen</th> 
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>

    <!-- Productos Recomendados -->
     <!-- Aparecerían recomendaciones según la subcategoria, dentro de cada categoría
      correspondiente a una parte de la cara, hay subcategorias a las q se les asignaron números y 
      títulos, por ejemplo si el detalle del producto es de un Brillo labial, aqui en estos contenedores
      saldrían otros productos q también sean brillos labiales -->
    <div class="container mt-5">
        <article class="article-title">Otros también buscaron</article>
        <div class="row">
            <div class="col-1 d-flex align-items-center">
                <button id="prevBtn" class="K-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0"/>
                    </svg>
                </button>
            </div>
            
            <div class="col-10">
                <div class="paginasocial d-flex" id="carouselContainer" style="overflow: hidden;">

                    <div class="elemento col mb-5 productos" style="min-width: 250px; max-width: 300px;">
                        <div class="card shadow-sm h-100 d-flex flex-column">
                            <div class="flex-grow-1 overflow-hidden">
                                <img src="ImagenesInterface/productos/Labios/gloss_MarcaPeriPera.png" class="card-img-top img-fluid h-100" alt="labiales" style="object-fit: cover; width: 100%; height: 200px;">
                            </div>
                            <div class="card-body flex-grow-0">
                                <h5 class="card-title">Gloss Sparkles</h5>
                                <p class="card-text">S/.19.99</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="#" class="K-btn">Detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="elemento col mb-5 productos" style="min-width: 250px; max-width: 300px;">
                        <div class="card shadow-sm h-100 d-flex flex-column">
                            <div class="flex-grow-1 overflow-hidden">
                                <img src="ImagenesInterface/productos/Labios/gloss_MarcaRom&nd.png" class="card-img-top img-fluid h-100" alt="labiales" style="object-fit: cover; width: 100%; height: 200px;">
                            </div>
                            <div class="card-body flex-grow-0">
                                <h5 class="card-title">Labial Mate</h5>
                                <p class="card-text">S/.29.99</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="#" class="K-btn">Detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="elemento col mb-5 productos" style="min-width: 250px; max-width: 300px;">
                        <div class="card shadow-sm h-100 d-flex flex-column">
                            <div class="flex-grow-1 overflow-hidden">
                                <img src="ImagenesInterface/productos/Labios/hidratante_MarcaInnisFree.png" class="card-img-top img-fluid h-100" alt="Producto 3" style="object-fit: cover; width: 100%; height: 200px;">
                            </div>
                            <div class="card-body flex-grow-0">
                                <h5 class="card-title">Producto 3</h5>
                                <p class="card-text">S/.39.99</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="#" class="K-btn">Detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="elemento col mb-5 productos" style="min-width: 250px; max-width: 300px;">
                        <div class="card shadow-sm h-100 d-flex flex-column">
                            <div class="flex-grow-1 overflow-hidden">
                                <img src="ImagenesInterface/productos/Labios/labialBarra_MarcaFlowerKnows.png" class="card-img-top img-fluid h-100" alt="Producto 3" style="object-fit: cover; width: 100%; height: 200px;">
                            </div>
                            <div class="card-body flex-grow-0">
                                <h5 class="card-title">Producto 4</h5>
                                <p class="card-text">S/.39.99</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="#" class="K-btn">Detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-1 d-flex align-items-center">
                <button id="nextBtn" class="K-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708"/>
                    </svg>  
                </button>
            </div>
        </div>
    </div>
    
    <script>
        // Variables de control
        const carouselContainer = document.getElementById('carouselContainer');
        const prevBtn = document.getElementById('prevBtn');
        const nextBtn = document.getElementById('nextBtn');
        const scrollAmount = 300; // Ajusta este valor para controlar la cantidad de desplazamiento
    
        // Función para desplazar hacia la izquierda
        prevBtn.addEventListener('click', () => {
            carouselContainer.scrollBy({
                left: -scrollAmount,
                behavior: 'smooth'
            });
        });
    
        // Función para desplazar hacia la derecha
        nextBtn.addEventListener('click', () => {
            carouselContainer.scrollBy({
                left: scrollAmount,
                behavior: 'smooth'
            });
        });
    </script>
 
    <!-- Footer-->
    <footer class="footer">
        <div class="container-footer">
            <div class="menu-footer">
                <div class="contact-info">
                    <p class="title-footer">INFORMACIÓN</p>
                    <ul>
                        <li>Dirección legal: Av. La Marina 2355, San Miguel, Lima</li>
                        <li>RUC: 20548796321</li>
                        <li>Email: kglow@support.com</li>
                        <li>Teléfono: +51 934553657</li>
                    </ul>

                    <div class="social-icons">
                        <span class="facebook">
                            <i class="fab fa-facebook-f"></i>
                        </span>
                        <span class="twitter">
                            <i class="fab fa-twitter"></i>
                        </span>
                        <span class="youtube">
                            <i class="fab fa-youtube"></i>
                        </span>
                        <span class="pinterest">
                            <i class="fab fa-pinterest-p"></i>
                        </span>
                        <span class="instagram">
                            <i class="fab fa-instagram"></i>
                        </span>
                    </div>
                </div>


                <div class="information">
                    <p class="title-footer">¡TE AYUDAMOS!</p>
                    <ul>
                        <li><a href="#">Términos y condiciones</a></li>
                        <li><a href="#">Protección de datos</a></li>
                        <li><a href="#">Cambios y devoluciones</a></li>
                        <li><a href="#">Plazos de reembolso</a></li>
                        <li><a href="#">Campañas publicitarias</a></li>
                    </ul>
                </div>

                <div class="my-account">
                    <p class="title-footer">SERVICIO AL CLIENTE</p>
                    <ul>
                        <li><a href="#">Preguntas frecuentes</a></li>
                        <li><a href="#">Historial de órdenes</a></li>
                        <li><a href="#">Lista de deseos</a></li>
                        <li><a href="#">Seguimiento de Pedidos</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2024 K-GLOW S.A.C. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Solo carga el script de Instagram una vez -->
    <script async src="https://www.instagram.com/embed.js"></script>
    <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</body>
</html>
