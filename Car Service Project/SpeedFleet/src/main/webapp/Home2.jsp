<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        :root {
            --primary-color: #000000e6;
            --secondary-color: white;
        }

        body {
            background-color: var(--primary-color);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* header section */
        .logo {
            font-family: Georgia, 'Times New Roman', Times, serif;
            font-size: 25px;
            color: #222;
            text-decoration: none;
            font-weight: 500;
        }

        .navbar a {
            font-size: 20px;
            color: #222;
            text-decoration: none;
            margin: 0 20px;
            display: inline-block;
        }

        .header {
            height: 500px;
            width: 100%;
            background-color: var(--secondary-color);
            position: relative;
        }

        .header nav {
            width: 90%;
            margin: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0.5rem 0 2rem;
        }

        .header nav ul {
            display: flex;
        }

        .header nav li {
            list-style: none;
            margin: 0 5px;
        }

        .header nav li a {
            text-decoration: none;
            z-index: 1;
            text-transform: uppercase;
            padding: 0.2rem 1rem;
            font-size: 15px;
            font-weight: bold;
            color: var(--primary-color);
            position: relative;
        }

        .header .main {
            text-align: center;
        }

        .header .main .description {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-weight: 500;
            color: var(--primary-color);
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 1.5rem;
        }

        .header .main h1 {
            font-size: 2.5rem;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            margin-bottom: 1.2rem;
        }

        .header .main a {
            text-decoration: none;
            width: 350px;
            font-size: 15px;
            font-weight: bold;
            color: white;
            padding: 0.5rem 1rem;
            background-color: var(--primary-color);
            border: 2px solid var(--primary-color);
            transition: 0.5s;
            border-radius: 30px;
        }

        .header .main a:hover {
            background: transparent;
            color: black;
        }

        /* Service section */
        .service {
            padding-top: 1rem;
            width: 80%;
            margin: auto;
            text-align: center;
        }

        h2 {
            font-size: 2.5rem;
            color: white;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }

        p {
            color: white;
            font-size: 14px;

        }

        .row {
            margin-top: 5%;
            display: flex;
            justify-content: space-around;
        }

        .service .service-col {
            flex-basis: 30%;
            border: 1px solid var(--secondary-color);
            color: white;
            margin: 5% 0;
            padding: 2rem 1rem;
            position: relative;
        }

        .service-col a {
            text-decoration: none;
            color: white;
        }

        .service-offer {
            padding: 15px 10px;
        }

        .service .service-offer {
            display: block;
            width: 60px;
            height: 60px;
            border: 3px solid var(--secondary-color);
            background-color: var(--primary-color);
            border-radius: 50%;
            padding: 10px;
            position: absolute;
            top: -50px;
            left: 50%;
            transform: translateX(-50px);
        }

        .service .service-offer img {
            width: 60px;
        }

        .service h4 {
            font-size: 1.3rem;
            margin-top: 10%;
        }

        /* package section */
        .package {
            padding-top: 5%;
            width: 80%;
            margin: auto;
            text-align: center;
        }

        .package .package-col {
            flex-basis: 25%;
            background: white;
            border-radius: 10px;
            margin-bottom: 5%;
        }

        .package .package-col .heading {
            border-radius: 10px;
            padding: 1.5rem 0;
            background-color: var(--secondary-color);
            font-size: 25px;
            font-weight: 900;
        }

        .package .package-col .list {
            margin-top: 10px;
            padding: 1rem 3rem;

        }

        .package-col li {
            list-style: none;
            text-align: left;
            font-weight: bold;
            margin-top: 5px;
            position: relative;
        }

        .package-col li::before {
            content: "";
            width: 10px;
            height: 10px;
            background-color: var(--primary-color);
            transform: rotate(45deg);
            position: absolute;
            top: 25%;
            left: -25px;
        }

        .package-col hr {
            height: 2px;
            background-color: var(--primary-color);
        }

        .package-col p {
            margin-top: 5%;
            color: black;
            font-size: 30px;
            font-weight: 900;
        }

        /* care section */
        .care {
            padding-top: 5%;
            width: 80%;
            margin: auto;
            text-align: center;
        }

        .care-col {
            flex-basis: 23%;
            margin-bottom: 5%;
            border-radius: 1rem;
            position: relative;
        }

        .care-col img {
            width: 100%;
            height: 100%;
            border: 1rem;
            border-radius: 15px;
        }

        /* customer section */
        .customer-review {
            padding-top: 5%;
            width: 80%;
            margin: auto;
            text-align: center;
        }

        .customer-review .customer-review-col {
            flex-basis: 25%;
            background-color: var(--secondary-color);
            border-radius: 1rem;
            padding: 1rem;
            margin-bottom: 5%;
            display: flex;
            box-shadow: 0px 5px 3px rgba(255, 255, 255, .4);
            transition: .5s;
        }

        .customer-review .customer-review-col p {
            color: black;
            padding: 0;
            text-align: left;
            font-size: 15px;
            font-weight: bold;
        }

        .customer-review .customer-review-col img {
            width: 150px;
            height: 120px;
            border-radius: 50%;
            margin: 0 20px 0 10px;
        }

        .customer-review .customer-review-col span {
            display: block;
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
            text-align: right;
        }

        /* footer section */
        .footer {
            margin-top: 10%;
            width: 100%;
            text-align: center;
            background-color: var(--secondary-color);
        }

        .footer p {
            font-size: 15px;
            color: black;
            font-weight: bold;
        }

        .social-media {
            width: 25%;
            margin: auto;
            padding: 1% 0 1%;
            font-size: 2.1rem;
            justify-content: space-between;
            display: flex;
        }

        .social-media a {
            width: 25%;
            margin: auto;
            display: flex;
            text-decoration: none;
        }

        .social-media a i {
            font-size: 28px;
            color: black;
        }
    </style>
</head>

<body>
    <!-- /* header section */ -->
    <div class="header">
        <nav>
            <a href="Home2.jsp" class="logo">SpeedFleet</a>
            <ul id="navbar">
                <li><a href="#">Home</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Featured</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <div class="main">
            <h1>Your Vehicle's Best Friend</h1>
            <p class="description">Welcome to SpeedFleet, where your vehicle's care and well-being are our top
                priorities. With a passion
                for automobiles and a commitment to excellence, we've built a reputation as the ultimate companion for
                your car's needs. Our range of services is designed to pamper your vehicle, ensuring it receives the
                attention and care it deserves. From top-notch car wash and detailing to premium car parts and
                comprehensive maintenance packages, we offer everything your vehicle needs to stay in top condition.
                Whether you're in need of a temporary ride with our rental car selection or seeking expert repairs and
                maintenance, we've got you covered. Explore more about how we can enhance your driving experience and
                keep your vehicle running smoothly.</p>
            <a href="#">Explore more</a>
        </div>
    </div>

    <!-- /* Service section */ -->
    <div class="service">
        <h2>What We Offer</h2>
        <p>Discover our range of services tailored to your car's needs.</p>
        <div class="row">
            <div class="service-col">
                <a href="WashService.jsp">
                    <div class="service-offer">
                        <img src="images/carwash1.png" alt="Car Wash">
                    </div>
                    <h4>Car Wash & Detailing</h4>
                    <p>Give your vehicle a fresh look and feel with our professional car wash and detailing services.
                        From
                        exterior cleaning to interior detailing, we ensure your car sparkles inside and out.</p>
                </a>
            </div>
            <div class="service-col">
                <a href="RentService.jsp">
                    <div class="service-offer">
                        <img src="images/carrent.png" alt="Rent a Car">
                    </div>
                    <div class="service-offer-text">
                        <h4>Rent a Car</h4>
                        <p>Need a temporary ride? Explore our selection of rental cars suitable for various occasions.
                            Whether
                            it's a family trip or a business meeting, we have the right vehicle for you.</p>
                </a>
            </div>

        </div>
        <div class="service-col">
            <a href="RepairService.jsp">
                <div class="service-offer">
                    <img src="images/carpart.png" alt="Car Parts">
                </div>
                <h4>Quality Car Parts</h4>
                <p>Experience top-notch automotive parts and components for your vehicle's maintenance and repairs. We
                    offer genuine parts that ensure optimal performance and durability for your car.</p>
            </a>
        </div>
    </div>
    </div>

    <!-- Packages Offer -->
    <div class="package">
        <h2>Our Packages</h2>
        <p>Explore our comprehensive service packages tailored to your car's maintenance needs.</p>
        <div class="row">
            <div class="package-col">
                <div class="heading">
                    Basic Maintenance
                </div>
                <div class="list">
                    <ul>
                        <li>Oil replacement</li>
                        <li>Expert Mechanics</li>
                        <li>Parts Replacement</li>
                        <li>Radiator Inspection</li>
                        <li>Tire Rotation</li>
                        <li>Clutch Check</li>
                    </ul>
                    <hr>
                    <p>Starting at<br>Rs.8,000</p>
                </div>
            </div>
            <div class="package-col">
                <div class="heading">
                    Complete Tune-Up
                </div>
                <div class="list">
                    <ul>
                        <li>Premium Oil</li>
                        <li>Expert Mechanics</li>
                        <li>Parts Replacement</li>
                        <li>Radiator Inspection</li>
                        <li>Tire Rotation</li>
                        <li>Brake System Check</li>
                    </ul>
                    <hr>
                    <p>Starting at<br>Rs.15,000</p>
                </div>
            </div>
            <div class="package-col">
                <div class="heading">
                    Premium Overhaul
                </div>
                <div class="list">
                    <ul>
                        <li>Oil replacement</li>
                        <li>Expert Mechanics</li>
                        <li>Comprehensive Parts Replacement</li>
                        <li>Radiator Service</li>
                        <li>Wheel Alignment</li>
                        <li>Transmission Check</li>
                    </ul>
                    <hr>
                    <p>Starting at<br>Rs.25,000</p>
                </div>
            </div>
        </div>
    </div>

    <!-- section care -->
    <div class="care">
        <h2>We Take Care Of</h2>
        <p>Trust us to provide complete care for your vehicle.</p>
        <div class="row">
            <div class="care-col">
                <img src="images/light.jpg" alt="Lights">

            </div>
            <div class="care-col">
                <img src="images/clutch.jpg" alt="Clutches">

            </div>
            <div class="care-col">
                <img src="images/dent.jpg" alt="Dents">

            </div>
            <div class="care-col">
                <img src="images/exhaust.jpeg" alt="Exhaust">

            </div>
        </div>
    </div>
    <!-- customer section -->
    <div class="customer-review">
        <h2>What Our Customers Say</h2>
        <p>Read what our satisfied customers have to say about our services.</p>
        <div class="row">
            <div class="customer-review-col">
                <img src="images/customer1.jpg" alt="Customer 1">
                <p>"Great service and attention to detail. My car feels brand new after their expert care!"</p>
                <br>
                <span>Peter R. Parker</span>
            </div>
            <div class="customer-review-col">
                <img src="images/customer2.jpg" alt="Customer 2">
                <p>"I was impressed with their professionalism and quality of work. Highly recommended!"</p>
                <br>
                <span>Carol J. Danvers</span>
            </div>
            <div class="customer-review-col">
                <img src="images/customer3.jpg" alt="Customer 3">
                <p>"Quick and efficient service. They went above and beyond to fix my car's issues."</p>
                <br>
                <span>Harman D. Singh</span>
            </div>
        </div>
    </div>

    <!-- footer section -->
    <div class="footer">
        <p>&copy; 2023 Smith Kinny. All rights reserved.</p>
        <div class="social-media">
            <a href="https://www.instagram.com/kinny_smith3"><i class='bx bxl-instagram'></i></a>
            <a href="https://www.facebook.com/smith.kinny19"><i class='bx bxl-facebook'></i></a>
            <a href="https://www.linkedin.com/in/smith-kinny-003361241"><i class='bx bxl-linkedin-square'></i></a>
            <a href="https://github.com/smith2403"><i class='bx bxl-github'></i></a>
        </div>
    </div>
</body>

</html>