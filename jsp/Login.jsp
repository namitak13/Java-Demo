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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="../JS/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
}
    </style>

</head>

    <div class="container mx-5 my-5">
        <div class="card-center mt-5 mb-5">
            <div class="row mt-3">
                <div class="col-8"></div>
            </div>

            <div class="text-center">
                <h1 class="display-6 fw-bolder">Login</h1>
                <h3 class="fw-bolder">Welcome Back!</h3>
            </div>

            <div class="container mt-5 mb-5">
                <form id="form">
                     <div class="mb-3" id="unameCl">
                    <label for="InputName" class="form-label fw-bold">Username*</label>
                    <input type="text" name="username" class="form-control" id="InputUame" aria-describedby="unameHelp"
                        placeholder="John Doe" autofocus required />
                    <p id="nameAlert"></p>                 
                        <p id="emailPhoneAlert"></p>
                    </div>
                    
                    

                    <div class="mb-5">
                        <label for="InputPassword1" class="form-label fw-bold">Password* </label>
                        <input type="password" class="form-control" id="InputPassword1"
                            placeholder="Password should be in minimum 8 characters" required />
                        <p id="pass1Alert"></p>
                    </div>

                    <button type="submit" class="btn btn-success w-100">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <!-- footer -->
    <footer>
        <div class="card-footer text-muted text-center text-white bg-dark font-weight-bold">
            Copyright@cybage.com
        </div>
    </footer>
<body>

</body>
</html>