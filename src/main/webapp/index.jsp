<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ralis Bus Tours & Travels | Bus Booking</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@500;600;700;800&display=swap" rel="stylesheet">

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
            font-family: "Inter", sans-serif;
            background: #f5f7fb;
            color: #172033;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,.95);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid #e8ebf2;
        }

        .nav-container {
            max-width: 1250px;
            margin: auto;
            height: 74px;
            padding: 0 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
            color: #172033;
        }

        .logo-icon {
            width: 45px;
            height: 45px;
            border-radius: 13px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            background: #e63946;
            color: white;
            box-shadow: 0 8px 20px rgba(230,57,70,.25);
        }

        .logo-text strong {
            display: block;
            font-family: "Poppins", sans-serif;
            font-size: 19px;
            line-height: 20px;
        }

        .logo-text span {
            font-size: 11px;
            color: #6b7280;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .nav-links a {
            text-decoration: none;
            color: #4b5563;
            font-weight: 600;
            font-size: 14px;
            transition: .2s;
        }

        .nav-links a:hover {
            color: #e63946;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            border: 1px solid #e5e7eb;
            background: white;
            border-radius: 10px;
            font-size: 17px;
        }

        .icon-btn:hover {
            background: #f7f8fa;
        }

        .login-btn {
            border: none;
            background: #172033;
            color: white;
            padding: 11px 18px;
            border-radius: 9px;
            font-weight: 700;
        }

        .mobile-menu {
            display: none;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 490px;
            background:
                linear-gradient(90deg, rgba(12,18,32,.95), rgba(12,18,32,.72), rgba(12,18,32,.3)),
                url("https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?auto=format&fit=crop&w=1800&q=85")
                center/cover;
            color: white;
            display: flex;
            align-items: center;
        }

        .hero-container {
            max-width: 1250px;
            width: 100%;
            margin: auto;
            padding: 65px 20px;
        }

        .hero-content {
            max-width: 720px;
        }

        .hero-badge {
            display: inline-flex;
            padding: 8px 14px;
            border-radius: 30px;
            background: rgba(255,255,255,.13);
            border: 1px solid rgba(255,255,255,.2);
            font-size: 13px;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-family: "Poppins", sans-serif;
            font-size: clamp(38px, 5vw, 64px);
            line-height: 1.05;
            margin-bottom: 18px;
        }

        .hero h1 span {
            color: #ff5964;
        }

        .hero p {
            font-size: 17px;
            color: #dbe0ea;
            max-width: 620px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        /* ================= SEARCH BOX ================= */

        .search-card {
            max-width: 1150px;
            margin: -65px auto 0;
            position: relative;
            z-index: 10;
            background: white;
            border-radius: 18px;
            padding: 24px;
            box-shadow: 0 20px 60px rgba(20,30,50,.14);
        }

        .trip-tabs {
            display: flex;
            gap: 10px;
            margin-bottom: 22px;
        }

        .trip-tab {
            border: none;
            padding: 9px 18px;
            border-radius: 20px;
            background: #f1f3f7;
            color: #5b6473;
            font-weight: 700;
        }

        .trip-tab.active {
            background: #172033;
            color: white;
        }

        .search-grid {
            display: grid;
            grid-template-columns: 1.25fr 1.25fr 1fr 1fr auto;
            gap: 12px;
            align-items: end;
        }

        .field label {
            display: block;
            font-size: 12px;
            font-weight: 700;
            color: #687182;
            margin-bottom: 7px;
        }

        .field-box {
            height: 52px;
            border: 1px solid #dfe3ea;
            border-radius: 10px;
            display: flex;
            align-items: center;
            padding: 0 13px;
            background: #fff;
        }

        .field-box:focus-within {
            border-color: #e63946;
            box-shadow: 0 0 0 3px rgba(230,57,70,.08);
        }

        .field-box span {
            margin-right: 8px;
            font-size: 17px;
        }

        .field-box input,
        .field-box select {
            width: 100%;
            border: none;
            outline: none;
            background: transparent;
            color: #172033;
            font-size: 14px;
            font-weight: 600;
        }

        .search-btn {
            height: 52px;
            border: none;
            border-radius: 10px;
            padding: 0 23px;
            background: #e63946;
            color: white;
            font-weight: 800;
            font-size: 14px;
            transition: .2s;
        }

        .search-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(230,57,70,.22);
        }

        /* ================= MAIN ================= */

        .container {
            max-width: 1250px;
            margin: auto;
            padding: 0 20px;
        }

        section {
            padding: 75px 0;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .section-heading h2 {
            font-family: "Poppins", sans-serif;
            font-size: 32px;
            margin-bottom: 8px;
        }

        .section-heading p {
            color: #6b7280;
        }

        /* ================= FEATURES ================= */

        .features {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 18px;
            padding-top: 60px;
        }

        .feature-card {
            background: white;
            padding: 25px;
            border-radius: 16px;
            border: 1px solid #e8ebf0;
            transition: .25s;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(20,30,50,.08);
        }

        .feature-icon {
            width: 48px;
            height: 48px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            background: #fff0f1;
            font-size: 23px;
            margin-bottom: 15px;
        }

        .feature-card h3 {
            font-size: 16px;
            margin-bottom: 7px;
        }

        .feature-card p {
            font-size: 13px;
            line-height: 1.6;
            color: #747c8b;
        }

        /* ================= POPULAR ROUTES ================= */

        .routes-grid {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 18px;
        }

        .route-card {
            min-height: 175px;
            border-radius: 16px;
            overflow: hidden;
            position: relative;
            color: white;
            background-size: cover;
            background-position: center;
            cursor: pointer;
        }

        .route-card::before {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(transparent 20%, rgba(0,0,0,.85));
        }

        .route-content {
            position: absolute;
            bottom: 18px;
            left: 18px;
            right: 18px;
        }

        .route-content small {
            opacity: .8;
        }

        .route-content h3 {
            font-size: 18px;
            margin: 4px 0;
        }

        /* ================= RESULTS ================= */

        .results-section {
            background: #f0f2f6;
        }

        .results-layout {
            display: grid;
            grid-template-columns: 240px 1fr;
            gap: 25px;
        }

        .filters {
            background: white;
            border-radius: 15px;
            padding: 20px;
            height: fit-content;
            border: 1px solid #e6e9ee;
        }

        .filters h3 {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .filter-group {
            padding: 17px 0;
            border-top: 1px solid #edf0f4;
        }

        .filter-group:first-of-type {
            border-top: none;
        }

        .filter-title {
            font-size: 13px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .filter-option {
            display: flex;
            align-items: center;
            gap: 8px;
            margin: 10px 0;
            color: #606979;
            font-size: 13px;
        }

        .filter-option input {
            accent-color: #e63946;
        }

        .results-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 18px;
        }

        .results-header h2 {
            font-size: 23px;
        }

        .results-header p {
            font-size: 13px;
            color: #727a89;
            margin-top: 5px;
        }

        .sort-select {
            border: 1px solid #dfe3ea;
            padding: 10px 12px;
            border-radius: 9px;
            background: white;
        }

        /* ================= BUS CARD ================= */

        .bus-list {
            display: grid;
            gap: 15px;
        }

        .bus-card {
            background: white;
            border: 1px solid #e5e8ed;
            border-radius: 15px;
            padding: 20px;
            transition: .2s;
        }

        .bus-card:hover {
            box-shadow: 0 12px 30px rgba(20,30,50,.08);
            border-color: #d9dde5;
        }

        .bus-main {
            display: grid;
            grid-template-columns: 1.3fr 1.4fr 1fr .8fr;
            gap: 20px;
            align-items: center;
        }

        .bus-company {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .bus-logo {
            width: 50px;
            height: 50px;
            background: #f1f3f7;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 25px;
        }

        .bus-company strong {
            display: block;
            font-size: 15px;
        }

        .bus-company span {
            color: #7a8290;
            font-size: 12px;
        }

        .timing {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .time strong {
            font-size: 18px;
        }

        .time small {
            display: block;
            color: #818998;
            margin-top: 3px;
        }

        .route-line {
            flex: 1;
            text-align: center;
            color: #929aa8;
            font-size: 11px;
        }

        .route-line div {
            border-top: 1px dashed #bdc3cc;
            margin: 5px 0;
        }

        .bus-price {
            text-align: right;
        }

        .bus-price strong {
            display: block;
            font-size: 20px;
        }

        .bus-price span {
            color: #808896;
            font-size: 11px;
        }

        .select-seat-btn {
            margin-top: 15px;
            width: 100%;
            height: 42px;
            border: none;
            background: #172033;
            color: white;
            border-radius: 8px;
            font-weight: 700;
        }

        .select-seat-btn:hover {
            background: #e63946;
        }

        .bus-extra {
            margin-top: 17px;
            padding-top: 14px;
            border-top: 1px solid #edf0f4;
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .tag {
            background: #f4f6f8;
            padding: 5px 9px;
            border-radius: 6px;
            color: #626b79;
            font-size: 11px;
            font-weight: 600;
        }

        .rating {
            color: #18864b;
            font-weight: 800;
            font-size: 12px;
        }

        /* ================= MODAL ================= */

        .modal-overlay {
            display: none;
            position: fixed;
            inset: 0;
            z-index: 2000;
            background: rgba(8,12,20,.65);
            backdrop-filter: blur(5px);
            padding: 20px;
            overflow-y: auto;
        }

        .modal-overlay.show {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal {
            background: white;
            width: 100%;
            max-width: 900px;
            max-height: 92vh;
            overflow-y: auto;
            border-radius: 20px;
            box-shadow: 0 30px 80px rgba(0,0,0,.25);
        }

        .modal-header {
            padding: 20px 25px;
            border-bottom: 1px solid #edf0f4;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .modal-header h2 {
            font-size: 20px;
        }

        .close-btn {
            border: none;
            background: #f1f3f6;
            width: 36px;
            height: 36px;
            border-radius: 9px;
            font-size: 18px;
        }

        .modal-body {
            padding: 25px;
        }

        /* ================= SEAT SELECTION ================= */

        .booking-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .bus-preview {
            background: #f5f7fa;
            border-radius: 15px;
            padding: 20px;
        }

        .bus-preview h3 {
            text-align: center;
            margin-bottom: 18px;
        }

        .driver {
            background: #172033;
            color: white;
            width: 80px;
            text-align: center;
            padding: 8px;
            border-radius: 8px;
            font-size: 11px;
            margin: 0 auto 20px;
        }

        .seat-layout {
            max-width: 270px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 13px;
        }

        .seat-row {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        .seat {
            width: 38px;
            height: 38px;
            border-radius: 8px 8px 5px 5px;
            border: 1px solid #cfd5de;
            background: #f7f8fa;
            font-size: 10px;
            font-weight: 700;
        }

        .seat:hover:not(.booked) {
            border-color: #e63946;
        }

        .seat.selected {
            background: #e63946;
            border-color: #e63946;
            color: white;
        }

        .seat.booked {
            background: #d9dde3;
            color: #8b929d;
            cursor: not-allowed;
        }

        .seat-legend {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 18px;
            font-size: 10px;
            color: #697180;
        }

        .legend-item {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .legend-box {
            width: 15px;
            height: 15px;
            border-radius: 4px;
            background: #f7f8fa;
            border: 1px solid #cfd5de;
        }

        .legend-box.selected {
            background: #e63946;
            border-color: #e63946;
        }

        .legend-box.booked {
            background: #d9dde3;
        }

        .booking-summary {
            border: 1px solid #e5e8ed;
            border-radius: 15px;
            padding: 20px;
            height: fit-content;
        }

        .summary-bus {
            padding-bottom: 15px;
            border-bottom: 1px solid #edf0f4;
            margin-bottom: 15px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            margin: 11px 0;
            font-size: 13px;
            color: #697180;
        }

        .summary-row.total {
            padding-top: 13px;
            border-top: 1px solid #edf0f4;
            color: #172033;
            font-size: 18px;
            font-weight: 800;
        }

        .continue-btn {
            width: 100%;
            height: 45px;
            background: #e63946;
            border: none;
            color: white;
            border-radius: 9px;
            font-weight: 800;
            margin-top: 10px;
        }

        /* ================= PASSENGER FORM ================= */

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }

        .form-group label {
            display: block;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 7px;
            color: #566071;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            height: 45px;
            border: 1px solid #dfe3ea;
            border-radius: 8px;
            padding: 0 12px;
            outline: none;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #e63946;
        }

        .full {
            grid-column: 1/-1;
        }

        /* ================= SUCCESS ================= */

        .success {
            text-align: center;
            padding: 45px 25px;
        }

        .success-icon {
            width: 75px;
            height: 75px;
            margin: auto;
            background: #e8f8ef;
            color: #16934f;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 38px;
            margin-bottom: 20px;
        }

        .ticket {
            max-width: 500px;
            margin: 25px auto;
            text-align: left;
            background: #f7f8fa;
            border-radius: 12px;
            padding: 20px;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #101827;
            color: white;
            padding: 60px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1.3fr;
            gap: 40px;
        }

        .footer-brand p {
            color: #9da6b5;
            line-height: 1.7;
            font-size: 13px;
            margin-top: 15px;
            max-width: 350px;
        }

        footer h3 {
            font-size: 14px;
            margin-bottom: 18px;
        }

        footer a {
            display: block;
            color: #9da6b5;
            text-decoration: none;
            margin: 10px 0;
            font-size: 13px;
        }

        footer a:hover {
            color: white;
        }

        .footer-bottom {
            border-top: 1px solid #263143;
            margin-top: 40px;
            padding-top: 20px;
            color: #858f9f;
            font-size: 12px;
            display: flex;
            justify-content: space-between;
        }

        /* ================= TOAST ================= */

        .toast {
            position: fixed;
            right: 25px;
            bottom: 25px;
            z-index: 5000;
            background: #172033;
            color: white;
            padding: 14px 18px;
            border-radius: 10px;
            box-shadow: 0 15px 35px rgba(0,0,0,.2);
            transform: translateY(100px);
            opacity: 0;
            transition: .3s;
            font-size: 13px;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        .no-results {
            background: white;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            color: #707887;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width:1000px) {
            .search-grid {
                grid-template-columns: 1fr 1fr;
            }

            .search-btn {
                width: 100%;
            }

            .features,
            .routes-grid {
                grid-template-columns: 1fr 1fr;
            }

            .bus-main {
                grid-template-columns: 1fr 1fr;
            }

            .bus-price {
                text-align: left;
            }

            .results-layout {
                grid-template-columns: 1fr;
            }

            .filters {
                display: none;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:700px) {
            .nav-links {
                display: none;
            }

            .mobile-menu {
                display: block;
            }

            .nav-actions .icon-btn {
                display: none;
            }

            .hero {
                min-height: 500px;
            }

            .hero-container {
                padding-top: 45px;
            }

            .search-card {
                margin: -35px 15px 0;
                padding: 18px;
            }

            .search-grid {
                grid-template-columns: 1fr;
            }

            .features,
            .routes-grid {
                grid-template-columns: 1fr;
            }

            .bus-main {
                grid-template-columns: 1fr;
            }

            .booking-grid {
                grid-template-columns: 1fr;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .full {
                grid-column: auto;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .footer-bottom {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar">
    <div class="nav-container">

        <a href="#" class="logo">
            <div class="logo-icon">🚌</div>
            <div class="logo-text">
                <strong>Ralis Bus</strong>
                <span>TOURS & TRAVELS</span>
            </div>
        </a>

        <div class="nav-links">
            <a href="#home">Home</a>
            <a href="#routes">Routes</a>
            <a href="#buses">Buses</a>
            <a href="#offers">Offers</a>
            <a href="#contact">Contact</a>
        </div>

        <div class="nav-actions">
            <button class="icon-btn" onclick="toggleDarkMode()" title="Dark Mode">🌙</button>
            <button class="login-btn" onclick="showToast('Login feature coming soon!')">
                Login
            </button>
            <button class="icon-btn mobile-menu" onclick="showToast('Use the menu links below to explore')">
                ☰
            </button>
        </div>

    </div>
</nav>


<!-- ================= HERO ================= -->

<section class="hero" id="home">
    <div class="hero-container">

        <div class="hero-content">

            <div class="hero-badge">
                🛡️ Safe • Reliable • Comfortable Travel
            </div>

            <h1>
                Travel More.<br>
                <span>Worry Less.</span>
            </h1>

            <p>
                Book buses across Andhra Pradesh, Telangana and major cities
                with Ralis Bus Tours & Travels. Find the best routes,
                timings and fares in seconds.
            </p>

        </div>

    </div>
</section>


<!-- ================= SEARCH ================= -->

<div class="container">

    <div class="search-card">

        <div class="trip-tabs">
            <button class="trip-tab active">One Way</button>
            <button class="trip-tab" onclick="showToast('Round trip search selected')">
                Round Trip
            </button>
        </div>

        <div class="search-grid">

            <div class="field">
                <label>FROM</label>
                <div class="field-box">
                    <span>📍</span>
                    <select id="fromCity">
                        <option value="Hyderabad">Hyderabad</option>
                        <option value="Vijayawada">Vijayawada</option>
                        <option value="Visakhapatnam">Visakhapatnam</option>
                        <option value="Tirupati">Tirupati</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Bangalore">Bangalore</option>
                        <option value="Kandukur">Kandukur</option>
                    </select>
                </div>
            </div>

            <div class="field">
                <label>TO</label>
                <div class="field-box">
                    <span>📍</span>
                    <select id="toCity">
                        <option value="Vijayawada">Vijayawada</option>
                        <option value="Hyderabad">Hyderabad</option>
                        <option value="Visakhapatnam">Visakhapatnam</option>
                        <option value="Tirupati">Tirupati</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Bangalore">Bangalore</option>
                        <option value="Kandukur">Kandukur</option>
                    </select>
                </div>
            </div>

            <div class="field">
                <label>JOURNEY DATE</label>
                <div class="field-box">
                    <span>📅</span>
                    <input type="date" id="journeyDate">
                </div>
            </div>

            <div class="field">
                <label>PASSENGERS</label>
                <div class="field-box">
                    <span>👤</span>
                    <select id="passengers">
                        <option value="1">1 Passenger</option>
                        <option value="2">2 Passengers</option>
                        <option value="3">3 Passengers</option>
                        <option value="4">4 Passengers</option>
                        <option value="5">5 Passengers</option>
                    </select>
                </div>
            </div>

            <button class="search-btn" onclick="searchBuses()">
                🔎 Search Buses
            </button>

        </div>

    </div>

</div>


<!-- ================= FEATURES ================= -->

<section>
    <div class="container">

        <div class="features">

            <div class="feature-card">
                <div class="feature-icon">🛡️</div>
                <h3>Safe Travel</h3>
                <p>Verified buses and experienced drivers for a comfortable journey.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">💰</div>
                <h3>Best Prices</h3>
                <p>Compare different buses and choose the fare that suits you.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">🎫</div>
                <h3>Easy Booking</h3>
                <p>Search, select your seat and complete your booking in minutes.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">📞</div>
                <h3>24/7 Support</h3>
                <p>Our support team is available whenever you need assistance.</p>
            </div>

        </div>

    </div>
</section>


<!-- ================= POPULAR ROUTES ================= -->

<section id="routes">
    <div class="container">

        <div class="section-heading">
            <h2>Popular Routes</h2>
            <p>Book your next journey from our most popular destinations.</p>
        </div>

        <div class="routes-grid">

            <div class="route-card"
                 onclick="selectRoute('Hyderabad','Vijayawada')"
                 style="background-image:url('https://images.unsplash.com/photo-1539635278303-d4002c07eae3?auto=format&fit=crop&w=700&q=80')">
                <div class="route-content">
                    <small>Popular Route</small>
                    <h3>Hyderabad → Vijayawada</h3>
                    <small>Starting from ₹499</small>
                </div>
            </div>

            <div class="route-card"
                 onclick="selectRoute('Hyderabad','Tirupati')"
                 style="background-image:url('https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=700&q=80')">
                <div class="route-content">
                    <small>Popular Route</small>
                    <h3>Hyderabad → Tirupati</h3>
                    <small>Starting from ₹699</small>
                </div>
            </div>

            <div class="route-card"
                 onclick="selectRoute('Vijayawada','Visakhapatnam')"
                 style="background-image:url('https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=700&q=80')">
                <div class="route-content">
                    <small>Popular Route</small>
                    <h3>Vijayawada → Vizag</h3>
                    <small>Starting from ₹549</small>
                </div>
            </div>

            <div class="route-card"
                 onclick="selectRoute('Hyderabad','Bangalore')"
                 style="background-image:url('https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=700&q=80')">
                <div class="route-content">
                    <small>Popular Route</small>
                    <h3>Hyderabad → Bangalore</h3>
                    <small>Starting from ₹799</small>
                </div>
            </div>

        </div>

    </div>
</section>


<!-- ================= BUS RESULTS ================= -->

<section class="results-section" id="buses">

    <div class="container">

        <div class="section-heading">
            <h2>Available Buses</h2>
            <p>Choose from our comfortable and reliable buses.</p>
        </div>

        <div class="results-layout">

            <!-- FILTERS -->

            <aside class="filters">

                <h3>Filter Buses</h3>

                <div class="filter-group">

                    <div class="filter-title">Bus Type</div>

                    <label class="filter-option">
                        <input type="checkbox" class="type-filter" value="AC">
                        AC
                    </label>

                    <label class="filter-option">
                        <input type="checkbox" class="type-filter" value="Sleeper">
                        Sleeper
                    </label>

                    <label class="filter-option">
                        <input type="checkbox" class="type-filter" value="Seater">
                        Seater
                    </label>

                </div>

                <div class="filter-group">

                    <div class="filter-title">Departure</div>

                    <label class="filter-option">
                        <input type="radio" name="timeFilter" value="morning">
                        Morning
                    </label>

                    <label class="filter-option">
                        <input type="radio" name="timeFilter" value="evening">
                        Evening
                    </label>

                    <label class="filter-option">
                        <input type="radio" name="timeFilter" value="night">
                        Night
                    </label>

                    <label class="filter-option">
                        <input type="radio" name="timeFilter" value="all" checked>
                        All
                    </label>

                </div>

                <div class="filter-group">

                    <div class="filter-title">Maximum Price</div>

                    <input
                        type="range"
                        id="priceRange"
                        min="300"
                        max="2000"
                        value="2000"
                        style="width:100%; accent-color:#e63946;"
                        oninput="updatePrice(this.value)"
                    >

                    <div style="font-size:12px;margin-top:8px;color:#687182;">
                        Up to ₹<span id="priceValue">2000</span>
                    </div>

                </div>

            </aside>


            <!-- BUS LIST -->

            <div>

                <div class="results-header">

                    <div>
                        <h2 id="resultsTitle">Popular Bus Services</h2>
                        <p id="resultCount">Showing available buses</p>
                    </div>

                    <select class="sort-select" onchange="sortBuses(this.value)">
                        <option value="recommended">Recommended</option>
                        <option value="priceLow">Price: Low to High</option>
                        <option value="priceHigh">Price: High to Low</option>
                        <option value="departure">Earliest Departure</option>
                    </select>

                </div>

                <div class="bus-list" id="busList"></div>

            </div>

        </div>

    </div>

</section>


<!-- ================= OFFERS ================= -->

<section id="offers">

    <div class="container">

        <div class="section-heading">
            <h2>Travel Offers</h2>
            <p>Save more on your next journey.</p>
        </div>

        <div class="features">

            <div class="feature-card">
                <div class="feature-icon">🎉</div>
                <h3>FIRST50</h3>
                <p>Get up to ₹50 OFF on your first booking.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">💳</div>
                <h3>PAY20</h3>
                <p>Save ₹20 when you pay online.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">👨‍👩‍👧</div>
                <h3>FAMILY100</h3>
                <p>Group bookings can get up to ₹100 OFF.</p>
            </div>

            <div class="feature-card">
                <div class="feature-icon">⭐</div>
                <h3>Ralis Rewards</h3>
                <p>Earn reward points with every booking.</p>
            </div>

        </div>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer id="contact">

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <div class="logo">
                    <div class="logo-icon">🚌</div>

                    <div class="logo-text">
                        <strong style="color:white;">Ralis Bus</strong>
                        <span style="color:#9da6b5;">TOURS & TRAVELS</span>
                    </div>
                </div>

                <p>
                    Your trusted travel partner for safe, comfortable and
                    affordable bus journeys across South India.
                </p>

            </div>

            <div>
                <h3>Company</h3>
                <a href="#home">About Us</a>
                <a href="#routes">Routes</a>
                <a href="#offers">Offers</a>
                <a href="#">Careers</a>
            </div>

            <div>
                <h3>Support</h3>
                <a href="#">Help Center</a>
                <a href="#">Cancellation</a>
                <a href="#">Refund Policy</a>
                <a href="#">Terms & Conditions</a>
            </div>

            <div>
                <h3>Contact</h3>
                <a href="tel:+919876543210">📞 +91 98765 43210</a>
                <a href="mailto:support@ralisbus.com">✉️ support@ralisbus.com</a>
                <a href="#">📍 Hyderabad, Telangana</a>
            </div>

        </div>

        <div class="footer-bottom">
            <span>© 2026 Ralis Bus Tours & Travels. All rights reserved.</span>
            <span>Made for comfortable journeys 🚌</span>
        </div>

    </div>

</footer>


<!-- ================= BOOKING MODAL ================= -->

<div class="modal-overlay" id="bookingModal">

    <div class="modal">

        <div class="modal-header">

            <h2 id="modalTitle">Select Your Seats</h2>

            <button class="close-btn" onclick="closeModal()">×</button>

        </div>

        <div class="modal-body" id="modalBody"></div>

    </div>

</div>


<!-- ================= TOAST ================= -->

<div class="toast" id="toast"></div>


<script>

    /* =========================================================
       BUS DATABASE
    ========================================================= */

    const buses = [

        {
            id: 1,
            company: "Ralis Express",
            from: "Hyderabad",
            to: "Vijayawada",
            departure: "06:30 AM",
            arrival: "11:00 AM",
            duration: "4h 30m",
            type: "AC Sleeper",
            price: 650,
            seats: 18,
            rating: "4.7",
            reviews: 328,
            amenities: ["WiFi", "Charging", "Blanket"],
            period: "morning"
        },

        {
            id: 2,
            company: "Ralis Premium",
            from: "Hyderabad",
            to: "Vijayawada",
            departure: "09:15 AM",
            arrival: "01:45 PM",
            duration: "4h 30m",
            type: "AC Seater",
            price: 499,
            seats: 26,
            rating: "4.5",
            reviews: 214,
            amenities: ["Charging", "Water Bottle"],
            period: "morning"
        },

        {
            id: 3,
            company: "Ralis Night Rider",
            from: "Hyderabad",
            to: "Vijayawada",
            departure: "10:30 PM",
            arrival: "05:00 AM",
            duration: "6h 30m",
            type: "AC Sleeper",
            price: 799,
            seats: 12,
            rating: "4.8",
            reviews: 451,
            amenities: ["WiFi", "Blanket", "Pillow"],
            period: "night"
        },

        {
            id: 4,
            company: "Ralis Travels",
            from: "Hyderabad",
            to: "Tirupati",
            departure: "07:00 PM",
            arrival: "06:00 AM",
            duration: "11h",
            type: "AC Sleeper",
            price: 999,
            seats: 15,
            rating: "4.6",
            reviews: 187,
            amenities: ["WiFi", "Blanket", "Charging"],
            period: "evening"
        },

        {
            id: 5,
            company: "Ralis Volvo",
            from: "Hyderabad",
            to: "Bangalore",
            departure: "08:30 PM",
            arrival: "06:30 AM",
            duration: "10h",
            type: "AC Sleeper",
            price: 1199,
            seats: 10,
            rating: "4.9",
            reviews: 672,
            amenities: ["WiFi", "Blanket", "Pillow", "Charging"],
            period: "evening"
        },

        {
            id: 6,
            company: "Ralis Super Fast",
            from: "Vijayawada",
            to: "Visakhapatnam",
            departure: "05:45 AM",
            arrival: "10:15 AM",
            duration: "4h 30m",
            type: "AC Seater",
            price: 549,
            seats: 21,
            rating: "4.4",
            reviews: 142,
            amenities: ["Charging", "Water Bottle"],
            period: "morning"
        },

        {
            id: 7,
            company: "Ralis Comfort",
            from: "Hyderabad",
            to: "Visakhapatnam",
            departure: "08:00 PM",
            arrival: "06:30 AM",
            duration: "10h 30m",
            type: "AC Sleeper",
            price: 1099,
            seats: 16,
            rating: "4.7",
            reviews: 293,
            amenities: ["WiFi", "Blanket", "Charging"],
            period: "evening"
        },

        {
            id: 8,
            company: "Ralis Budget",
            from: "Kandukur",
            to: "Hyderabad",
            departure: "06:00 AM",
            arrival: "11:30 AM",
            duration: "5h 30m",
            type: "Non-AC Seater",
            price: 399,
            seats: 29,
            rating: "4.2",
            reviews: 96,
            amenities: ["Charging"],
            period: "morning"
        },

        {
            id: 9,
            company: "Ralis Chennai Express",
            from: "Hyderabad",
            to: "Chennai",
            departure: "09:00 PM",
            arrival: "07:00 AM",
            duration: "10h",
            type: "AC Sleeper",
            price: 1099,
            seats: 14,
            rating: "4.7",
            reviews: 384,
            amenities: ["WiFi", "Blanket", "Charging"],
            period: "evening"
        },

        {
            id: 10,
            company: "Ralis Coastal Express",
            from: "Vijayawada",
            to: "Visakhapatnam",
            departure: "08:30 PM",
            arrival: "01:30 AM",
            duration: "5h",
            type: "AC Sleeper",
            price: 699,
            seats: 17,
            rating: "4.6",
            reviews: 221,
            amenities: ["WiFi", "Charging"],
            period: "evening"
        }

    ];


    let currentBuses = [...buses];
    let selectedBus = null;
    let selectedSeats = [];


    /* =========================================================
       INITIALIZATION
    ========================================================= */

    document.addEventListener("DOMContentLoaded", function() {

        const today = new Date();

        const yyyy = today.getFullYear();
        const mm = String(today.getMonth() + 1).padStart(2, "0");
        const dd = String(today.getDate()).padStart(2, "0");

        document.getElementById("journeyDate").value =
            `${yyyy}-${mm}-${dd}`;

        document.getElementById("journeyDate").min =
            `${yyyy}-${mm}-${dd}`;

        renderBuses(buses);

        document.querySelectorAll(".type-filter").forEach(function(box) {
            box.addEventListener("change", applyFilters);
        });

        document.querySelectorAll("input[name='timeFilter']").forEach(function(box) {
            box.addEventListener("change", applyFilters);
        });

    });


    /* =========================================================
       SEARCH
    ========================================================= */

    function searchBuses() {

        const from = document.getElementById("fromCity").value;
        const to = document.getElementById("toCity").value;
        const date = document.getElementById("journeyDate").value;

        if (from === to) {
            showToast("From and To locations cannot be the same.");
            return;
        }

        currentBuses = buses.filter(function(bus) {

            return bus.from === from && bus.to === to;

        });

        /*
         If the exact route is not available in our demo database,
         show all buses so the UI remains useful.
        */

        if (currentBuses.length === 0) {

            showToast(
                "No exact demo buses found for this route. Showing popular services."
            );

            currentBuses = [...buses];

        } else {

            showToast(
                currentBuses.length + " buses found for " +
                from + " → " + to
            );

        }

        document.getElementById("resultsTitle").textContent =
            from + " → " + to;

        renderBuses(currentBuses);

        document.getElementById("buses").scrollIntoView({
            behavior: "smooth"
        });

    }


    /* =========================================================
       ROUTE QUICK SEARCH
    ========================================================= */

    function selectRoute(from, to) {

        document.getElementById("fromCity").value = from;
        document.getElementById("toCity").value = to;

        searchBuses();

    }


    /* =========================================================
       RENDER BUSES
    ========================================================= */

    function renderBuses(list) {

        const container = document.getElementById("busList");

        container.innerHTML = "";

        document.getElementById("resultCount").textContent =
            list.length + " bus service(s) available";


        if (list.length === 0) {

            container.innerHTML = `
                <div class="no-results">
                    <div style="font-size:40px;margin-bottom:10px;">🚌</div>
                    <h3>No buses found</h3>
                    <p>Try changing your filters or search route.</p>
                </div>
            `;

            return;
        }


        list.forEach(function(bus) {

            const card = document.createElement("div");

            card.className = "bus-card";

            card.innerHTML = `

                <div class="bus-main">

                    <div class="bus-company">

                        <div class="bus-logo">🚌</div>

                        <div>
                            <strong>${bus.company}</strong>
                            <span>${bus.type}</span>
                            <div class="rating">
                                ★ ${bus.rating}
                                <span style="color:#89919f;font-weight:400;">
                                    (${bus.reviews} reviews)
                                </span>
                            </div>
                        </div>

                    </div>


                    <div class="timing">

                        <div class="time">
                            <strong>${bus.departure}</strong>
                            <small>${bus.from}</small>
                        </div>

                        <div class="route-line">
                            <span>${bus.duration}</span>
                            <div></div>
                            <span>Direct</span>
                        </div>

                        <div class="time">
                            <strong>${bus.arrival}</strong>
                            <small>${bus.to}</small>
                        </div>

                    </div>


                    <div>

                        <div style="font-size:12px;color:#697180;">
                            Available Seats
                        </div>

                        <div style="font-size:18px;font-weight:800;margin-top:4px;">
                            ${bus.seats}
                        </div>

                    </div>


                    <div class="bus-price">

                        <strong>₹${bus.price}</strong>

                        <span>per passenger</span>

                        <button
                            class="select-seat-btn"
                            onclick="openSeatSelection(${bus.id})">
                            Select Seat
                        </button>

                    </div>

                </div>


                <div class="bus-extra">

                    <span class="tag">❄ ${bus.type}</span>

                    ${bus.amenities.map(function(item) {
                        return `<span class="tag">✓ ${item}</span>`;
                    }).join("")}

                    <span class="tag">🛡️ Live Tracking</span>

                </div>

            `;

            container.appendChild(card);

        });

    }


    /* =========================================================
       SEAT SELECTION
    ========================================================= */

    function openSeatSelection(busId) {

        selectedBus = buses.find(function(bus) {
            return bus.id === busId;
        });

        selectedSeats = [];

        document.getElementById("modalTitle").textContent =
            "Select Your Seats";

        const modalBody = document.getElementById("modalBody");

        modalBody.innerHTML = `

            <div class="booking-grid">

                <div class="bus-preview">

                    <h3>${selectedBus.company}</h3>

                    <div class="driver">
                        DRIVER
                    </div>

                    <div class="seat-layout">

                        ${generateSeats()}

                    </div>

                    <div class="seat-legend">

                        <div class="legend-item">
                            <span class="legend-box"></span>
                            Available
                        </div>

                        <div class="legend-item">
                            <span class="legend-box selected"></span>
                            Selected
                        </div>

                        <div class="legend-item">
                            <span class="legend-box booked"></span>
                            Booked
                        </div>

                    </div>

                </div>


                <div class="booking-summary">

                    <div class="summary-bus">

                        <strong>
                            ${selectedBus.from} → ${selectedBus.to}
                        </strong>

                        <div style="font-size:12px;color:#727b89;margin-top:6px;">
                            ${selectedBus.departure}
                            •
                            ${selectedBus.duration}
                        </div>

                    </div>


                    <div class="summary-row">
                        <span>Bus</span>
                        <strong>${selectedBus.company}</strong>
                    </div>

                    <div class="summary-row">
                        <span>Bus Type</span>
                        <strong>${selectedBus.type}</strong>
                    </div>

                    <div class="summary-row">
                        <span>Selected Seats</span>
                        <strong id="selectedSeatText">None</strong>
                    </div>

                    <div class="summary-row">
                        <span>Passengers</span>
                        <strong id="passengerCount">0</strong>
                    </div>

                    <div class="summary-row">
                        <span>Base Fare</span>
                        <strong id="baseFare">₹0</strong>
                    </div>

                    <div class="summary-row">
                        <span>Service Fee</span>
                        <strong id="serviceFee">₹0</strong>
                    </div>

                    <div class="summary-row total">
                        <span>Total</span>
                        <span id="totalFare">₹0</span>
                    </div>

                    <button
                        class="continue-btn"
                        onclick="continueToPassengerDetails()">
                        Continue →
                    </button>

                </div>

            </div>

        `;

        document.getElementById("bookingModal").classList.add("show");

    }


    function generateSeats() {

        let html = "";

        const bookedSeats = [3, 7, 12, 16, 21, 24];

        for (let row = 0; row < 7; row++) {

            html += `<div class="seat-row">`;

            for (let column = 0; column < 4; column++) {

                const seatNumber = row * 4 + column + 1;

                const isBooked = bookedSeats.includes(seatNumber);

                if (column === 2) {
                    html += `<div style="width:15px;"></div>`;
                }

                html += `
                    <button
                        class="seat ${isBooked ? "booked" : ""}"
                        ${isBooked ? "disabled" : ""}
                        onclick="toggleSeat(this, ${seatNumber})">
                        ${seatNumber}
                    </button>
                `;

            }

            html += `</div>`;

        }

        return html;

    }


    function toggleSeat(button, seatNumber) {

        if (button.classList.contains("booked")) {
            return;
        }


        if (button.classList.contains("selected")) {

            button.classList.remove("selected");

            selectedSeats =
                selectedSeats.filter(function(seat) {
                    return seat !== seatNumber;
                });

        } else {

            const maxPassengers =
                parseInt(document.getElementById("passengers").value);

            if (selectedSeats.length >= maxPassengers) {

                showToast(
                    "You selected " +
                    maxPassengers +
                    " passenger(s)."
                );

                return;
            }

            button.classList.add("selected");

            selectedSeats.push(seatNumber);

        }

        updateBookingSummary();

    }


    function updateBookingSummary() {

        const count = selectedSeats.length;

        const baseFare =
            count * selectedBus.price;

        const serviceFee =
            count > 0 ? count * 25 : 0;

        const total =
            baseFare + serviceFee;


        document.getElementById("selectedSeatText").textContent =
            count ? selectedSeats.join(", ") : "None";

        document.getElementById("passengerCount").textContent =
            count;

        document.getElementById("baseFare").textContent =
            "₹" + baseFare;

        document.getElementById("serviceFee").textContent =
            "₹" + serviceFee;

        document.getElementById("totalFare").textContent =
            "₹" + total;

    }


    /* =========================================================
       PASSENGER DETAILS
    ========================================================= */

    function continueToPassengerDetails() {

        if (selectedSeats.length === 0) {

            showToast("Please select at least one seat.");

            return;
        }

        document.getElementById("modalTitle").textContent =
            "Passenger Details";

        const total =
            selectedSeats.length *
            (selectedBus.price + 25);

        document.getElementById("modalBody").innerHTML = `

            <div>

                <div style="
                    background:#f5f7fa;
                    padding:15px;
                    border-radius:10px;
                    margin-bottom:22px;
                ">

                    <strong>
                        ${selectedBus.company}
                    </strong>

                    <div style="
                        font-size:13px;
                        color:#697180;
                        margin-top:5px;
                    ">
                        ${selectedBus.from}
                        →
                        ${selectedBus.to}
                        |
                        ${selectedBus.departure}
                        |
                        Seats:
                        ${selectedSeats.join(", ")}
                    </div>

                </div>


                <div class="form-grid">

                    <div class="form-group">
                        <label>FULL NAME</label>
                        <input
                            type="text"
                            id="passengerName"
                            placeholder="Enter passenger name">
                    </div>

                    <div class="form-group">
                        <label>AGE</label>
                        <input
                            type="number"
                            id="passengerAge"
                            placeholder="Enter age"
                            min="1"
                            max="100">
                    </div>

                    <div class="form-group">
                        <label>GENDER</label>
                        <select id="passengerGender">
                            <option value="">Select gender</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>PHONE NUMBER</label>
                        <input
                            type="tel"
                            id="passengerPhone"
                            placeholder="Enter mobile number">
                    </div>

                    <div class="form-group">
                        <label>EMAIL</label>
                        <input
                            type="email"
                            id="passengerEmail"
                            placeholder="Enter email address">
                    </div>

                    <div class="form-group">
                        <label>BOARDING POINT</label>
                        <select id="boardingPoint">

                            <option>
                                ${selectedBus.from} Central Bus Station
                            </option>

                            <option>
                                ${selectedBus.from} Main Road
                            </option>

                            <option>
                                ${selectedBus.from} Railway Station
                            </option>

                        </select>
                    </div>

                    <div class="form-group full">
                        <label>DROP POINT</label>

                        <select id="dropPoint">

                            <option>
                                ${selectedBus.to} Central Bus Station
                            </option>

                            <option>
                                ${selectedBus.to} Main Road
                            </option>

                            <option>
                                ${selectedBus.to} Railway Station
                            </option>

                        </select>

                    </div>

                </div>


                <div style="
                    margin-top:22px;
                    padding:15px;
                    border-radius:10px;
                    background:#fff7e8;
                    color:#75551b;
                    font-size:12px;
                ">
                    ⚠️ Please carry a valid ID proof during travel.
                    Boarding closes 15 minutes before departure.
                </div>


                <div style="
                    display:flex;
                    justify-content:space-between;
                    align-items:center;
                    margin-top:25px;
                    padding-top:18px;
                    border-top:1px solid #edf0f4;
                ">

                    <div>
                        <small style="color:#737c8b;">
                            Total Amount
                        </small>

                        <div style="
                            font-size:22px;
                            font-weight:800;
                            margin-top:3px;
                        ">
                            ₹${total}
                        </div>
                    </div>

                    <button
                        class="continue-btn"
                        style="width:220px;"
                        onclick="confirmBooking()">
                        Proceed to Payment →
                    </button>

                </div>

            </div>

        `;

    }


    /* =========================================================
       CONFIRM BOOKING
    ========================================================= */

    function confirmBooking() {

        const name =
            document.getElementById("passengerName").value.trim();

        const age =
            document.getElementById("passengerAge").value.trim();

        const phone =
            document.getElementById("passengerPhone").value.trim();

        const email =
            document.getElementById("passengerEmail").value.trim();


        if (!name || !age || !phone || !email) {

            showToast("Please complete all passenger details.");

            return;
        }


        if (phone.length < 10) {

            showToast("Please enter a valid phone number.");

            return;
        }


        const bookingId =
            "RAL" +
            Math.floor(100000 + Math.random() * 900000);


        const total =
            selectedSeats.length *
            (selectedBus.price + 25);


        document.getElementById("modalTitle").textContent =
            "Booking Confirmed 🎉";


        document.getElementById("modalBody").innerHTML = `

            <div class="success">

                <div class="success-icon">
                    ✓
                </div>

                <h2>
                    Your booking is confirmed!
                </h2>

                <p style="
                    color:#697180;
                    margin-top:8px;
                ">
                    Thank you for booking with Ralis Bus Tours & Travels.
                </p>


                <div class="ticket">

                    <div style="
                        display:flex;
                        justify-content:space-between;
                        margin-bottom:15px;
                    ">

                        <strong>
                            Ralis Bus
                        </strong>

                        <span style="
                            color:#16934f;
                            font-weight:800;
                        ">
                            CONFIRMED
                        </span>

                    </div>


                    <div class="summary-row">
                        <span>Booking ID</span>
                        <strong>${bookingId}</strong>
                    </div>

                    <div class="summary-row">
                        <span>Passenger</span>
                        <strong>${name}</strong>
                    </div>

                    <div class="summary-row">
                        <span>Route</span>
                        <strong>
                            ${selectedBus.from}
                            →
                            ${selectedBus.to}
                        </strong>
                    </div>

                    <div class="summary-row">
                        <span>Departure</span>
                        <strong>${selectedBus.departure}</strong>
                    </div>

                    <div class="summary-row">
                        <span>Seats</span>
                        <strong>${selectedSeats.join(", ")}</strong>
                    </div>

                    <div class="summary-row total">
                        <span>Total Paid</span>
                        <strong>₹${total}</strong>
                    </div>

                </div>


                <p style="
                    color:#737c8b;
                    font-size:12px;
                    margin-bottom:20px;
                ">
                    🎫 Your e-ticket details have been generated.
                    Please show your booking ID while boarding.
                </p>


                <button
                    class="continue-btn"
                    style="max-width:250px;"
                    onclick="closeModal()">
                    Done
                </button>

            </div>

        `;

        showToast("Booking confirmed successfully!");

    }


    /* =========================================================
       FILTERS
    ========================================================= */

    function applyFilters() {

        const selectedTypes =
            Array.from(
                document.querySelectorAll(".type-filter:checked")
            ).map(function(input) {
                return input.value;
            });


        const time =
            document.querySelector(
                "input[name='timeFilter']:checked"
            ).value;


        const maxPrice =
            parseInt(
                document.getElementById("priceRange").value
            );


        let filtered = currentBuses.filter(function(bus) {

            const typeMatch =
                selectedTypes.length === 0 ||
                selectedTypes.some(function(type) {
                    return bus.type.includes(type);
                });


            const timeMatch =
                time === "all" ||
                bus.period === time;


            const priceMatch =
                bus.price <= maxPrice;


            return typeMatch &&
                   timeMatch &&
                   priceMatch;

        });


        renderBuses(filtered);

    }


    function updatePrice(value) {

        document.getElementById("priceValue").textContent =
            value;

        applyFilters();

    }


    /* =========================================================
       SORTING
    ========================================================= */

    function sortBuses(type) {

        let sorted = [...currentBuses];


        if (type === "priceLow") {

            sorted.sort(function(a,b) {
                return a.price - b.price;
            });

        }


        if (type === "priceHigh") {

            sorted.sort(function(a,b) {
                return b.price - a.price;
            });

        }


        if (type === "departure") {

            sorted.sort(function(a,b) {
                return convertTime(a.departure) -
                       convertTime(b.departure);
            });

        }


        renderBuses(sorted);

    }


    function convertTime(time) {

        const parts =
            time.match(/(\d+):(\d+)\s*(AM|PM)/);

        let hour =
            parseInt(parts[1]);

        const minute =
            parseInt(parts[2]);

        const period =
            parts[3];


        if (period === "PM" && hour !== 12) {
            hour += 12;
        }

        if (period === "AM" && hour === 12) {
            hour = 0;
        }

        return hour * 60 + minute;

    }


    /* =========================================================
       DARK MODE
    ========================================================= */

    function toggleDarkMode() {

        document.body.classList.toggle("dark-mode");

        if (document.body.classList.contains("dark-mode")) {

            showToast("Dark mode enabled");

        } else {

            showToast("Light mode enabled");

        }

    }


    /* =========================================================
       MODAL
    ========================================================= */

    function closeModal() {

        document
            .getElementById("bookingModal")
            .classList.remove("show");

    }


    document
        .getElementById("bookingModal")
        .addEventListener("click", function(event) {

            if (event.target === this) {
                closeModal();
            }

        });


    /* =========================================================
       TOAST
    ========================================================= */

    let toastTimer;

    function showToast(message) {

        const toast =
            document.getElementById("toast");

        toast.textContent = message;

        toast.classList.add("show");

        clearTimeout(toastTimer);

        toastTimer = setTimeout(function() {

            toast.classList.remove("show");

        }, 3000);

    }

</script>

</body>
</html>
