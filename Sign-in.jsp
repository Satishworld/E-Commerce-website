<jsp:include page="header.jsp" />


<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

<body>
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card border-0 shadow rounded-3 my-5">
            <div class="card-body p-4 p-sm-5">
              <h5 class="card-title text-center mb-5 fw-light fs-5">Sign In</h5>
              <form method="post" action="/Sign-in" >
                <div class="form-floating mb-3">
                  <input type="email" class="form-control" id="floatingInput" name="user_id" placeholder="name@example.com">
                  <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating mb-3">
                  <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
                  <label for="floatingPassword">Password</label>
                </div>
  
                <div class="form-check mb-3">
                  <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                  <label class="form-check-label" for="rememberPasswordCheck">
                    Remember password
                  </label>
                </div>
                <div class="d-grid">
                  <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Sign in</button>
                </div>
                <br>
                 ${sms}
                <%-- <hr class="my-4">
                <div class="d-grid mb-2">
                  <button class="btn btn-google btn-login text-uppercase fw-bold" type="submit">
                    <i class="fab fa-google me-2"></i> Sign in with Google
                  </button>
                </div>
                <div class="d-grid">
                  <button class="btn btn-facebook btn-login text-uppercase fw-bold" type="submit">
                    <i class="fab fa-facebook-f me-2"></i> Sign in with Facebook
                  </button>
                </div> --%>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  

<style>
    body {
  background-color: gray;
  background: linear-gradient(to right, #808080, #448EE4);
}
  
  .btn-login {
    font-size: 0.9rem;
    letter-spacing: 0.05rem;
    padding: 0.75rem 1rem;
  }
  
  .btn-google {
    color: white !important;
    background-color: #ea4335;
  }
  
  .btn-facebook {
    color: white !important;
    background-color: #3b5998;
  }
</style>

<jsp:include page="footer.jsp" />