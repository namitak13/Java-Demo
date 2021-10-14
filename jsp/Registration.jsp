<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous" />
    <link rel="shortcut icon" href="#">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../JS/jquery-3.6.0.js"></script>
<title>Insert title here</title>
    
<style>

        
body {
  background-image: url("https://th.bing.com/th/id/OIP.G2rKXLqB4abMQ-hw0YXXMQHaE8?pid=ImgDet&rs=1");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  background-size: cover;
  height: auto;
  min-height: 100%;
}

.card-center {
  background-color: #fff9f0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
  padding: 20px;
  margin: auto;
  border-radius: 20px;
  position: absolute;
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  width: 100%;
  overflow: auto;
  max-width: 600px;
}

.container {
  padding: 2px 16px;
  display: block;
  overflow: auto;
}

footer {
  position: fixed;
  width: 100%;
  bottom: 0;
  height: 40px;
}

.button {
  background-color: #4caf50;
  /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s;
          transition-duration: 0.4s;
}

.button1 {
  background-color: #555555;
  font-size: 12px;
  border-radius: 12px;
}

.button:hover {
  background-color: #4caf50;
  /* Green */
  color: white;
}    </style>
</head>
<body>

 <div class="card-center mt-5 mb-5">
        <div class="text-center mt-5">
            <h1 class="display-6 fw-bolder">Register</h1>
        </div>

        <div class="container">
        
            <form id="form" action="RegistrationController" method="post">
                <div class="mb-3" id="fnameCl">
                    <label for="InputName" class="form-label fw-bold">Firstname*</label>
                    <input type="text" name="firstname" class="form-control" id="InputFname" aria-describedby="fnameHelp"
                        placeholder="John" autofocus required />
                    <p id="nameAlert"></p>
                </div>

                <div class="mb-3" id="lnameCl">
                    <label for="InputName" class="form-label fw-bold">Lastname*</label>
                    <input type="text" name="lastname" class="form-control" id="InputLname" aria-describedby="lnameHelp"
                        placeholder="Doe" autofocus required />
                    <p id="nameAlert"></p>
                </div>

                <div class="mb-3" id="emailCl">
                    <label for="InputEmail1" class="form-label fw-bold">Email address*</label>
                    <input type="email" name="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp"
                        placeholder="johndoe@gmail.com" autofocus required />
                    <div id="emailHelp" class="form-text">
                        We'll never share your email with anyone else.
                    </div>
                    <p id="emailAlert"></p>
                </div>
                
                <div class="mb-3" id="unameCl">
                    <label for="InputName" class="form-label fw-bold">Username*</label>
                    <input type="text" name="username" class="form-control" id="InputUame" aria-describedby="unameHelp"
                        placeholder="John Doe" autofocus required />
                    <p id="nameAlert"></p>
                </div>

                <div class="mb-3">
                    <label for="InputPassword1" class="form-label fw-bold">Password*</label>
                    <input type="password" name="password" class="form-control" id="InputPassword"
                        placeholder="Password should be in minimum 8 characters" required />
                    <p id="pass1Alert"></p>
                </div>


                <button type="submit" class="btn btn-primary w-100 mb-4 mt-4">
                    Register
                </button>
            </form>
        </div>
    </div>
    <!-- footer -->
    <footer>
        <div class="card-footer text-muted text-center text-white bg-dark font-weight-bold">
            Copyright@cybage.com
        </div>
    </footer>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>
</body>
</html>