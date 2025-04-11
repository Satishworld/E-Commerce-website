<jsp:include page="header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
            <h2 class="mb-4 display-5 text-center">Frequently Asked Questions</h2>
            <p class="text-secondary text-center lead fs-4">Welcome to our FAQ page, your one-stop resource for
                answers to commonly asked questions.</p>
            <p class="mb-5 text-center">Whether you're a new customer looking to learn more about what we offer or a
                long-time user seeking clarification on specific topics, this page has clear and concise information
                about our products and services.</p>
            <hr class="w-50 mx-auto mb-5 mb-xl-9 border-dark-subtle">
        </div>
    </div>
</div>


<div>
      <h2 class="d-flex justify-content-center mb-3 mt-3 border-top pt-3">
        FAQ
      </h2>
      <!-- <table class="table" border="1px" width="100%">
    <tr>
      <th>Question</th>
      <th>Answer</th>
    </tr>

    <c:forEach var="faq" items="${faqdisplay}">
      <tr>
        <td>${faq.question}</td>
        <td>${faq.answer}</td>
      </tr>
    </c:forEach>
  </table> -->
      <div class="accordion" id="accordionExample">
        <c:forEach var="faq" items="${faqdisplay}">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#item${faq.sl_no}"
                aria-expanded="false"
                aria-controls="collapseTwo"
              >
                ${faq.question}
              </button>
            </h2>
            <div
              id="item${faq.sl_no}"
              class="accordion-collapse collapse"
              aria-labelledby="headingTwo"
              data-bs-parent="#accordionExample"
            >
              <div class="accordion-body">${faq.answer}</div>
            </div>
          </div>
        </c:forEach>
      </div>
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"
      ></script>
    </div>


<style>
    .accordion-item {
        margin-left: 25%;
        margin-right: 25%;
        padding-top: 10px;
       
    }

    
</style>

    


<br/>
<jsp:include page="footer.jsp" />