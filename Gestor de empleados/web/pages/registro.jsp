<%-- 
    Document   : registro
    Created on : 25/07/2024, 3:49:53 p. m.
    Author     : delga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="../estilos/estiloregistro.css">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>mistercactus</title>
</head>

<body>
  <section class="container">
    <header>Formulario de registro</header>
    <form action="#" class="form">

      <div class="input-box">
        <label>Nombres</label>
        <input type="text" placeholder="Ingresa los nombres" required />
      </div>
      <div class="input-box">
        <label>Apellidos</label>
        <input type="text" placeholder="Ingresa los Apellido" required />
      </div>


      <div class="column">
        <div class="input-box">
          <label>Titulo academico</label>
          <input type="text" placeholder="Digite el nombre" required />
        </div>
        <div class="input-box">
          <label>Fecha de contratación</label>
          <input type="date" placeholder="Digita la fecha" required />
        </div>
      </div>
      <div class="select-box">
        <select>
          <option hidden>Departamento</option>
          <option>America</option>
          <option>Japan</option>
          <option>India</option>
          <option>Nepal</option>
        </select>
      </div>

      <div class="input-box address">
        <label>Usuario</label>
        <input type="text" placeholder="Digite el usuario" required />

        <div class="input-box">
          <label>Contraseña</label>
          <input type="text" placeholder="Digite la contraseña" required />
        </div>

      </div>
      <button>Registrar</button>
    </form>
  </section>
</body>

</html>
