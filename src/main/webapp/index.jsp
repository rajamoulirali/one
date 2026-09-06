<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Modern E-Commerce</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        /* =========================================================
           ROOT
        ========================================================= */

        :root {
            --primary: #111827;
            --primary-light: #1f2937;
            --accent: #00c2ff;
            --accent-dark: #0099cc;

            --bg: #f7f9fc;
            --card: #ffffff;
            --text: #111827;
            --muted: #6b7280;
            --border: #e5e7eb;

            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --shadow-sm: 0 5px 20px rgba(15, 23, 42, .06);
            --shadow-md: 0 15px 40px rgba(15, 23, 42, .10);
            --shadow-lg: 0 25px 70px rgba(15, 23, 42, .18);

            --radius: 18px;
            --transition: .3s ease;
        }

        body.dark {
            --bg: #0b1120;
            --card: #111827;
            --text: #f9fafb;
            --muted: #9ca3af;
            --border: #243044;
            --primary: #f9fafb;
            --primary-light: #e5e7eb;

            background: var(--bg);
            color: var(--text);
        }

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
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
            transition: background .3s ease, color .3s ease;
        }

        body.no-scroll {
            overflow: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: min(1400px, calc(100% - 40px));
            margin: auto;
        }

        .section {
            padding: 90px 0;
        }

        .section-header {
            text-align: center;
            max-width: 720px;
            margin: 0 auto 45px;
        }

        .section-header .eyebrow {
            color: var(--accent-dark);
            font-size: 13px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }

        .section-header h2 {
            font-family: 'Poppins', sans-serif;
            font-size: clamp(30px, 4vw, 46px);
            line-height: 1.15;
            margin-bottom: 15px;
        }

        .section-header p {
            color: var(--muted);
        }


        /* =========================================================
           TOP BAR
        ========================================================= */

        .top-bar {
            background: #0b1220;
            color: #fff;
            font-size: 13px;
        }

        .top-bar-inner {
            min-height: 38px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .top-bar span {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .top-links {
            display: flex;
            gap: 20px;
        }

        .top-links a:hover {
            color: var(--accent);
        }


        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,.92);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid rgba(229,231,235,.7);
        }

        body.dark header {
            background: rgba(17,24,39,.92);
            border-color: var(--border);
        }

        .header-inner {
            min-height: 78px;
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .logo {
            font-family: 'Poppins', sans-serif;
            font-size: 27px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo span {
            color: var(--accent);
        }

        nav {
            margin-left: auto;
        }

        nav ul {
            list-style: none;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 13px;
            border-radius: 10px;
            font-size: 14px;
            font-weight: 600;
            transition: var(--transition);
        }

        nav a:hover,
        nav a.active {
            background: rgba(0,194,255,.1);
            color: var(--accent-dark);
        }

        .search-box {
            width: 270px;
            height: 44px;
            display: flex;
            align-items: center;
            background: var(--bg);
            border: 1px solid var(--border);
            border-radius: 30px;
            padding: 0 15px;
            transition: var(--transition);
        }

        .search-box:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(0,194,255,.1);
        }

        .search-box i {
            color: var(--muted);
        }

        .search-box input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--text);
            padding-left: 10px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border: 0;
            background: transparent;
            color: var(--text);
            border-radius: 50%;
            display: grid;
            place-items: center;
            position: relative;
            transition: var(--transition);
        }

        .icon-btn:hover {
            background: rgba(0,194,255,.1);
            color: var(--accent-dark);
            transform: translateY(-2px);
        }

        .badge {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 18px;
            height: 18px;
            padding: 0 5px;
            border-radius: 20px;
            display: grid;
            place-items: center;
            background: var(--danger);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
        }

        .mobile-menu {
            display: none;
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            min-height: 650px;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;

            background:
                linear-gradient(
                    90deg,
                    rgba(4,12,27,.94) 0%,
                    rgba(4,12,27,.72) 45%,
                    rgba(4,12,27,.2) 100%
                ),
                url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85');

            background-size: cover;
            background-position: center;
        }

        .hero-content {
            color: #fff;
            max-width: 720px;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(0,194,255,.15);
            border: 1px solid rgba(0,194,255,.4);
            color: #7de5ff;
            border-radius: 30px;
            padding: 8px 15px;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: clamp(42px, 6vw, 72px);
            line-height: 1.05;
            margin-bottom: 22px;
        }

        .hero h1 span {
            color: var(--accent);
        }

        .hero p {
            font-size: 18px;
            color: rgba(255,255,255,.82);
            max-width: 620px;
            margin-bottom: 32px;
        }

        .hero-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .btn {
            border: 0;
            padding: 14px 25px;
            border-radius: 12px;
            font-weight: 800;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent);
            color: #06111d;
        }

        .btn-primary:hover {
            background: #5bdcff;
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(0,194,255,.25);
        }

        .btn-outline {
            background: rgba(255,255,255,.08);
            color: #fff;
            border: 1px solid rgba(255,255,255,.35);
        }

        .btn-outline:hover {
            background: #fff;
            color: #111827;
            transform: translateY(-3px);
        }

        .hero-stats {
            display: flex;
            gap: 40px;
            margin-top: 45px;
        }

        .hero-stat strong {
            display: block;
            font-size: 25px;
        }

        .hero-stat span {
            font-size: 13px;
            color: rgba(255,255,255,.65);
        }


        /* =========================================================
           FEATURES
        ========================================================= */

        .features {
            background: var(--card);
            border-bottom: 1px solid var(--border);
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
        }

        .feature {
            padding: 28px 20px;
            display: flex;
            gap: 15px;
            align-items: center;
            border-right: 1px solid var(--border);
        }

        .feature:last-child {
            border-right: 0;
        }

        .feature-icon {
            width: 50px;
            height: 50px;
            flex-shrink: 0;
            border-radius: 14px;
            display: grid;
            place-items: center;
            background: rgba(0,194,255,.1);
            color: var(--accent-dark);
            font-size: 20px;
        }

        .feature strong {
            display: block;
            font-size: 14px;
        }

        .feature span {
            font-size: 12px;
            color: var(--muted);
        }


        /* =========================================================
           CATEGORIES
        ========================================================= */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }

        .category {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 25px 15px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .category:hover,
        .category.selected {
            transform: translateY(-7px);
            border-color: var(--accent);
            box-shadow: var(--shadow-md);
        }

        .category-icon {
            width: 70px;
            height: 70px;
            margin: 0 auto 15px;
            border-radius: 20px;
            display: grid;
            place-items: center;
            background: rgba(0,194,255,.08);
            color: var(--accent-dark);
            font-size: 27px;
        }

        .category h3 {
            font-size: 15px;
            margin-bottom: 5px;
        }

        .category p {
            font-size: 12px;
            color: var(--muted);
        }


        /* =========================================================
           PRODUCT TOOLBAR
        ========================================================= */

        .product-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 30px;
        }

        .filter-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .filter-btn {
            padding: 9px 16px;
            border: 1px solid var(--border);
            background: var(--card);
            color: var(--text);
            border-radius: 30px;
            font-size: 13px;
            font-weight: 700;
            transition: var(--transition);
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--primary);
            color: var(--card);
            border-color: var(--primary);
        }

        .sort-select {
            border: 1px solid var(--border);
            background: var(--card);
            color: var(--text);
            padding: 10px 14px;
            border-radius: 10px;
            outline: none;
        }


        /* =========================================================
           PRODUCTS
        ========================================================= */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }

        .product-card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            position: relative;
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-md);
        }

        .product-image {
            height: 250px;
            position: relative;
            overflow: hidden;
            background: #f1f5f9;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform .5s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.08);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--success);
            color: #fff;
            border-radius: 7px;
            padding: 5px 9px;
            font-size: 11px;
            font-weight: 800;
            z-index: 2;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .wishlist-btn {
            position: absolute;
            right: 12px;
            top: 12px;
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 50%;
            background: rgba(255,255,255,.95);
            color: #64748b;
            display: grid;
            place-items: center;
            z-index: 2;
            transition: var(--transition);
        }

        .wishlist-btn:hover,
        .wishlist-btn.liked {
            color: var(--danger);
            transform: scale(1.1);
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            color: var(--accent-dark);
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .product-info h3 {
            font-family: 'Poppins', sans-serif;
            font-size: 17px;
            margin: 5px 0 8px;
        }

        .rating {
            color: #f59e0b;
            font-size: 13px;
            margin-bottom: 10px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 5px;
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 15px;
        }

        .price {
            font-size: 20px;
            font-weight: 800;
        }

        .old-price {
            color: var(--muted);
            font-size: 13px;
            text-decoration: line-through;
        }

        .product-actions {
            display: grid;
            grid-template-columns: 1fr 42px;
            gap: 8px;
        }

        .add-cart {
            border: 0;
            background: var(--primary);
            color: var(--card);
            border-radius: 10px;
            padding: 11px;
            font-size: 13px;
            font-weight: 800;
            transition: var(--transition);
        }

        .add-cart:hover {
            background: var(--accent);
            color: #06111d;
        }

        .quick-view {
            border: 1px solid var(--border);
            background: var(--card);
            color: var(--text);
            border-radius: 10px;
            transition: var(--transition);
        }

        .quick-view:hover {
            border-color: var(--accent);
            color: var(--accent-dark);
        }

        .no-results {
            display: none;
            text-align: center;
            padding: 50px;
            color: var(--muted);
            grid-column: 1 / -1;
        }


        /* =========================================================
           DEAL
        ========================================================= */

        .deal-section {
            background: linear-gradient(135deg, #071426, #12263e);
            color: #fff;
        }

        .deal-wrapper {
            display: grid;
            grid-template-columns: 1fr 1fr;
            min-height: 500px;
            border-radius: 25px;
            overflow: hidden;
            background: #0e1d31;
        }

        .deal-image {
            min-height: 500px;
            background:
                url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85')
                center/cover;
        }

        .deal-content {
            padding: 60px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-label {
            color: #66ddff;
            font-size: 13px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 12px;
        }

        .deal-content h2 {
            font-family: 'Poppins', sans-serif;
            font-size: clamp(32px, 4vw, 50px);
            line-height: 1.1;
            margin-bottom: 15px;
        }

        .deal-content p {
            color: rgba(255,255,255,.7);
            margin-bottom: 25px;
        }

        .countdown {
            display: flex;
            gap: 10px;
            margin: 15px 0 30px;
        }

        .time-box {
            width: 75px;
            height: 75px;
            background: rgba(255,255,255,.08);
            border: 1px solid rgba(255,255,255,.12);
            border-radius: 12px;
            display: grid;
            place-items: center;
            align-content: center;
        }

        .time-box strong {
            font-size: 25px;
        }

        .time-box span {
            font-size: 10px;
            color: rgba(255,255,255,.55);
            text-transform: uppercase;
        }

        .deal-price {
            font-size: 32px;
            font-weight: 800;
            margin-bottom: 20px;
        }

        .deal-price del {
            color: rgba(255,255,255,.4);
            font-size: 18px;
            margin-left: 8px;
        }


        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 28px;
            transition: var(--transition);
        }

        .testimonial:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-sm);
        }

        .testimonial .stars {
            color: #f59e0b;
            margin-bottom: 15px;
        }

        .testimonial > p {
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 25px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .customer img {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 14px;
        }

        .customer span {
            font-size: 12px;
            color: var(--muted);
        }


        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            padding: 80px 0;
            background: linear-gradient(135deg, #00bce8, #0077b6);
            color: #fff;
            text-align: center;
        }

        .newsletter h2 {
            font-family: 'Poppins', sans-serif;
            font-size: 40px;
            margin-bottom: 12px;
        }

        .newsletter p {
            max-width: 600px;
            margin: 0 auto 25px;
            color: rgba(255,255,255,.85);
        }

        .newsletter-form {
            width: min(560px, 100%);
            margin: auto;
            display: flex;
            background: #fff;
            padding: 5px;
            border-radius: 50px;
        }

        .newsletter-form input {
            flex: 1;
            border: 0;
            outline: 0;
            padding: 12px 18px;
            border-radius: 40px;
            color: #111827;
        }

        .newsletter-form button {
            border: 0;
            background: #111827;
            color: #fff;
            padding: 0 25px;
            border-radius: 40px;
            font-weight: 800;
        }


        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            background: #080d17;
            color: #fff;
            padding: 70px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
            margin-bottom: 50px;
        }

        .footer-col h3 {
            margin-bottom: 18px;
            font-size: 16px;
        }

        .footer-col p {
            color: #9ca3af;
            font-size: 14px;
            max-width: 350px;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col li {
            margin-bottom: 10px;
        }

        .footer-col a {
            color: #9ca3af;
            font-size: 14px;
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--accent);
            padding-left: 4px;
        }

        .socials {
            display: flex;
            gap: 9px;
            margin-top: 20px;
        }

        .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: rgba(255,255,255,.08);
        }

        .socials a:hover {
            background: var(--accent);
            color: #07111d;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,.1);
            padding-top: 22px;
            display: flex;
            justify-content: space-between;
            color: #6b7280;
            font-size: 12px;
        }


        /* =========================================================
           CART DRAWER
        ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.55);
            z-index: 1999;
            opacity: 0;
            visibility: hidden;
            transition: .3s;
        }

        .overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            right: -450px;
            top: 0;
            width: min(430px, 100%);
            height: 100vh;
            background: var(--card);
            z-index: 2000;
            box-shadow: var(--shadow-lg);
            display: flex;
            flex-direction: column;
            transition: right .35s ease;
        }

        .cart-drawer.active {
            right: 0;
        }

        .cart-header {
            padding: 22px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-header h3 {
            font-family: 'Poppins', sans-serif;
        }

        .close-btn {
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 50%;
            background: var(--bg);
            color: var(--text);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .empty-cart {
            height: 100%;
            display: grid;
            place-items: center;
            text-align: center;
            color: var(--muted);
        }

        .empty-cart i {
            font-size: 50px;
            margin-bottom: 15px;
            opacity: .4;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 70px 1fr auto;
            gap: 12px;
            align-items: center;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-item h4 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .cart-item-price {
            font-size: 13px;
            font-weight: 800;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 7px;
        }

        .quantity button {
            width: 25px;
            height: 25px;
            border: 1px solid var(--border);
            background: var(--card);
            color: var(--text);
            border-radius: 6px;
        }

        .remove-item {
            color: var(--danger);
            border: 0;
            background: transparent;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 19px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .checkout-btn {
            width: 100%;
            border: 0;
            background: var(--accent);
            color: #06111d;
            padding: 14px;
            border-radius: 12px;
            font-weight: 800;
        }


        /* =========================================================
           QUICK VIEW MODAL
        ========================================================= */

        .modal {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.65);
            z-index: 3000;
            display: grid;
            place-items: center;
            padding: 20px;
            opacity: 0;
            visibility: hidden;
            transition: .3s;
        }

        .modal.active {
            opacity: 1;
            visibility: visible;
        }

        .modal-content {
            width: min(850px, 100%);
            max-height: 90vh;
            overflow-y: auto;
            background: var(--card);
            color: var(--text);
            border-radius: 22px;
            position: relative;
            padding: 30px;
        }

        .modal-close {
            position: absolute;
            right: 20px;
            top: 20px;
            width: 40px;
            height: 40px;
            border: 0;
            border-radius: 50%;
            background: var(--bg);
            color: var(--text);
            z-index: 2;
        }

        .quick-view-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            align-items: center;
        }

        .quick-view-grid img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 15px;
        }

        .quick-view-info h2 {
            font-family: 'Poppins', sans-serif;
            font-size: 32px;
            margin: 10px 0;
        }

        .quick-view-info p {
            color: var(--muted);
            margin: 15px 0 25px;
        }


        /* =========================================================
           TOAST
        ========================================================= */

        .toast-container {
            position: fixed;
            right: 20px;
            bottom: 20px;
            z-index: 5000;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .toast {
            background: #111827;
            color: #fff;
            padding: 13px 18px;
            border-radius: 12px;
            box-shadow: var(--shadow-md);
            display: flex;
            align-items: center;
            gap: 10px;
            min-width: 250px;
            animation: toastIn .3s ease;
        }

        .toast.success i {
            color: #4ade80;
        }

        .toast.error i {
            color: #f87171;
        }

        @keyframes toastIn {
            from {
                opacity: 0;
                transform: translateX(30px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }


        /* =========================================================
           BACK TO TOP
        ========================================================= */

        .back-top {
            position: fixed;
            right: 20px;
            bottom: 20px;
            width: 45px;
            height: 45px;
            border: 0;
            border-radius: 50%;
            background: var(--accent);
            color: #06111d;
            z-index: 100;
            opacity: 0;
            visibility: hidden;
            transition: .3s;
        }

        .back-top.show {
            opacity: 1;
            visibility: visible;
            bottom: 80px;
        }


        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media(max-width:1200px) {

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .category-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .search-box {
                width: 220px;
            }

            .feature-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .feature:nth-child(2) {
                border-right: 0;
            }
        }

        @media(max-width:950px) {

            .top-links {
                display: none;
            }

            .header-inner {
                position: relative;
            }

            .mobile-menu {
                display: grid;
                margin-left: auto;
            }

            nav {
                position: absolute;
                top: 78px;
                left: 0;
                width: 100%;
                background: var(--card);
                border-top: 1px solid var(--border);
                box-shadow: var(--shadow-md);
                display: none;
                padding: 15px 20px;
            }

            nav.active {
                display: block;
            }

            nav ul {
                flex-direction: column;
                align-items: stretch;
            }

            nav a {
                padding: 13px;
            }

            .search-box {
                order: 3;
                width: 100%;
            }

            .header-inner {
                flex-wrap: wrap;
                padding: 12px 0;
            }

            .hero {
                min-height: 600px;
            }

            .deal-wrapper {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 350px;
            }

            .testimonial-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media(max-width:700px) {

            .container {
                width: min(100% - 28px, 1400px);
            }

            .section {
                padding: 65px 0;
            }

            .top-bar {
                display: none;
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }

            .category-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-image {
                height: 210px;
            }

            .product-info {
                padding: 15px;
            }

            .hero {
                min-height: 580px;
            }

            .hero-stats {
                gap: 20px;
            }

            .hero-stat strong {
                font-size: 20px;
            }

            .product-toolbar {
                flex-direction: column;
                align-items: stretch;
            }

            .sort-select {
                width: 100%;
            }

            .deal-content {
                padding: 35px 25px;
            }

            .testimonial-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-grid .footer-col:first-child {
                grid-column: 1 / -1;
            }

            .quick-view-grid {
                grid-template-columns: 1fr;
            }

            .quick-view-grid img {
                height: 280px;
            }
        }

        @media(max-width:480px) {

            .logo {
                font-size: 23px;
            }

            .header-actions .icon-btn:nth-child(1) {
                display: none;
            }

            .product-grid {
                grid-template-columns: 1fr;
            }

            .category-grid {
                grid-template-columns: 1fr 1fr;
            }

            .hero h1 {
                font-size: 40px;
            }

            .hero p {
                font-size: 15px;
            }

            .hero-stats {
                flex-wrap: wrap;
            }

            .feature-grid {
                grid-template-columns: 1fr;
            }

            .feature {
                border-right: 0;
                border-bottom: 1px solid var(--border);
            }

            .countdown {
                gap: 6px;
            }

            .time-box {
                width: 65px;
                height: 65px;
            }

            .newsletter-form {
                flex-direction: column;
                background: transparent;
                gap: 8px;
            }

            .newsletter-form input,
            .newsletter-form button {
                height: 48px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid .footer-col:first-child {
                grid-column: auto;
            }

            .footer-bottom {
                flex-direction: column;
                gap: 8px;
                text-align: center;
            }
        }

    </style>
</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="top-bar">
    <div class="container top-bar-inner">

        <span>
            <i class="fa-solid fa-truck-fast"></i>
            Free shipping on orders over $50
        </span>

        <div class="top-links">
            <a href="#deals">Today's Deals</a>
            <a href="#contact">Help Center</a>
            <a href="#newsletter">Newsletter</a>
        </div>

    </div>
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav id="mainNav">

            <ul>

                <li>
                    <a href="#home" class="active">
                        <i class="fa-solid fa-house"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fa-solid fa-layer-group"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fa-solid fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fa-solid fa-bolt"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        <i class="fa-solid fa-circle-info"></i>
                        About
                    </a>
                </li>

                <li>
                    <a href="#contact">
                        <i class="fa-solid fa-envelope"></i>
                        Contact
                    </a>
                </li>

            </ul>

        </nav>


        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
                autocomplete="off">

        </div>


        <div class="header-actions">

            <button class="icon-btn"
                    id="themeToggle"
                    title="Toggle dark mode">

                <i class="fa-solid fa-moon"></i>

            </button>

            <button class="icon-btn"
                    title="Wishlist"
                    onclick="showToast('Wishlist opened')">

                <i class="fa-regular fa-heart"></i>

                <span class="badge" id="wishlistCount">0</span>

            </button>

            <button class="icon-btn"
                    title="Shopping cart"
                    id="cartButton">

                <i class="fa-solid fa-cart-shopping"></i>

                <span class="badge" id="cartCount">0</span>

            </button>

            <button class="icon-btn mobile-menu"
                    id="mobileMenuBtn">

                <i class="fa-solid fa-bars"></i>

            </button>

        </div>

    </div>

</header>


<!-- =========================================================
     HERO
========================================================= -->

<section class="hero" id="home">

    <div class="container">

        <div class="hero-content">

            <div class="hero-tag">
                <i class="fa-solid fa-sparkles"></i>
                NEW SEASON • 2026 COLLECTION
            </div>

            <h1>
                Shop Smarter.<br>
                Live <span>Better.</span>
            </h1>

            <p>
                Discover premium technology, fashion and lifestyle products
                carefully selected for the modern generation.
            </p>

            <div class="hero-buttons">

                <a href="#products" class="btn btn-primary">
                    Shop Now
                    <i class="fa-solid fa-arrow-right"></i>
                </a>

                <a href="#deals" class="btn btn-outline">
                    View Deals
                </a>

            </div>

            <div class="hero-stats">

                <div class="hero-stat">
                    <strong>25K+</strong>
                    <span>Happy Customers</span>
                </div>

                <div class="hero-stat">
                    <strong>4.9/5</strong>
                    <span>Customer Rating</span>
                </div>

                <div class="hero-stat">
                    <strong>500+</strong>
                    <span>Premium Products</span>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     FEATURES
========================================================= -->

<section class="features">

    <div class="container feature-grid">

        <div class="feature">

            <div class="feature-icon">
                <i class="fa-solid fa-truck-fast"></i>
            </div>

            <div>
                <strong>Fast Delivery</strong>
                <span>2-5 business days</span>
            </div>

        </div>

        <div class="feature">

            <div class="feature-icon">
                <i class="fa-solid fa-shield-halved"></i>
            </div>

            <div>
                <strong>Secure Payment</strong>
                <span>100% secure checkout</span>
            </div>

        </div>

        <div class="feature">

            <div class="feature-icon">
                <i class="fa-solid fa-rotate-left"></i>
            </div>

            <div>
                <strong>Easy Returns</strong>
                <span>30-day return policy</span>
            </div>

        </div>

        <div class="feature">

            <div class="feature-icon">
                <i class="fa-solid fa-headset"></i>
            </div>

            <div>
                <strong>24/7 Support</strong>
                <span>We're here to help</span>
            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Explore
            </div>

            <h2>
                Shop By Category
            </h2>

            <p>
                Find exactly what you're looking for from our carefully
                selected product categories.
            </p>

        </div>


        <div class="category-grid">

            <div class="category" data-category="Electronics">

                <div class="category-icon">
                    <i class="fa-solid fa-mobile-screen-button"></i>
                </div>

                <h3>Electronics</h3>
                <p>120+ Products</p>

            </div>


            <div class="category" data-category="Computers">

                <div class="category-icon">
                    <i class="fa-solid fa-laptop"></i>
                </div>

                <h3>Computers</h3>
                <p>85+ Products</p>

            </div>


            <div class="category" data-category="Fashion">

                <div class="category-icon">
                    <i class="fa-solid fa-shirt"></i>
                </div>

                <h3>Fashion</h3>
                <p>200+ Products</p>

            </div>


            <div class="category" data-category="Audio">

                <div class="category-icon">
                    <i class="fa-solid fa-headphones"></i>
                </div>

                <h3>Audio</h3>
                <p>70+ Products</p>

            </div>


            <div class="category" data-category="Footwear">

                <div class="category-icon">
                    <i class="fa-solid fa-shoe-prints"></i>
                </div>

                <h3>Footwear</h3>
                <p>90+ Products</p>

            </div>


            <div class="category" data-category="Accessories">

                <div class="category-icon">
                    <i class="fa-solid fa-watch"></i>
                </div>

                <h3>Accessories</h3>
                <p>150+ Products</p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section class="section" id="products">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Trending Now
            </div>

            <h2>
                Popular Products
            </h2>

            <p>
                Discover products our customers are loving right now.
            </p>

        </div>


        <div class="product-toolbar">

            <div class="filter-buttons">

                <button class="filter-btn active"
                        data-filter="all">
                    All
                </button>

                <button class="filter-btn"
                        data-filter="Electronics">
                    Electronics
                </button>

                <button class="filter-btn"
                        data-filter="Computers">
                    Computers
                </button>

                <button class="filter-btn"
                        data-filter="Fashion">
                    Fashion
                </button>

                <button class="filter-btn"
                        data-filter="Audio">
                    Audio
                </button>

                <button class="filter-btn"
                        data-filter="Footwear">
                    Footwear
                </button>

            </div>


            <select class="sort-select" id="sortSelect">

                <option value="default">
                    Sort: Featured
                </option>

                <option value="low">
                    Price: Low to High
                </option>

                <option value="high">
                    Price: High to Low
                </option>

                <option value="rating">
                    Highest Rated
                </option>

            </select>

        </div>


        <div class="product-grid" id="productGrid">


            <!-- PRODUCT 1 -->

            <div class="product-card"
                 data-category="Electronics"
                 data-price="1299"
                 data-rating="4.9">

                <div class="product-image">

                    <span class="product-badge">
                        New
                    </span>

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80"
                        alt="Smartphone">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Electronics
                    </span>

                    <h3>iPhone 16 Pro</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(248)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$1,299</span>

                        <span class="old-price">
                            $1,399
                        </span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="iPhone 16 Pro"
                                data-price="1299"
                                data-image="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="iPhone 16 Pro"
                                data-price="$1,299"
                                data-image="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 2 -->

            <div class="product-card"
                 data-category="Computers"
                 data-price="1999"
                 data-rating="4.8">

                <div class="product-image">

                    <span class="product-badge sale">
                        -15%
                    </span>

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"
                        alt="MacBook">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Computers
                    </span>

                    <h3>MacBook Pro M4</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(186)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$1,999</span>

                        <span class="old-price">
                            $2,299
                        </span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="MacBook Pro M4"
                                data-price="1999"
                                data-image="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="MacBook Pro M4"
                                data-price="$1,999"
                                data-image="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 3 -->

            <div class="product-card"
                 data-category="Electronics"
                 data-price="449"
                 data-rating="4.9">

                <div class="product-image">

                    <span class="product-badge">
                        Bestseller
                    </span>

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=80"
                        alt="Smartwatch">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Electronics
                    </span>

                    <h3>Smart Watch Ultra</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(421)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$449</span>

                        <span class="old-price">
                            $499
                        </span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="Smart Watch Ultra"
                                data-price="449"
                                data-image="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="Smart Watch Ultra"
                                data-price="$449"
                                data-image="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 4 -->

            <div class="product-card"
                 data-category="Footwear"
                 data-price="159"
                 data-rating="4.7">

                <div class="product-image">

                    <span class="product-badge sale">
                        -20%
                    </span>

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
                        alt="Sneakers">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Footwear
                    </span>

                    <h3>Air Max Running Shoes</h3>

                    <div class="rating">
                        ★★★★☆
                        <span>(153)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$159</span>

                        <span class="old-price">
                            $199
                        </span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="Air Max Running Shoes"
                                data-price="159"
                                data-image="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="Air Max Running Shoes"
                                data-price="$159"
                                data-image="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 5 -->

            <div class="product-card"
                 data-category="Audio"
                 data-price="399"
                 data-rating="4.8">

                <div class="product-image">

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
                        alt="Headphones">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Audio
                    </span>

                    <h3>Premium Wireless Headphones</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(310)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$399</span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="Premium Wireless Headphones"
                                data-price="399"
                                data-image="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="Premium Wireless Headphones"
                                data-price="$399"
                                data-image="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 6 -->

            <div class="product-card"
                 data-category="Fashion"
                 data-price="89"
                 data-rating="4.6">

                <div class="product-image">

                    <span class="product-badge">
                        New
                    </span>

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80"
                        alt="T-Shirt">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Fashion
                    </span>

                    <h3>Premium Cotton T-Shirt</h3>

                    <div class="rating">
                        ★★★★☆
                        <span>(94)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$89</span>

                        <span class="old-price">
                            $109
                        </span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="Premium Cotton T-Shirt"
                                data-price="89"
                                data-image="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="Premium Cotton T-Shirt"
                                data-price="$89"
                                data-image="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 7 -->

            <div class="product-card"
                 data-category="Accessories"
                 data-price="129"
                 data-rating="4.7">

                <div class="product-image">

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
                        alt="Watch">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Accessories
                    </span>

                    <h3>Classic Premium Watch</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(129)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$129</span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="Classic Premium Watch"
                                data-price="129"
                                data-image="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="Classic Premium Watch"
                                data-price="$129"
                                data-image="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <!-- PRODUCT 8 -->

            <div class="product-card"
                 data-category="Electronics"
                 data-price="799"
                 data-rating="4.8">

                <div class="product-image">

                    <span class="product-badge sale">
                        -10%
                    </span>

                    <button class="wishlist-btn">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80"
                        alt="Camera">

                </div>

                <div class="product-info">

                    <span class="product-category">
                        Electronics
                    </span>

                    <h3>Professional Mirrorless Camera</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(76)</span>
                    </div>

                    <div class="price-row">

                        <span class="price">$799</span>

                        <span class="old-price">
                            $899
                        </span>

                    </div>

                    <div class="product-actions">

                        <button class="add-cart"
                                data-name="Professional Mirrorless Camera"
                                data-price="799"
                                data-image="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-cart-plus"></i>
                            Add to Cart

                        </button>

                        <button class="quick-view"
                                data-name="Professional Mirrorless Camera"
                                data-price="$799"
                                data-image="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                    </div>

                </div>

            </div>


            <div class="no-results" id="noResults">

                <i class="fa-solid fa-box-open"
                   style="font-size:45px;margin-bottom:15px;">
                </i>

                <h3>No products found</h3>

                <p>
                    Try another search or category.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     FLASH DEAL
========================================================= -->

<section class="section deal-section" id="deals">

    <div class="container">

        <div class="deal-wrapper">

            <div class="deal-image"></div>

            <div class="deal-content">

                <div class="deal-label">
                    <i class="fa-solid fa-bolt"></i>
                    Limited Time Offer
                </div>

                <h2>
                    Flash Sale
                </h2>

                <p>
                    Upgrade your workspace with our premium laptop collection.
                    Limited stock available at an exclusive price.
                </p>


                <div class="countdown">

                    <div class="time-box">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="time-box">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="time-box">
                        <strong id="minutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="time-box">
                        <strong id="seconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>


                <div class="deal-price">
                    $999
                    <del>$1,299</del>
                </div>

                <div>

                    <button class="btn btn-primary"
                            onclick="showToast('Flash deal added to cart!')">

                        Grab The Deal
                        <i class="fa-solid fa-arrow-right"></i>

                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     ABOUT
========================================================= -->

<section class="section" id="about">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Why NexusShop
            </div>

            <h2>
                Built For Modern Shoppers
            </h2>

            <p>
                We combine great products, transparent pricing and a
                simple shopping experience.
            </p>

        </div>


        <div class="testimonial-grid">

            <div class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "The shopping experience is incredibly smooth.
                    The website is easy to navigate and my order arrived
                    much faster than expected."
                </p>

                <div class="customer">

                    <img
                        src="https://randomuser.me/api/portraits/women/44.jpg"
                        alt="Sarah">

                    <div>
                        <strong>Sarah Johnson</strong>
                        <span>Verified Customer</span>
                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "Great products, excellent prices and very responsive
                    customer support. NexusShop has become my favorite
                    online store."
                </p>

                <div class="customer">

                    <img
                        src="https://randomuser.me/api/portraits/men/32.jpg"
                        alt="Michael">

                    <div>
                        <strong>Michael Thomas</strong>
                        <span>Verified Customer</span>
                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "I found exactly what I wanted and checkout was super
                    easy. The product quality exceeded my expectations."
                </p>

                <div class="customer">

                    <img
                        src="https://randomuser.me/api/portraits/women/65.jpg"
                        alt="Emma">

                    <div>
                        <strong>Emma Williams</strong>
                        <span>Verified Customer</span>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="newsletter" id="newsletter">

    <div class="container">

        <h2>
            Get 10% Off Your First Order
        </h2>

        <p>
            Subscribe to our newsletter for exclusive deals,
            new arrivals and special offers.
        </p>

        <form class="newsletter-form"
              id="newsletterForm">

            <input
                type="email"
                placeholder="Enter your email address"
                required>

            <button type="submit">
                Subscribe
            </button>

        </form>

    </div>

</section>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer id="contact">

    <div class="container">

        <div class="footer-grid">

            <div class="footer-col">

                <a href="#" class="logo">
                    Nexus<span>Shop</span>
                </a>

                <p style="margin-top:15px;">
                    Your modern destination for premium technology,
                    fashion and lifestyle products.
                </p>

                <div class="socials">

                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div class="footer-col">

                <h3>Shop</h3>

                <ul>

                    <li><a href="#products">All Products</a></li>
                    <li><a href="#products">New Arrivals</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#categories">Categories</a></li>

                </ul>

            </div>


            <div class="footer-col">

                <h3>Support</h3>

                <ul>

                    <li><a href="#contact">Contact Us</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">FAQs</a></li>

                </ul>

            </div>


            <div class="footer-col">

                <h3>Company</h3>

                <ul>

                    <li><a href="#about">About Us</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Careers</a></li>

                </ul>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © 2026 NexusShop. All rights reserved.
            </span>

            <span>
                Built with HTML, CSS & JavaScript
            </span>

        </div>

    </div>

</footer>


<!-- =========================================================
     CART DRAWER
========================================================= -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>
            Shopping Cart
        </h3>

        <button class="close-btn"
                id="closeCart">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div class="cart-items" id="cartItems">

        <div class="empty-cart">

            <div>

                <i class="fa-solid fa-cart-shopping"></i>

                <h3>Your cart is empty</h3>

                <p>
                    Add some products to get started.
                </p>

            </div>

        </div>

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button class="checkout-btn"
                onclick="checkout()">

            Proceed to Checkout

            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</aside>


<!-- =========================================================
     QUICK VIEW MODAL
========================================================= -->

<div class="modal" id="quickViewModal">

    <div class="modal-content">

        <button class="modal-close"
                id="closeModal">

            <i class="fa-solid fa-xmark"></i>

        </button>


        <div class="quick-view-grid">

            <img id="modalImage"
                 src=""
                 alt="Product">

            <div class="quick-view-info">

                <span class="product-category">
                    Featured Product
                </span>

                <h2 id="modalName">
                    Product
                </h2>

                <div class="rating">
                    ★★★★★
                    <span>Excellent rating</span>
                </div>

                <h3 id="modalPrice">
                    $0
                </h3>

                <p>
                    Premium quality product designed for modern
                    lifestyles. Add it to your cart and enjoy a
                    seamless shopping experience.
                </p>

                <button class="btn btn-primary"
                        id="modalAddCart">

                    <i class="fa-solid fa-cart-plus"></i>
                    Add To Cart

                </button>

            </div>

        </div>

    </div>

</div>


<!-- =========================================================
     TOAST
========================================================= -->

<div class="toast-container"
     id="toastContainer">
</div>


<button class="back-top"
        id="backTop">

    <i class="fa-solid fa-arrow-up"></i>

</button>


<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>

    /* =========================================================
       GLOBAL STATE
    ========================================================= */

    let cart = JSON.parse(localStorage.getItem("nexusCart")) || [];
    let wishlist = JSON.parse(localStorage.getItem("nexusWishlist")) || [];


    /* =========================================================
       TOAST
    ========================================================= */

    function showToast(message, type = "success") {

        const container =
            document.getElementById("toastContainer");

        const toast =
            document.createElement("div");

        toast.className =
            "toast " + type;

        toast.innerHTML = `
            <i class="fa-solid ${
                type === "error"
                ? "fa-circle-exclamation"
                : "fa-circle-check"
            }"></i>

            <span>${message}</span>
        `;

        container.appendChild(toast);

        setTimeout(() => {

            toast.style.opacity = "0";
            toast.style.transform = "translateX(30px)";

            setTimeout(() => {
                toast.remove();
            }, 300);

        }, 2500);
    }


    /* =========================================================
       MOBILE MENU
    ========================================================= */

    const mobileMenuBtn =
        document.getElementById("mobileMenuBtn");

    const mainNav =
        document.getElementById("mainNav");

    mobileMenuBtn.addEventListener("click", () => {

        mainNav.classList.toggle("active");

        const icon =
            mobileMenuBtn.querySelector("i");

        if (mainNav.classList.contains("active")) {

            icon.className =
                "fa-solid fa-xmark";

        } else {

            icon.className =
                "fa-solid fa-bars";
        }

    });


    document.querySelectorAll("#mainNav a")
        .forEach(link => {

            link.addEventListener("click", () => {

                mainNav.classList.remove("active");

                const icon =
                    mobileMenuBtn.querySelector("i");

                icon.className =
                    "fa-solid fa-bars";

            });

        });


    /* =========================================================
       DARK MODE
    ========================================================= */

    const themeToggle =
        document.getElementById("themeToggle");

    const savedTheme =
        localStorage.getItem("nexusTheme");

    if (savedTheme === "dark") {

        document.body.classList.add("dark");

        themeToggle.innerHTML =
            '<i class="fa-solid fa-sun"></i>';
    }


    themeToggle.addEventListener("click", () => {

        document.body.classList.toggle("dark");

        const dark =
            document.body.classList.contains("dark");

        localStorage.setItem(
            "nexusTheme",
            dark ? "dark" : "light"
        );

        themeToggle.innerHTML = dark
            ? '<i class="fa-solid fa-sun"></i>'
            : '<i class="fa-solid fa-moon"></i>';

        showToast(
            dark
                ? "Dark mode enabled"
                : "Light mode enabled"
        );

    });


    /* =========================================================
       SEARCH
    ========================================================= */

    const searchInput =
        document.getElementById("searchInput");

    searchInput.addEventListener("input", filterProducts);


    /* =========================================================
       FILTER
    ========================================================= */

    let currentFilter = "all";

    document.querySelectorAll(".filter-btn")
        .forEach(button => {

            button.addEventListener("click", () => {

                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );

                button.classList.add("active");

                currentFilter =
                    button.dataset.filter;

                filterProducts();

            });

        });


    function filterProducts() {

        const search =
            searchInput.value
                .trim()
                .toLowerCase();

        const products =
            document.querySelectorAll(".product-card");

        let visible = 0;

        products.forEach(product => {

            const category =
                product.dataset.category;

            const name =
                product.querySelector("h3")
                    .textContent
                    .toLowerCase();

            const matchesSearch =
                name.includes(search);

            const matchesCategory =
                currentFilter === "all" ||
                category === currentFilter;

            if (matchesSearch && matchesCategory) {

                product.style.display = "";

                visible++;

            } else {

                product.style.display = "none";
            }

        });

        document.getElementById("noResults")
            .style.display =
                visible === 0 ? "block" : "none";
    }


    /* =========================================================
       CATEGORY CARDS
    ========================================================= */

    document.querySelectorAll(".category")
        .forEach(category => {

            category.addEventListener("click", () => {

                const selected =
                    category.dataset.category;

                currentFilter = selected;

                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn => {

                        btn.classList.toggle(
                            "active",
                            btn.dataset.filter === selected
                        );

                    });

                document.getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

                filterProducts();

            });

        });


    /* =========================================================
       SORT
    ========================================================= */

    document
        .getElementById("sortSelect")
        .addEventListener("change", function () {

            const grid =
                document.getElementById("productGrid");

            const products =
                [...grid.querySelectorAll(".product-card")];

            const value = this.value;

            products.sort((a, b) => {

                if (value === "low") {

                    return Number(a.dataset.price) -
                           Number(b.dataset.price);

                }

                if (value === "high") {

                    return Number(b.dataset.price) -
                           Number(a.dataset.price);

                }

                if (value === "rating") {

                    return Number(b.dataset.rating) -
                           Number(a.dataset.rating);

                }

                return 0;

            });

            products.forEach(product =>
                grid.appendChild(product)
            );

        });


    /* =========================================================
       WISHLIST
    ========================================================= */

    function updateWishlist() {

        document.getElementById("wishlistCount")
            .textContent = wishlist.length;

        localStorage.setItem(
            "nexusWishlist",
            JSON.stringify(wishlist)
        );
    }


    document.querySelectorAll(".wishlist-btn")
        .forEach(button => {

            button.addEventListener("click", () => {

                const product =
                    button.closest(".product-card");

                const name =
                    product.querySelector("h3")
                        .textContent;

                const index =
                    wishlist.indexOf(name);

                if (index === -1) {

                    wishlist.push(name);

                    button.classList.add("liked");

                    button.innerHTML =
                        '<i class="fa-solid fa-heart"></i>';

                    showToast(
                        name + " added to wishlist"
                    );

                } else {

                    wishlist.splice(index, 1);

                    button.classList.remove("liked");

                    button.innerHTML =
                        '<i class="fa-regular fa-heart"></i>';

                    showToast(
                        name + " removed from wishlist"
                    );
                }

                updateWishlist();

            });

        });


    updateWishlist();


    /* =========================================================
       CART
    ========================================================= */

    function saveCart() {

        localStorage.setItem(
            "nexusCart",
            JSON.stringify(cart)
        );

    }


    function updateCart() {

        const count =
            cart.reduce(
                (total, item) =>
                    total + item.quantity,
                0
            );

        const total =
            cart.reduce(
                (sum, item) =>
                    sum + item.price * item.quantity,
                0
            );

        document.getElementById("cartCount")
            .textContent = count;

        document.getElementById("cartTotal")
            .textContent =
                "$" + total.toLocaleString();

        renderCart();

        saveCart();

    }


    function addToCart(
        name,
        price,
        image
    ) {

        const existing =
            cart.find(item =>
                item.name === name
            );

        if (existing) {

            existing.quantity++;

        } else {

            cart.push({
                name: name,
                price: Number(price),
                image: image,
                quantity: 1
            });

        }

        updateCart();

        showToast(
            name + " added to cart"
        );

    }


    function renderCart() {

        const container =
            document.getElementById("cartItems");

        if (cart.length === 0) {

            container.innerHTML = `
                <div class="empty-cart">

                    <div>

                        <i class="fa-solid fa-cart-shopping"></i>

                        <h3>Your cart is empty</h3>

                        <p>
                            Add some products to get started.
                        </p>

                    </div>

                </div>
            `;

            return;
        }


        container.innerHTML =
            cart.map((item, index) => `

                <div class="cart-item">

                    <img
                        src="${item.image}"
                        alt="${item.name}">

                    <div>

                        <h4>
                            ${item.name}
                        </h4>

                        <div class="cart-item-price">
                            $${item.price.toLocaleString()}
                        </div>

                        <div class="quantity">

                            <button
                                onclick="changeQuantity(${index}, -1)">
                                -
                            </button>

                            <strong>
                                ${item.quantity}
                            </strong>

                            <button
                                onclick="changeQuantity(${index}, 1)">
                                +
                            </button>

                        </div>

                    </div>

                    <button
                        class="remove-item"
                        onclick="removeFromCart(${index})">

                        <i class="fa-solid fa-trash"></i>

                    </button>

                </div>

            `).join("");

    }


    function changeQuantity(index, amount) {

        cart[index].quantity += amount;

        if (cart[index].quantity <= 0) {

            cart.splice(index, 1);

        }

        updateCart();

    }


    function removeFromCart(index) {

        const name =
            cart[index].name;

        cart.splice(index, 1);

        updateCart();

        showToast(
            name + " removed from cart"
        );

    }


    document.querySelectorAll(".add-cart")
        .forEach(button => {

            button.addEventListener("click", () => {

                addToCart(
                    button.dataset.name,
                    button.dataset.price,
                    button.dataset.image
                );

            });

        });


    /* =========================================================
       CART DRAWER
    ========================================================= */

    const cartButton =
        document.getElementById("cartButton");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const overlay =
        document.getElementById("overlay");

    const closeCart =
        document.getElementById("closeCart");


    function openCart() {

        cartDrawer.classList.add("active");

        overlay.classList.add("active");

        document.body.classList.add("no-scroll");

    }


    function closeCartDrawer() {

        cartDrawer.classList.remove("active");

        overlay.classList.remove("active");

        document.body.classList.remove("no-scroll");

    }


    cartButton.addEventListener(
        "click",
        openCart
    );

    closeCart.addEventListener(
        "click",
        closeCartDrawer
    );

    overlay.addEventListener(
        "click",
        closeCartDrawer
    );


    /* =========================================================
       QUICK VIEW
    ========================================================= */

    const modal =
        document.getElementById("quickViewModal");

    const modalImage =
        document.getElementById("modalImage");

    const modalName =
        document.getElementById("modalName");

    const modalPrice =
        document.getElementById("modalPrice");

    const modalAddCart =
        document.getElementById("modalAddCart");

    const closeModal =
        document.getElementById("closeModal");


    let modalProduct = null;


    document.querySelectorAll(".quick-view")
        .forEach(button => {

            button.addEventListener("click", () => {

                modalProduct = {
                    name: button.dataset.name,
                    price: button.dataset.price,
                    image: button.dataset.image
                };

                modalImage.src =
                    modalProduct.image;

                modalName.textContent =
                    modalProduct.name;

                modalPrice.textContent =
                    modalProduct.price;

                modal.classList.add("active");

                document.body.classList.add(
                    "no-scroll"
                );

            });

        });


    closeModal.addEventListener(
        "click",
        closeProductModal
    );


    modal.addEventListener("click", event => {

        if (event.target === modal) {

            closeProductModal();

        }

    });


    function closeProductModal() {

        modal.classList.remove("active");

        document.body.classList.remove(
            "no-scroll"
        );

    }


    modalAddCart.addEventListener(
        "click",
        () => {

            if (!modalProduct) return;

            const numericPrice =
                Number(
                    modalProduct.price
                        .replace("$", "")
                        .replace(",", "")
                );

            addToCart(
                modalProduct.name,
                numericPrice,
                modalProduct.image
            );

            closeProductModal();

        }
    );


    /* =========================================================
       COUNTDOWN
    ========================================================= */

    const saleEnd =
        new Date(
            Date.now() +
            2 * 24 * 60 * 60 * 1000 +
            7 * 60 * 60 * 1000 +
            32 * 60 * 1000
        );


    function updateCountdown() {

        const now =
            new Date();

        const diff =
            saleEnd - now;

        if (diff <= 0) {

            document.getElementById("days")
                .textContent = "00";

            document.getElementById("hours")
                .textContent = "00";

            document.getElementById("minutes")
                .textContent = "00";

            document.getElementById("seconds")
                .textContent = "00";

            return;
        }


        const days =
            Math.floor(
                diff /
                (1000 * 60 * 60 * 24)
            );

        const hours =
            Math.floor(
                (diff %
                (1000 * 60 * 60 * 24)) /
                (1000 * 60 * 60)
            );

        const minutes =
            Math.floor(
                (diff %
                (1000 * 60 * 60)) /
                (1000 * 60)
            );

        const seconds =
            Math.floor(
                (diff %
                (1000 * 60)) /
                1000
            );


        document.getElementById("days")
            .textContent =
                String(days).padStart(2, "0");

        document.getElementById("hours")
            .textContent =
                String(hours).padStart(2, "0");

        document.getElementById("minutes")
            .textContent =
                String(minutes).padStart(2, "0");

        document.getElementById("seconds")
            .textContent =
                String(seconds).padStart(2, "0");

    }


    updateCountdown();

    setInterval(
        updateCountdown,
        1000
    );


    /* =========================================================
       NEWSLETTER
    ========================================================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", function(event) {

            event.preventDefault();

            const email =
                this.querySelector("input")
                    .value;

            if (email) {

                showToast(
                    "Thanks! You're subscribed."
                );

                this.reset();

            }

        });


    /* =========================================================
       CHECKOUT
    ========================================================= */

    function checkout() {

        if (cart.length === 0) {

            showToast(
                "Your cart is empty",
                "error"
            );

            return;
        }

        showToast(
            "Checkout demo — payment integration can be added next."
        );

    }


    /* =========================================================
       BACK TO TOP
    ========================================================= */

    const backTop =
        document.getElementById("backTop");


    window.addEventListener("scroll", () => {

        if (window.scrollY > 500) {

            backTop.classList.add("show");

        } else {

            backTop.classList.remove("show");

        }

    });


    backTop.addEventListener(
        "click",
        () => {

            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });

        }
    );


    /* =========================================================
       ACTIVE NAVIGATION
    ========================================================= */

    const sections =
        document.querySelectorAll(
            "section[id]"
        );

    const navLinks =
        document.querySelectorAll(
            "#mainNav a"
        );


    window.addEventListener(
        "scroll",
        () => {

            let current = "";

            sections.forEach(section => {

                const top =
                    section.offsetTop - 150;

                if (
                    window.scrollY >= top
                ) {

                    current =
                        section.id;

                }

            });


            navLinks.forEach(link => {

                link.classList.remove(
                    "active"
                );

                if (
                    link.getAttribute("href") ===
                    "#" + current
                ) {

                    link.classList.add(
                        "active"
                    );

                }

            });

        }
    );


    /* =========================================================
       INITIALIZE
    ========================================================= */

    updateCart();

</script>

</body>
</html>
