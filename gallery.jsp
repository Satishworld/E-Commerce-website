<jsp:include page="header.jsp" />

<style>
        /* Gallery container */
        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        
        /* Gallery item */
        .gallery-item {
            margin: 10px;
            width: 300px;
        }
        
        /* Image */
        .gallery-item img {
            width: 100%;
            height: auto;
        }
        
        
        /* Body background color */
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }
        
        /* Gallery container */
        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }
        
        /* Gallery item */
        .gallery-item {
            margin: 10px;
            width: 300px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }
        
        /* Hover effect */
        .gallery-item:hover {
            transform: translateY(-5px);
        }
        
        /* Image */
        .gallery-item img {
            width: 100%;
            height: auto;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }
        
        /* Description */
        .gallery-item p {
            padding: 10px;
            text-align: center;
            margin: 0;
            color: #333333;
        }
        
        /* Header */
        h1 {
            text-align: center;
            margin-top: 50px;
            color: #333333;
        }
    </style>

<body>
    <h1> StyleSphere </h1>
    <div class="gallery">
        <div class="gallery-item">
            <img src="image/t-shart1.jpeg" alt="Man T-Shart">
            <p>Us Polo</p>
        </div>
        <div class="gallery-item">
            <img src="image/shart2.jpeg" alt="Man T-Shart">
            <p>Peter England Black Printed Shirts, Half sleeves</p>
        </div>
         <div class="gallery-item">
            <img src="image/killer.jpeg" alt="Man T-Shart">
            <p>Printed Killer Cream Men Cotton Lycra Shirt, Party-wear</p>
        </div>
         <div class="gallery-item">
            <img src="image/jhon.jpeg" alt="Man T-Shart">
            <p>Cotton John Players Men Blue Trim Regular Fit Printed Casual Shirt</p>
        </div>
        <div class="gallery-item">
            <img src="image/puma.jpeg" alt="Man T-Shart">
            <p>Puma Evostripe Mens Navy Blue Casual Track Jacket</p>
        </div>
        <div class="gallery-item">
            <img src="image/zara.jpeg" alt="Man T-Shart">
            <p>Zara Man shart</p>
        </div>
        <div class="gallery-item">
            <img src="image/kelvin.webp" alt="Man T-Shart">
            <p>Calvin Klein Jeans Women Shift Pink Dress</p>
        </div>
        <div class="gallery-item">
            <img src="image/nike.jpeg" alt="Man T-Shart">
            <p>Women's Skirts & Dresses. Nike</p>
        </div>
        
   
        <!-- Add more gallery items as needed -->
    </div>
</body>

<jsp:include page="footer.jsp" />