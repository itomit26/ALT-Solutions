<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="body_bg">
        <section class="vh-100 bg-image">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-7 col-lg-7 col-xl-6">
                            <div class="" style=" max-width: 100%; margin: 0 auto;">
                                <div class="card-body p-5">
                                    <button onclick="window.history.back()"type="button" class="btn btn-light mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                                        </svg></button>
                                    <h2 class="text-uppercase text-center text-white mb-5">Log in Account</h2>

                                    <div class="container">
                                        <div class="row">
                                            <form class="row g-3">
                                                <div class="col-md-12">
                                                    <label for="userID" class="form-label text-white">Username</label>
                                                    <input type="userID" class="form-control" id="userID">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="password" class="form-label text-white">Password</label>
                                                    <div class="input-group">
                                                        <input type="password" class="form-control" id="inputPassword" aria-describedby="passwordHelp" placeholder="Enter password">
                                                        <button type="button" id="togglePassword" onclick="togglePasswordVisibility()" class="btn btn-outline-secondary"><i class="fa fa-eye"></i></button>
                                                    </div>
                                                </div>
                                                <div class="d-grid place-items-center">
                                                    <a href="<%= request.getContextPath()%>/home"><button type="button" class="btn btn-danger btn-block btn-lg gradient-custom-4 text-white">Log in</button></a>
                                                </div>
                                                <p class="text-form text-center mt-5 mb-0 text-white">Don't have an account?
                                                    <a href="${pageContext.request.contextPath}/customer/create/form" class="text-form fw-bold text-white"><u>Register here</u></a>
                                                </p>
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>   

        <script>
            function togglePasswordVisibility() {
                const passwordInput = document.getElementById("Password");
                const toggleButton = document.getElementById("togglePassword");

                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                    toggleButton.innerHTML = "<i class='fa fa-eye-slash'></i>";
                } else {
                    passwordInput.type = "password";
                    toggleButton.innerHTML = "<i class='fa fa-eye'></i>";
                }
            }
        </script>

    </body>
</html>
