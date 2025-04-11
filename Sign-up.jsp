<jsp:include page="header.jsp" />

<script type="text/javascript">
	function chk(){

		nameError=validName();
		emailError=validEmail();
		
		if(nameError && emailError ){
			return true;
		}else{
			return false;
		}
	}
	function validName(){
		name=document.getElementById('name').value;
		if(name == ""){
			document.getElementById('nsms').innerHTML="Should not leave Blank!";
			return false;
		}else{
			document.getElementById('nsms').innerHTML="";
			return true;
		}
	}
  function validEmail() {
	    const email = document.getElementById('email').value;
	    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	    if (!emailRegex.test(email)) {
	        document.getElementById('esms').innerHTML = "Invalid email format!";
	        return false;
	    } else {
	        document.getElementById('esms').innerHTML = "";
	        return true;
	    }
	}
	
  

</script>


<body>
    <div class="container">
      <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
          <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
            <div class="card-img-left d-none d-md-flex">
              <!-- Background image for card set in CSS! -->
            </div>
            <div class="card-body p-4 p-sm-5">
              <h5 class="card-title text-center mb-5 fw-light fs-5">Register</h5>
              <form method="post" action="Sign-up"   onsubmit="return chk()" >
  
                <div class="form-floating mb-3">
                  <input type="text" class="form-control" id="name"  name="name"   placeholder="myusername" >
                  <label for="floatingInputUsername" >Username</label><span id="nsms" style="color:red"> </span>
                </div>
  
                <div class="form-floating mb-3">
                  <input type="email" class="form-control" id="email"  name="user_id"  placeholder="name@example.com">
                  <label for="floatingInputEmail" >Email address</label><span id="esms" style="color:red"> </span>
                </div>
  
                <hr>
  
                <div class="form-floating mb-3">
                  <input type="password" class="form-control" id="password"   name="password"  placeholder="Password">
                  <label for="floatingPassword" >Password</label>
                </div>
                <div class="k">
                <label for="floatingRadio">Role</label>
                  <input type="radio"  id="floatingRadio"   name="role_name" value="User" required>User
                  <input type="radio"  id="floatingRadio"   name="role_name" value="Employee" >Employee
                </div>
  
                <!-- <div class="form-floating mb-3">
                  <input type="password" class="form-control" id="floatingPasswordConfirm" name="password" placeholder="Confirm Password">
                  <label for="floatingPasswordConfirm">Confirm Password</label>
                </div> -->
  
                <div class="d-grid mb-2">
                  <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase" id="signup" type="submit" >Register</button>
                </div>
  
                <a class="d-block text-center mt-2 small" href="/sign-in">Have an account? Sign In</a>
  
                ${sms}
  
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

.card-img-left {
  width: 45%;
  /* Link to your background image using in the property below! */
  background: scroll center url('https://static.vecteezy.com/system/resources/previews/030/465/369/large_2x/white-isolation-laptop-shopping-basket-keyboard-encapsulate-e-commerce-concept-online-shopping-portrayed-vertical-mobile-wallpaper-ai-generated-free-photo.jpg');
  background-size: cover;
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

.k {
  text-align: center;
  color: #0a0a0a;
  font-size: 20px;
  font-family: 'Times New Roman', Times, serif;
  word-spacing: 10px;
  
}

</style>

<jsp:include page="footer.jsp" />