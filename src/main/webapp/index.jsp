```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>RALI's SmartBus Tours & Travels</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #f6f8fb;
            color: #182230;
        }

        /* =========================
           NAVBAR
        ========================== */

        .navbar {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 20;
            padding: 18px 6%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 21px;
            font-weight: 800;
            letter-spacing: -0.5px;
        }

        .logo-icon {
            width: 43px;
            height: 43px;
            border-radius: 12px;
            background: white;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #e63946;
            font-size: 23px;
            box-shadow: 0 8px 25px rgba(0,0,0,.18);
        }

        .nav-links {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            opacity: .95;
        }

        .nav-links a:hover {
            opacity: .7;
        }

        .login-btn {
            border: 1px solid rgba(255,255,255,.6);
            padding: 10px 19px;
            border-radius: 8px;
        }

        /* =========================
           HERO
        ========================== */

        .hero {
            min-height: 650px;
            position: relative;
            overflow: hidden;

            background:
                linear-gradient(
                    90deg,
                    rgba(5,16,32,.94) 0%,
                    rgba(5,16,32,.78) 40%,
                    rgba(5,16,32,.25) 75%,
                    rgba(5,16,32,.10) 100%
                ),
                url("https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?auto=format&fit=crop&w=2000&q=85");

            background-size: cover;
            background-position: center;
        }

        .hero-content {
            position: relative;
            z-index: 5;
            padding: 180px 6% 70px;
            color: white;
            max-width: 780px;
        }

        .small-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,.14);
            border: 1px solid rgba(255,255,255,.2);
            backdrop-filter: blur(10px);
            padding: 8px 14px;
            border-radius: 30px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: clamp(40px, 5vw, 67px);
            line-height: 1.04;
            letter-spacing: -2.5px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #ff4757;
        }

        .hero p {
            max-width: 620px;
            font-size: 17px;
            line-height: 1.7;
            color: #e6ebf1;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 13px;
        }

        .primary-btn,
        .secondary-btn {
            padding: 14px 23px;
            border-radius: 9px;
            border: none;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            text-decoration: none;
        }

        .primary-btn {
            background: #e63946;
            color: white;
            box-shadow: 0 10px 25px rgba(230,57,70,.3);
        }

        .primary-btn:hover {
            background: #c92f3b;
        }

        .secondary-btn {
            background: rgba(255,255,255,.12);
            color: white;
            border: 1px solid rgba(255,255,255,.35);
            backdrop-filter: blur(10px);
        }

        /* =========================
           SEARCH CARD
        ========================== */

        .booking-wrapper {
            position: relative;
            z-index: 10;
            margin-top: -95px;
            padding: 0 6%;
        }

        .booking-card {
            background: white;
            border-radius: 18px;
            padding: 25px;
            box-shadow: 0 18px 55px rgba(18,32,53,.18);
        }

        .booking-title {
            font-size: 19px;
            font-weight: 800;
            margin-bottom: 18px;
        }

        .booking-grid {
            display: grid;
            grid-template-columns: 1.2fr 1.2fr 1fr 1fr auto;
            gap: 12px;
            align-items: end;
        }

        .field label {
            display: block;
            font-size: 11px;
            font-weight: 800;
            color: #677386;
            text-transform: uppercase;
            margin-bottom: 7px;
        }

        .input-box {
            height: 50px;
            border: 1px solid #dce2ea;
            border-radius: 9px;
            display: flex;
            align-items: center;
            padding: 0 14px;
            gap: 10px;
            background: #fbfcfd;
        }

        .input-box input,
        .input-box select {
            border: none;
            outline: none;
            background: transparent;
            width: 100%;
            font-family: inherit;
            font-size: 14px;
            color: #182230;
        }

        .search-btn {
            height: 50px;
            border: none;
            border-radius: 9px;
            padding: 0 25px;
            background: #e63946;
            color: white;
            font-weight: 800;
            cursor: pointer;
        }

        .search-btn:hover {
            background: #c92f3b;
        }

        /* =========================
           QUICK FEATURES
        ========================== */

        .features {
            padding: 75px 6% 25px;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .feature {
            background: white;
            padding: 23px;
            border-radius: 14px;
            border: 1px solid #edf0f4;
            transition: .25s;
        }

        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(20,30,45,.08);
        }

        .feature-icon {
            width: 45px;
            height: 45px;
            border-radius: 10px;
            background: #fff0f1;
            color: #e63946;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 21px;
            margin-bottom: 14px;
        }

        .feature h3 {
            font-size: 15px;
            margin-bottom: 7px;
        }

        .feature p {
            color: #737f90;
            font-size: 12px;
            line-height: 1.6;
        }

        /* =========================
           SECTION
        ========================== */

        .section {
            padding: 65px 6%;
        }

        .section-heading {
            display: flex;
            justify-content: space-between;
            align-items: end;
            margin-bottom: 25px;
        }

        .section-heading h2 {
            font-size: 29px;
            letter-spacing: -1px;
        }

        .section-heading p {
            color: #7b8694;
            font-size: 13px;
            margin-top: 7px;
        }

        .view-all {
            color: #e63946;
            text-decoration: none;
            font-size: 13px;
            font-weight: 700;
        }

        /* =========================
           BUS CARDS
        ========================== */

        .bus-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .bus-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            border: 1px solid #e9edf2;
            transition: .25s;
        }

        .bus-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 18px 40px rgba(25,35,50,.12);
        }

        .bus-image {
            height: 180px;
            position: relative;
            background-size: cover;
            background-position: center;
        }

        .bus-image.one {
            background-image:
                linear-gradient(rgba(0,0,0,.15), rgba(0,0,0,.15)),
                url("https://images.unsplash.com/photo-1570125909232-eb263c188f7e?auto=format&fit=crop&w=900&q=80");
        }

        .bus-image.two {
            background-image:
                linear-gradient(rgba(0,0,0,.15), rgba(0,0,0,.15)),
                url("https://images.unsplash.com/photo-1562519819-016930ada31b?auto=format&fit=crop&w=900&q=80");
        }

        .bus-image.three {
            background-image:
                linear-gradient(rgba(0,0,0,.15), rgba(0,0,0,.15)),
                url("https://images.unsplash.com/photo-1494515843206-f3117d3f51b7?auto=format&fit=crop&w=900&q=80");
        }

        .badge {
            position: absolute;
            top: 13px;
            left: 13px;
            background: #e63946;
            color: white;
            font-size: 10px;
            font-weight: 800;
            padding: 6px 9px;
            border-radius: 5px;
        }

        .bus-info {
            padding: 19px;
        }

        .bus-info h3 {
            font-size: 17px;
            margin-bottom: 10px;
        }

        .route {
            color: #6e7988;
            font-size: 12px;
            margin-bottom: 15px;
        }

        .bus-meta {
            display: flex;
            gap: 7px;
            flex-wrap: wrap;
            margin-bottom: 18px;
        }

        .bus-meta span {
            background: #f3f5f7;
            padding: 6px 8px;
            border-radius: 5px;
            font-size: 10px;
            color: #687383;
            font-weight: 600;
        }

        .bus-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price small {
            display: block;
            color: #8b95a3;
            font-size: 10px;
        }

        .price strong {
            font-size: 20px;
        }

        .book-small {
            border: none;
            background: #e63946;
            color: white;
            padding: 10px 16px;
            border-radius: 7px;
            font-size: 11px;
            font-weight: 800;
            cursor: pointer;
        }

        /* =========================
           OFFER BANNER
        ========================== */

        .offer {
            margin: 20px 6% 70px;
            border-radius: 20px;
            padding: 40px 45px;
            background:
                linear-gradient(
                    100deg,
                    #101d31,
                    #253b5b
                );
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            overflow: hidden;
            position: relative;
        }

        .offer::after {
            content: "BUS";
            position: absolute;
            right: 30px;
            bottom: -50px;
            font-size: 150px;
            font-weight: 900;
            opacity: .04;
        }

        .offer h2 {
            font-size: 28px;
            margin-bottom: 9px;
        }

        .offer p {
            color: #cbd4df;
            font-size: 13px;
        }

        .offer-code {
            margin-top: 17px;
            display: inline-block;
            border: 1px dashed #9ba8b8;
            padding: 8px 13px;
            border-radius: 6px;
            font-size: 12px;
            font-weight: 800;
        }

        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #0c1728;
            color: white;
            padding: 45px 6% 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            padding-bottom: 35px;
        }

        footer h3 {
            margin-bottom: 14px;
            font-size: 15px;
        }

        footer p,
        footer a {
            color: #9da9b8;
            font-size: 12px;
            line-height: 2;
            text-decoration: none;
        }

        .footer-brand p {
            max-width: 350px;
            line-height: 1.7;
        }

        .copyright {
            border-top: 1px solid rgba(255,255,255,.08);
            padding-top: 20px;
            color: #778394;
            font-size: 11px;
            text-align: center;
        }

        /* =========================
           POPUP
        ========================== */

        .modal {
            position: fixed;
            inset: 0;
            background: rgba(4,10,18,.72);
            backdrop-filter: blur(5px);
            display: none;
            align-items: center;
            justify-content: center;
            z-index: 100;
            padding: 20px;
        }

        .modal.active {
            display: flex;
        }

        .modal-box {
            background: white;
            width: 100%;
            max-width: 460px;
            border-radius: 18px;
            padding: 30px;
            position: relative;
            animation: popup .25s ease;
        }

        @keyframes popup {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .close {
            position: absolute;
            right: 18px;
            top: 15px;
            font-size: 24px;
            cursor: pointer;
            color: #788391;
        }

        .modal-box h2 {
            margin-bottom: 7px;
        }

        .modal-box p {
            color: #788391;
            font-size: 13px;
            margin-bottom: 22px;
        }

        .modal-field {
            margin-bottom: 13px;
        }

        .modal-field label {
            font-size: 11px;
            font-weight: 700;
            display: block;
            margin-bottom: 6px;
        }

        .modal-field input,
        .modal-field select {
            width: 100%;
            height: 45px;
            border: 1px solid #dce2e9;
            border-radius: 7px;
            padding: 0 12px;
            outline: none;
        }

        .confirm-btn {
            width: 100%;
            height: 47px;
            border: none;
            border-radius: 8px;
            background: #e63946;
            color: white;
            font-weight: 800;
            cursor: pointer;
            margin-top: 5px;
        }

        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 1000px) {

            .booking-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .feature-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .bus-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

        }

        @media (max-width: 700px) {

            .nav-links {
                display: none;
            }

            .hero {
                min-height: 620px;
            }

            .hero-content {
                padding-top: 145px;
            }

            .hero h1 {
                font-size: 43px;
            }

            .booking-wrapper {
                margin-top: -65px;
            }

            .booking-grid {
                grid-template-columns: 1fr;
            }

            .feature-grid,
            .bus-grid {
                grid-template-columns: 1fr;
            }

            .offer {
                margin-left: 4%;
                margin-right: 4%;
                padding: 30px;
                display: block;
            }

            .offer .primary-btn {
                margin-top: 20px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

        }
    </style>
</head>

<body>

<!-- =========================
     NAVBAR
========================== -->

<nav class="navbar">

    <div class="logo">
        <div class="logo-icon">🚌</div>
        <div>
            RALI's
            <div style="font-size:10px;opacity:.75;letter-spacing:1px;">
                SMARTBUS
            </div>
        </div>
    </div>

    <div class="nav-links">
        <a href="#home">Home</a>
        <a href="#buses">Bus Tickets</a>
        <a href="#offers">Offers</a>
        <a href="#about">About Us</a>
        <a href="#contact">Contact</a>
        <a href="#" class="login-btn">Login</a>
    </div>

</nav>


<!-- =========================
     HERO
========================== -->

<section class="hero" id="home">

    <div class="hero-content">

        <div class="small-tag">
            🚌 India's Smart Bus Travel Experience
        </div>

        <h1>
            Travel smarter.<br>
            Travel with <span>RALI's.</span>
        </h1>

        <p>
            Book comfortable and reliable bus journeys across India.
            Discover premium buses, affordable fares and a seamless
            booking experience with RALI's SmartBus Tours & Travels.
        </p>

        <div class="hero-buttons">
            <a href="#booking" class="primary-btn">
                Search Buses
            </a>

            <a href="#buses" class="secondary-btn">
                Explore Buses
            </a>
        </div>

    </div>

</section>


<!-- =========================
     BOOKING SEARCH
========================== -->

<section class="booking-wrapper" id="booking">

    <div class="booking-card">

        <div class="booking-title">
            Search & Book Your Bus
        </div>

        <div class="booking-grid">

            <div class="field">

                <label>From</label>

                <div class="input-box">
                    📍
                    <input
                        type="text"
                        id="fromCity"
                        placeholder="Leaving from">
                </div>

            </div>


            <div class="field">

                <label>To</label>

                <div class="input-box">
                    🗺️
                    <input
                        type="text"
                        id="toCity"
                        placeholder="Going to">
                </div>

            </div>


            <div class="field">

                <label>Journey Date</label>

                <div class="input-box">
                    📅
                    <input
                        type="date"
                        id="journeyDate">
                </div>

            </div>


            <div class="field">

                <label>Passengers</label>

                <div class="input-box">
                    👤
                    <select id="passengers">
                        <option>1 Passenger</option>
                        <option>2 Passengers</option>
                        <option>3 Passengers</option>
                        <option>4 Passengers</option>
                        <option>5 Passengers</option>
                        <option>6 Passengers</option>
                    </select>
                </div>

            </div>


            <button
                class="search-btn"
                onclick="searchBuses()">
                Search
            </button>

        </div>

    </div>

</section>


<!-- =========================
     FEATURES
========================== -->

<section class="features">

    <div class="feature-grid">

        <div class="feature">

            <div class="feature-icon">🛡️</div>

            <h3>Safe & Reliable</h3>

            <p>
                Travel with verified operators and
                professionally maintained buses.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">💳</div>

            <h3>Secure Payments</h3>

            <p>
                Fast and secure online booking with
                multiple payment options.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">🎫</div>

            <h3>Easy Booking</h3>

            <p>
                Search buses, select your seat and
                confirm your ticket in minutes.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">📞</div>

            <h3>24/7 Support</h3>

            <p>
                Our support team is available whenever
                you need assistance.
            </p>

        </div>

    </div>

</section>


<!-- =========================
     POPULAR BUS ROUTES
========================== -->

<section class="section" id="buses">

    <div class="section-heading">

        <div>
            <h2>Popular Bus Services</h2>

            <p>
                Comfortable journeys for your next destination
            </p>
        </div>

        <a href="#" class="view-all">
            View All →
        </a>

    </div>


    <div class="bus-grid">


        <!-- BUS 1 -->

        <div class="bus-card">

            <div class="bus-image one">
                <span class="badge">POPULAR</span>
            </div>

            <div class="bus-info">

                <h3>RALI's Premium Sleeper</h3>

                <div class="route">
                    Hyderabad → Bengaluru
                </div>

                <div class="bus-meta">
                    <span>AC</span>
                    <span>WiFi</span>
                    <span>Charging</span>
                    <span>2+1 Seats</span>
                </div>

                <div class="bus-bottom">

                    <div class="price">
                        <small>Starting from</small>
                        <strong>₹899</strong>
                    </div>

                    <button
                        class="book-small"
                        onclick="openBooking('Hyderabad → Bengaluru', 'RALI Premium Sleeper')">
                        Book Now
                    </button>

                </div>

            </div>

        </div>


        <!-- BUS 2 -->

        <div class="bus-card">

            <div class="bus-image two">
                <span class="badge">BEST VALUE</span>
            </div>

            <div class="bus-info">

                <h3>RALI's Smart AC Seater</h3>

                <div class="route">
                    Hyderabad → Chennai
                </div>

                <div class="bus-meta">
                    <span>AC</span>
                    <span>USB</span>
                    <span>Water Bottle</span>
                    <span>2+2 Seats</span>
                </div>

                <div class="bus-bottom">

                    <div class="price">
                        <small>Starting from</small>
                        <strong>₹749</strong>
                    </div>

                    <button
                        class="book-small"
                        onclick="openBooking('Hyderabad → Chennai', 'RALI Smart AC Seater')">
                        Book Now
                    </button>

                </div>

            </div>

        </div>


        <!-- BUS 3 -->

        <div class="bus-card">

            <div class="bus-image three">
                <span class="badge">PREMIUM</span>
            </div>

            <div class="bus-info">

                <h3>RALI's Luxury Sleeper</h3>

                <div class="route">
                    Bengaluru → Mumbai
                </div>

                <div class="bus-meta">
                    <span>AC</span>
                    <span>Sleeper</span>
                    <span>Blanket</span>
                    <span>2+1</span>
                </div>

                <div class="bus-bottom">

                    <div class="price">
                        <small>Starting from</small>
                        <strong>₹1,499</strong>
                    </div>

                    <button
                        class="book-small"
                        onclick="openBooking('Bengaluru → Mumbai', 'RALI Luxury Sleeper')">
                        Book Now
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     OFFER
========================== -->

<section class="offer" id="offers">

    <div>

        <h2>Get ₹200 OFF on your first booking</h2>

        <p>
            Start your journey with RALI's SmartBus Tours & Travels.
        </p>

        <div class="offer-code">
            Use Code: RALIFIRST
        </div>

    </div>

    <button
        class="primary-btn"
        onclick="copyCoupon()">
        Copy Coupon
    </button>

</section>


<!-- =========================
     ABOUT
========================== -->

<section class="section" id="about">

    <div class="section-heading">

        <div>
            <h2>Why RALI's SmartBus?</h2>

            <p>
                Designed to make bus travel simple, smart and comfortable.
            </p>
        </div>

    </div>

    <div class="feature-grid">

        <div class="feature">
            <div class="feature-icon">⚡</div>
            <h3>Fast Booking</h3>
            <p>
                Find your preferred bus and complete
                your booking within minutes.
            </p>
        </div>

        <div class="feature">
            <div class="feature-icon">⭐</div>
            <h3>Premium Experience</h3>
            <p>
                Carefully selected buses with modern
                travel facilities.
            </p>
        </div>

        <div class="feature">
            <div class="feature-icon">💰</div>
            <h3>Affordable Prices</h3>
            <p>
                Competitive fares for short and
                long-distance journeys.
            </p>
        </div>

        <div class="feature">
            <div class="feature-icon">❤️</div>
            <h3>Customer First</h3>
            <p>
                Your comfort and satisfaction are
                our highest priorities.
            </p>
        </div>

    </div>

</section>


<!-- =========================
     FOOTER
========================== -->

<footer id="contact">

    <div class="footer-grid">

        <div class="footer-brand">

            <div class="logo">
                <div class="logo-icon">🚌</div>
                <div>
                    RALI's
                    <div style="font-size:9px;letter-spacing:1px;">
                        SMARTBUS
                    </div>
                </div>
            </div>

            <p style="margin-top:15px;">
                RALI's SmartBus Tours & Travels brings
                smart, comfortable and reliable bus travel
                to passengers across India.
            </p>

        </div>


        <div>
            <h3>Company</h3>
            <a href="#about">About Us</a><br>
            <a href="#">Careers</a><br>
            <a href="#">Contact</a>
        </div>


        <div>
            <h3>Support</h3>
            <a href="#">Help Center</a><br>
            <a href="#">Cancellation</a><br>
            <a href="#">Refund Policy</a>
        </div>


        <div>
            <h3>Follow Us</h3>
            <a href="#">Instagram</a><br>
            <a href="#">Facebook</a><br>
            <a href="#">LinkedIn</a>
        </div>

    </div>


    <div class="copyright">
        © 2026 RALI's SmartBus Tours & Travels. All Rights Reserved.
    </div>

</footer>


<!-- =========================
     BOOKING MODAL
========================== -->

<div class="modal" id="bookingModal">

    <div class="modal-box">

        <span
            class="close"
            onclick="closeBooking()">
            ×
        </span>

        <h2>Complete Your Booking</h2>

        <p id="selectedBus">
            Select your travel details.
        </p>


        <div class="modal-field">

            <label>Passenger Name</label>

            <input
                type="text"
                id="passengerName"
                placeholder="Enter passenger name">

        </div>


        <div class="modal-field">

            <label>Mobile Number</label>

            <input
                type="tel"
                id="mobile"
                placeholder="Enter mobile number">

        </div>


        <div class="modal-field">

            <label>Seat Type</label>

            <select id="seatType">
                <option>Window Seat</option>
                <option>Middle Seat</option>
                <option>Aisle Seat</option>
                <option>Single Sleeper</option>
                <option>Double Sleeper</option>
            </select>

        </div>


        <button
            class="confirm-btn"
            onclick="confirmBooking()">
            Continue to Payment
        </button>

    </div>

</div>


<!-- =========================
     JAVASCRIPT
========================== -->

<script>

    /* Set minimum journey date */

    const dateInput = document.getElementById("journeyDate");

    const today = new Date();

    const yyyy = today.getFullYear();

    const mm = String(today.getMonth() + 1).padStart(2, "0");

    const dd = String(today.getDate()).padStart(2, "0");

    dateInput.min = `${yyyy}-${mm}-${dd}`;


    /* Search buses */

    function searchBuses() {

        const from =
            document.getElementById("fromCity").value.trim();

        const to =
            document.getElementById("toCity").value.trim();

        const date =
            document.getElementById("journeyDate").value;


        if (!from || !to || !date) {

            alert(
                "Please enter From, To and Journey Date."
            );

            return;
        }


        document.getElementById("buses")
            .scrollIntoView({
                behavior: "smooth"
            });


        setTimeout(() => {

            alert(
                `Searching buses from ${from} to ${to}...`
            );

        }, 500);

    }


    /* Open booking popup */

    function openBooking(route, busName) {

        document.getElementById("selectedBus").innerText =
            `${busName} • ${route}`;

        document
            .getElementById("bookingModal")
            .classList.add("active");

    }


    /* Close popup */

    function closeBooking() {

        document
            .getElementById("bookingModal")
            .classList.remove("active");

    }


    /* Confirm booking */

    function confirmBooking() {

        const name =
            document.getElementById("passengerName")
            .value.trim();

        const mobile =
            document.getElementById("mobile")
            .value.trim();


        if (!name || !mobile) {

            alert(
                "Please enter passenger name and mobile number."
            );

            return;
        }


        if (mobile.length < 10) {

            alert(
                "Please enter a valid mobile number."
            );

            return;
        }


        alert(
            "Booking details submitted successfully! " +
            "Payment integration can be connected next."
        );

        closeBooking();

    }


    /* Coupon */

    function copyCoupon() {

        navigator.clipboard.writeText("RALIFIRST");

        alert(
            "Coupon RALIFIRST copied successfully!"
        );

    }


    /* Close modal when clicking outside */

    document
        .getElementById("bookingModal")
        .addEventListener("click", function(event) {

            if (event.target === this) {

                closeBooking();

            }

        });

</script>

</body>
</html>
```
