<jsp:include page="header.jsp" />

<div class="container px-5 my-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card border-0 rounded-3 shadow-lg">
                <div class="card-body p-4">
                    <div class="text-center">
                        <h1 class="fw-light mb-4">Contact Form</h1>
                    </div>

                    <!-- Contact Form -->
                    <form id="contactForm" method="post" action="contactus">
                        <!-- Name Input -->
                        <div class="form-floating mb-3">
                            <input class="form-control" id="name" type="text" placeholder="Name" required name="name" />
                            <label for="name">Name</label>
                            <div class="invalid-feedback">Name is required.</div>
                        </div>

                        <!-- Email Input -->
                        <div class="form-floating mb-3">
                            <input class="form-control" id="emailAddress" type="email" placeholder="Email Address" required name="gmail" />
                            <label for="emailAddress">Email Address</label>
                            <div class="invalid-feedback">Email Address is required and must be valid.</div>
                        </div>

                        <!-- Phone Number Input -->
                        <div class="form-floating mb-3">
                            <input class="form-control" id="phoneNumber" type="tel" placeholder="Phone Number" required name="number" />
                            <label for="phoneNumber">Phone Number</label>
                            <div class="invalid-feedback">Phone Number is required.</div>
                        </div>

                        <!-- Message Input -->
                        <div class="form-floating mb-3">
                            <textarea class="form-control" id="message" type="text" placeholder="Message" style="height: 10rem;" required name="massage"></textarea>
                            <label for="message">Message</label>
                            <div class="invalid-feedback">Message is required.</div>
                        </div>

                        <!-- Submit button -->
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary btn-lg">SUBMIT</button>
                        </div>

                        <!-- Submit success message -->
                        <div class="text-center mt-3">
                            <div class="alert alert-success d-none" id="submitSuccessMessage" role="alert">
                                Form submission successful!
                            </div>
                        </div>

                        <!-- Submit error message -->
                        <div class="text-center mt-3">
                            <div class="alert alert-danger d-none" id="submitErrorMessage" role="alert">
                                Error sending message!
                            </div>
                        </div>
                    </form>
                    <!-- End of contact form -->
                    ${sms}

                </div>
            </div>
        </div>
    </div>
</div>


<style>
 body {
  background-color: gray;
  background: linear-gradient(to right, #808080, #448EE4);
}

  
</style>
  



<jsp:include page="footer.jsp" />