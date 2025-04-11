<jsp:include page="userheader.jsp" />

<script type="text/javascript" src="js/JQuery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        pname=new URL(window.location).searchParams.get("pname");
        alert(pname);
        
                   $.ajax({
                url: "getproduct",
                type: "POST",
                dataType: "JSON",
                data: { prod_name:pname },
                success: function (res) {
                    // alert (res); 
                    $("#prod_id").val(res[0].prod_id);
                    $("#prod_rate").val(res[0].prod_rate);
                    $("#oprod_qty").val(res[0].prod_qty);

                }
            })    
    })

    function chk() {
        errorQty = validQty();
        if (errorQty) {
            return true;
        } else {
            return false;
        }
    }
    function validQty() {
        ProdQty = parseInt(document.getElementById("prod_qty").value);
        oprodqty = parseInt(document.getElementById("oprod_qty").value);
        if (oprodqty >= ProdQty) {
            document.getElementById("qsms").innerHTML = "";
            return true;
        } else {
            document.getElementById("qsms").innerHTML = "Quantity Not Availble..";
            return false;
        }
    }
</script>

<form action="saveorder" method="post" onsubmit="return chk()">
    <%-- Product Name: <input type="text" name="prod_name" id="prod_name" /><br /> --%>
    Product Price: <input type="text" name="prod_rate" id="prod_rate" readonly/><br />
    Product Quantity: <input type="text" name="prod_qty" id="prod_qty" /><br />
    Adress: <input type="text" name="adress" id="adress" /><br />
    EmailId: <input type="text" name="user_id" id="user_id" /><br />
    <input type="hidden" id="oprod_qty" name="oprod_qty" /><span id="qsms"></span>
    <input type="hidden" id="prod_id" name="prod_id" />
    <input type="submit" value="Order">
</form>


<style>
    body {
        background-color: #f0f0f0; /* Set your desired background color */
        font-family: Arial, sans-serif;
    }

    form {
        background-color: #ffffff; /* Set form background color */
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 50%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: #007bff; /* Set button background color */
        color: #fff;
        cursor: pointer;
        margin-left:25%;
        transform:transletX(-50%);
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Change button color on hover */
    }

    #qsms {
        display: block;
        margin-top: 10px;
        font-style: italic;
    }
</style>



 <jsp:include page="footer.jsp" />