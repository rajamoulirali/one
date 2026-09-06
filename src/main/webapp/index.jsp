<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Ralis Bus Tours & Travels - Online Bus Ticket Booking">

    <title>Ralis Bus Tours & Travels | Bus Ticket Booking</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary: #d9232e;
            --primary-dark: #b71924;
            --primary-light: #fff1f2;
            --text: #1f2937;
            --muted: #6b7280;
            --border: #e5e7eb;
            --bg: #f5f6f8;
            --white: #ffffff;
            --green: #16834b;
            --green-light: #eaf8f0;
            --orange: #f59e0b;
            --shadow: 0 8px 25px rgba(15, 23, 42, 0.08);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            height: 72px;
            background: #ffffff;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 6%;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 11px;
            font-weight: 800;
        }

        .logo-icon {
            width: 42px;
            height: 42px;
            border-radius: 10px;
            background: var(--primary);
            color: white;
            display: grid;
            place-items: center;
            font-size: 21px;
        }

        .logo-text {
            line-height: 1.05;
        }

        .logo-main {
            font-size: 20px;
            color: #171717;
        }

        .logo-sub {
            font-size: 9px;
            color: var(--primary);
            letter-spacing: 2px;
            font-weight: 800;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
            font-size: 14px;
            font-weight: 600;
            color: #4b5563;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .login-btn {
            border: 1px solid var(--border);
            background: white;
            padding: 10px 18px;
            border-radius: 8px;
            font-weight: 600;
        }

        .login-btn:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        .mobile-menu {
            display: none;
            border: 0;
            background: white;
            font-size: 24px;
        }

        /* ================= HERO ================= */

        .hero {
            background:
                linear-gradient(120deg, rgba(82, 10, 18, .92), rgba(217, 35, 46, .82)),
                url("https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?auto=format&fit=crop&w=1800&q=80");
            background-size: cover;
            background-position: center;
            min-height: 430px;
            padding: 55px 6% 70px;
            color: white;
        }

        .hero-content {
            max-width: 1180px;
            margin: auto;
        }

        .hero-small {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,.14);
            border: 1px solid rgba(255,255,255,.25);
            padding: 7px 12px;
            border-radius: 50px;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 16px;
        }

        .hero h1 {
            font-size: clamp(32px, 4vw, 48px);
            line-height: 1.08;
            max-width: 650px;
            margin-bottom: 12px;
            font-weight: 800;
        }

        .hero p {
            max-width: 620px;
            color: rgba(255,255,255,.88);
            margin-bottom: 30px;
        }

        /* ================= SEARCH CARD ================= */

        .search-card {
            background: white;
            color: var(--text);
            border-radius: 14px;
            padding: 18px;
            box-shadow: 0 20px 50px rgba(0,0,0,.20);
            max-width: 1180px;
        }

        .trip-tabs {
            display: flex;
            gap: 22px;
            border-bottom: 1px solid var(--border);
            margin-bottom: 18px;
        }

        .trip-tab {
            background: none;
            border: 0;
            padding: 10px 2px;
            font-size: 14px;
            font-weight: 700;
            color: var(--muted);
            border-bottom: 3px solid transparent;
        }

        .trip-tab.active {
            color: var(--primary);
            border-bottom-color: var(--primary);
        }

        .search-grid {
            display: grid;
            grid-template-columns: 1.25fr 1.25fr 1fr .9fr auto;
            gap: 10px;
            align-items: end;
        }

        .field {
            position: relative;
        }

        .field label {
            display: block;
            font-size: 11px;
            color: #6b7280;
            font-weight: 800;
            text-transform: uppercase;
            margin-bottom: 6px;
            letter-spacing: .4px;
        }

        .input-wrap {
            border: 1px solid #d1d5db;
            border-radius: 9px;
            min-height: 54px;
            display: flex;
            align-items: center;
            gap: 9px;
            padding: 0 13px;
            background: white;
        }

        .input-wrap:focus-within {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(217,35,46,.08);
        }

        .input-wrap span {
            font-size: 18px;
        }

        .input-wrap input,
        .input-wrap select {
            width: 100%;
            border: 0;
            outline: none;
            background: transparent;
            font-size: 14px;
            font-weight: 600;
            color: var(--text);
        }

        .swap-button {
            position: absolute;
            right: -23px;
            bottom: 13px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 1px solid #ddd;
            background: white;
            color: var(--primary);
            z-index: 2;
            font-size: 18px;
            box-shadow: 0 4px 12px rgba(0,0,0,.1);
        }

        .search-btn {
            height: 54px;
            padding: 0 25px;
            border: 0;
            border-radius: 9px;
            background: var(--primary);
            color: white;
            font-weight: 800;
            font-size: 14px;
            transition: .2s;
        }

        .search-btn:hover {
            background: var(--primary-dark);
            transform: translateY(-1px);
        }

        .quick-dates {
            display: flex;
            gap: 7px;
            margin-top: 10px;
        }

        .date-chip {
            border: 1px solid var(--border);
            background: white;
            border-radius: 7px;
            padding: 6px 10px;
            font-size: 11px;
            color: var(--muted);
        }

        .date-chip:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        /* ================= TRUST ================= */

        .trust-row {
            max-width: 1180px;
            margin: -35px auto 0;
            position: relative;
            background: white;
            border-radius: 12px;
            box-shadow: var(--shadow);
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            overflow: hidden;
        }

        .trust-item {
            padding: 22px;
            display: flex;
            gap: 12px;
            align-items: center;
            border-right: 1px solid var(--border);
        }

        .trust-item:last-child {
            border-right: 0;
        }

        .trust-icon {
            width: 42px;
            height: 42px;
            border-radius: 10px;
            background: var(--primary-light);
            color: var(--primary);
            display: grid;
            place-items: center;
            font-size: 20px;
        }

        .trust-item strong {
            display: block;
            font-size: 13px;
        }

        .trust-item small {
            color: var(--muted);
            font-size: 11px;
        }

        /* ================= MAIN ================= */

        .container {
            max-width: 1180px;
            margin: auto;
            padding: 55px 20px;
        }

        .section-title {
            margin-bottom: 24px;
        }

        .section-title h2 {
            font-size: 27px;
            margin-bottom: 5px;
        }

        .section-title p {
            color: var(--muted);
            font-size: 14px;
        }

        /* ================= ROUTES ================= */

        .route-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .route-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 12px;
            padding: 20px;
            transition: .2s;
            cursor: pointer;
        }

        .route-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow);
            border-color: rgba(217,35,46,.25);
        }

        .route-card .route-icon {
            font-size: 25px;
            margin-bottom: 15px;
        }

        .route-card strong {
            font-size: 14px;
        }

        .route-card small {
            display: block;
            color: var(--muted);
            margin-top: 5px;
        }

        .route-price {
            margin-top: 15px;
            color: var(--primary);
            font-size: 13px;
            font-weight: 800;
        }

        /* ================= RESULTS ================= */

        #resultsSection {
            display: none;
        }

        .results-header {
            background: white;
            border-bottom: 1px solid var(--border);
            padding: 18px 0;
            position: sticky;
            top: 72px;
            z-index: 100;
        }

        .results-header-inner {
            max-width: 1180px;
            margin: auto;
            padding: 0 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
        }

        .route-heading {
            font-size: 18px;
            font-weight: 800;
        }

        .route-heading small {
            display: block;
            font-size: 12px;
            color: var(--muted);
            font-weight: 500;
            margin-top: 3px;
        }

        .sort-select {
            border: 1px solid var(--border);
            border-radius: 8px;
            background: white;
            padding: 10px 13px;
            font-size: 13px;
        }

        .results-layout {
            max-width: 1180px;
            margin: 25px auto;
            padding: 0 20px;
            display: grid;
            grid-template-columns: 250px 1fr;
            gap: 20px;
        }

        /* ================= FILTERS ================= */

        .filter-card {
            background: white;
            border-radius: 12px;
            border: 1px solid var(--border);
            padding: 18px;
            height: fit-content;
            position: sticky;
            top: 140px;
        }

        .filter-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .filter-header strong {
            font-size: 15px;
        }

        .clear-filter {
            border: 0;
            background: none;
            color: var(--primary);
            font-size: 11px;
            font-weight: 700;
        }

        .filter-group {
            padding: 17px 0;
            border-top: 1px solid var(--border);
        }

        .filter-group:first-of-type {
            border-top: 0;
        }

        .filter-group h4 {
            font-size: 12px;
            margin-bottom: 12px;
        }

        .check-row {
            display: flex;
            justify-content: space-between;
            margin: 9px 0;
            font-size: 12px;
            color: #4b5563;
        }

        .check-row label {
            display: flex;
            gap: 8px;
            align-items: center;
        }

        .check-row input {
            accent-color: var(--primary);
        }

        .filter-count {
            color: #9ca3af;
        }

        .range-value {
            color: var(--primary);
            font-weight: 800;
            font-size: 12px;
        }

        input[type="range"] {
            width: 100%;
            accent-color: var(--primary);
        }

        /* ================= BUS CARDS ================= */

        .bus-list {
            display: flex;
            flex-direction: column;
            gap: 14px;
        }

        .bus-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 12px;
            overflow: hidden;
            transition: .2s;
        }

        .bus-card:hover {
            box-shadow: var(--shadow);
        }

        .bus-main {
            padding: 20px;
            display: grid;
            grid-template-columns: 1.4fr 1fr .7fr .7fr auto;
            gap: 18px;
            align-items: center;
        }

        .bus-operator {
            display: flex;
            gap: 12px;
            align-items: center;
        }

        .bus-logo {
            width: 46px;
            height: 46px;
            border-radius: 9px;
            background: var(--primary-light);
            display: grid;
            place-items: center;
            font-size: 22px;
        }

        .operator-name {
            font-size: 14px;
            font-weight: 800;
        }

        .bus-type {
            color: var(--muted);
            font-size: 11px;
            margin-top: 4px;
        }

        .rating {
            display: inline-flex;
            align-items: center;
            gap: 3px;
            background: var(--green);
            color: white;
            padding: 3px 6px;
            border-radius: 5px;
            font-size: 10px;
            font-weight: 800;
            margin-top: 6px;
        }

        .time {
            font-size: 18px;
            font-weight: 800;
        }

        .city {
            color: var(--muted);
            font-size: 11px;
            margin-top: 2px;
        }

        .duration {
            text-align: center;
            color: var(--muted);
            font-size: 11px;
        }

        .duration-line {
            width: 75px;
            height: 1px;
            background: #d1d5db;
            margin: 7px auto;
            position: relative;
        }

        .duration-line::after {
            content: "";
            width: 5px;
            height: 5px;
            border-radius: 50%;
            background: #9ca3af;
            position: absolute;
            right: 0;
            top: -2px;
        }

        .price {
            font-size: 19px;
            font-weight: 800;
        }

        .per-seat {
            color: var(--muted);
            font-size: 10px;
        }

        .seat-left {
            color: var(--green);
            font-size: 10px;
            margin-top: 5px;
        }

        .view-seat-btn {
            background: var(--primary);
            color: white;
            border: 0;
            border-radius: 8px;
            padding: 11px 16px;
            font-size: 12px;
            font-weight: 800;
            white-space: nowrap;
        }

        .view-seat-btn:hover {
            background: var(--primary-dark);
        }

        .bus-details {
            display: none;
            border-top: 1px solid var(--border);
            background: #fafafa;
            padding: 18px 20px;
        }

        .bus-details.open {
            display: block;
        }

        .amenities {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
            margin-bottom: 16px;
        }

        .amenity {
            border: 1px solid var(--border);
            background: white;
            padding: 6px 9px;
            border-radius: 6px;
            font-size: 10px;
            color: #4b5563;
        }

        .points {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }

        .point-box {
            background: white;
            border: 1px solid var(--border);
            border-radius: 8px;
            padding: 12px;
        }

        .point-box small {
            color: var(--muted);
            font-size: 10px;
        }

        .point-box strong {
            display: block;
            font-size: 12px;
            margin-top: 4px;
        }

        /* ================= OFFERS ================= */

        .offer-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
        }

        .offer {
            border-radius: 13px;
            padding: 22px;
            color: white;
            min-height: 145px;
            background: linear-gradient(135deg, #b71924, #ed3543);
        }

        .offer:nth-child(2) {
            background: linear-gradient(135deg, #7c3aed, #a855f7);
        }

        .offer:nth-child(3) {
            background: linear-gradient(135deg, #0369a1, #0284c7);
        }

        .offer-code {
            display: inline-block;
            background: rgba(255,255,255,.18);
            border: 1px dashed rgba(255,255,255,.6);
            padding: 5px 8px;
            border-radius: 5px;
            font-size: 11px;
            font-weight: 800;
            margin-top: 14px;
        }

        /* ================= MODAL ================= */

        .modal-overlay {
            display: none;
            position: fixed;
            inset: 0;
            background: rgba(15,23,42,.65);
            z-index: 3000;
            padding: 25px;
            overflow-y: auto;
        }

        .modal-overlay.show {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal {
            width: min(950px, 100%);
            background: white;
            border-radius: 16px;
            max-height: 92vh;
            overflow-y: auto;
            box-shadow: 0 30px 80px rgba(0,0,0,.3);
        }

        .modal-header {
            padding: 18px 22px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            background: white;
            z-index: 2;
        }

        .modal-header h3 {
            font-size: 17px;
        }

        .close-modal {
            border: 0;
            background: #f3f4f6;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            font-size: 18px;
        }

        .modal-body {
            padding: 22px;
        }

        .seat-layout {
            display: grid;
            grid-template-columns: 1fr 280px;
            gap: 30px;
        }

        .bus-seat-map {
            background: #f8fafc;
            border: 1px solid var(--border);
            border-radius: 14px;
            padding: 25px;
            max-width: 450px;
            margin: auto;
        }

        .driver {
            background: #e5e7eb;
            width: 70px;
            height: 50px;
            margin-left: auto;
            border-radius: 8px;
            display: grid;
            place-items: center;
            font-size: 20px;
            margin-bottom: 25px;
        }

        .seat-row {
            display: grid;
            grid-template-columns: repeat(2, 1fr) 35px repeat(1, 1fr);
            gap: 9px;
            margin-bottom: 10px;
        }

        .seat {
            height: 42px;
            border: 1px solid #cbd5e1;
            background: white;
            border-radius: 7px;
            color: #475569;
            font-size: 10px;
            font-weight: 700;
            transition: .15s;
        }

        .seat:hover:not(.booked) {
            border-color: var(--primary);
        }

        .seat.selected {
            background: var(--primary);
            border-color: var(--primary);
            color: white;
        }

        .seat.booked {
            background: #e5e7eb;
            color: #9ca3af;
            cursor: not-allowed;
        }

        .seat-legend {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
            font-size: 10px;
            color: var(--muted);
        }

        .legend-box {
            width: 14px;
            height: 14px;
            border-radius: 4px;
            display: inline-block;
            vertical-align: middle;
            margin-right: 4px;
            border: 1px solid #ddd;
        }

        .legend-available {
            background: white;
        }

        .legend-selected {
            background: var(--primary);
        }

        .legend-booked {
            background: #e5e7eb;
        }

        .booking-summary {
            border: 1px solid var(--border);
            border-radius: 12px;
            padding: 18px;
            height: fit-content;
        }

        .booking-summary h4 {
            margin-bottom: 15px;
            font-size: 14px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            margin: 10px 0;
            font-size: 12px;
        }

        .summary-total {
            border-top: 1px solid var(--border);
            margin-top: 15px;
            padding-top: 15px;
            display: flex;
            justify-content: space-between;
            font-weight: 800;
            font-size: 17px;
        }

        .continue-btn {
            width: 100%;
            margin-top: 18px;
            padding: 13px;
            border: 0;
            border-radius: 8px;
            background: var(--primary);
            color: white;
            font-weight: 800;
        }

        .continue-btn:disabled {
            background: #d1d5db;
            cursor: not-allowed;
        }

        /* ================= CHECKOUT ================= */

        .checkout-grid {
            display: grid;
            grid-template-columns: 1fr 340px;
            gap: 20px;
        }

        .form-card {
            border: 1px solid var(--border);
            border-radius: 12px;
            padding: 20px;
        }

        .form-card h4 {
            margin-bottom: 18px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 13px;
        }

        .form-group {
            margin-bottom: 13px;
        }

        .form-group.full {
            grid-column: 1 / -1;
        }

        .form-group label {
            display: block;
            font-size: 11px;
            font-weight: 700;
            color: #4b5563;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            height: 44px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            padding: 0 11px;
            outline: none;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: var(--primary);
        }

        .payment-options {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 10px;
        }

        .payment-option {
            border: 1px solid var(--border);
            padding: 13px;
            border-radius: 8px;
            text-align: center;
            font-size: 11px;
            cursor: pointer;
        }

        .payment-option.active {
            border-color: var(--primary);
            background: var(--primary-light);
            color: var(--primary);
            font-weight: 800;
        }

        /* ================= CONFIRMATION ================= */

        .confirmation {
            text-align: center;
            padding: 35px 25px;
        }

        .success-icon {
            width: 75px;
            height: 75px;
            margin: auto;
            border-radius: 50%;
            background: var(--green-light);
            color: var(--green);
            display: grid;
            place-items: center;
            font-size: 38px;
            margin-bottom: 15px;
        }

        .booking-id {
            display: inline-block;
            background: #f3f4f6;
            padding: 8px 13px;
            border-radius: 7px;
            margin: 15px 0;
            font-weight: 800;
            letter-spacing: 1px;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #111827;
            color: white;
            margin-top: 30px;
        }

        .footer-inner {
            max-width: 1180px;
            margin: auto;
            padding: 50px 20px 25px;
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1.3fr;
            gap: 40px;
        }

        .footer-brand p {
            color: #9ca3af;
            font-size: 12px;
            max-width: 350px;
            margin-top: 12px;
        }

        footer h4 {
            font-size: 13px;
            margin-bottom: 14px;
        }

        footer a {
            display: block;
            color: #9ca3af;
            font-size: 12px;
            margin: 9px 0;
        }

        footer a:hover {
            color: white;
        }

        .copyright {
            border-top: 1px solid #374151;
            max-width: 1180px;
            margin: auto;
            padding: 18px 20px;
            color: #9ca3af;
            font-size: 11px;
        }

        /* ================= TOAST ================= */

        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;
            background: #111827;
            color: white;
            padding: 13px 17px;
            border-radius: 8px;
            font-size: 12px;
            z-index: 5000;
            opacity: 0;
            transform: translateY(15px);
            transition: .25s;
            pointer-events: none;
        }

        .toast.show {
            opacity: 1;
            transform: translateY(0);
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 1000px) {
            .search-grid {
                grid-template-columns: 1fr 1fr;
            }

            .search-btn {
                width: 100%;
            }

            .route-grid {
                grid-template-columns: repeat(2,1fr);
            }

            .bus-main {
                grid-template-columns: 1.5fr 1fr 1fr;
            }

            .bus-main > :nth-child(3) {
                display: none;
            }

            .bus-main > :nth-child(5) {
                grid-column: 3;
                grid-row: 1;
            }

            .seat-layout {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 760px) {
            .navbar {
                padding: 0 18px;
            }

            .nav-links {
                display: none;
            }

            .nav-actions {
                margin-left: auto;
            }

            .mobile-menu {
                display: block;
            }

            .hero {
                padding: 35px 18px 55px;
            }

            .hero h1 {
                font-size: 32px;
            }

            .search-grid {
                grid-template-columns: 1fr;
            }

            .swap-button {
                right: 12px;
                bottom: -21px;
            }

            .trust-row {
                margin: -20px 18px 0;
                grid-template-columns: 1fr 1fr;
            }

            .trust-item {
                border-bottom: 1px solid var(--border);
            }

            .trust-item:nth-child(2) {
                border-right: 0;
            }

            .route-grid,
            .offer-grid {
                grid-template-columns: 1fr;
            }

            .results-layout {
                grid-template-columns: 1fr;
            }

            .filter-card {
                position: static;
            }

            .bus-main {
                grid-template-columns: 1fr 1fr;
                gap: 14px;
            }

            .bus-main > :nth-child(3) {
                display: block;
            }

            .bus-main > :nth-child(5) {
                grid-column: 1 / -1;
                grid-row: auto;
            }

            .view-seat-btn {
                width: 100%;
            }

            .points,
            .checkout-grid {
                grid-template-columns: 1fr;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .form-group.full {
                grid-column: auto;
            }

            .payment-options {
                grid-template-columns: 1fr;
            }

            .footer-inner {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 480px) {
            .logo-main {
                font-size: 17px;
            }

            .logo-sub {
                font-size: 7px;
            }

            .trust-row {
                grid-template-columns: 1fr;
            }

            .trust-item {
                border-right: 0;
            }

            .footer-inner {
                grid-template-columns: 1fr;
            }

            .modal-overlay {
                padding: 8px;
            }
        }
    </style>
</head>

<body>

<!-- ================= NAVBAR ================= -->

<header class="navbar">
    <a href="#home" class="logo">
        <div class="logo-icon">🚌</div>
        <div class="logo-text">
            <div class="logo-main">Ralis Bus</div>
            <div class="logo-sub">TOURS & TRAVELS</div>
        </div>
    </a>

    <nav class="nav-links">
        <a href="#home">Home</a>
        <a href="#routes">Routes</a>
        <a href="#resultsSection">Buses</a>
        <a href="#offers">Offers</a>
        <a href="#contact">Contact</a>
    </nav>

    <div class="nav-actions">
        <button class="login-btn" onclick="openLogin()">Login</button>
        <button class="mobile-menu" onclick="toggleMobileMenu()">☰</button>
    </div>
</header>


<!-- ================= HERO ================= -->

<section class="hero" id="home">
    <div class="hero-content">

        <div class="hero-small">
            🛡️ Safe & Reliable Bus Travel
        </div>

        <h1>Book Bus Tickets. Travel Without Worry.</h1>

        <p>
            Search, compare and book buses across Andhra Pradesh,
            Telangana and major cities in India.
        </p>

        <!-- SEARCH -->

        <div class="search-card">

            <div class="trip-tabs">
                <button class="trip-tab active" onclick="selectTrip(this)">
                    One Way
                </button>

                <button class="trip-tab" onclick="selectTrip(this)">
                    Round Trip
                </button>
            </div>

            <div class="search-grid">

                <div class="field">
                    <label>From</label>

                    <div class="input-wrap">
                        <span>📍</span>

                        <select id="fromCity">
                            <option value="Hyderabad">Hyderabad</option>
                            <option value="Vijayawada">Vijayawada</option>
                            <option value="Visakhapatnam">Visakhapatnam</option>
                            <option value="Tirupati">Tirupati</option>
                            <option value="Chennai">Chennai</option>
                            <option value="Bangalore">Bangalore</option>
                            <option value="Kandukur">Kandukur</option>
                            <option value="Warangal">Warangal</option>
                            <option value="Nellore">Nellore</option>
                        </select>
                    </div>

                    <button class="swap-button" onclick="swapCities()" title="Swap cities">
                        ⇄
                    </button>
                </div>


                <div class="field">
                    <label>To</label>

                    <div class="input-wrap">
                        <span>📍</span>

                        <select id="toCity">
                            <option value="Vijayawada">Vijayawada</option>
                            <option value="Hyderabad">Hyderabad</option>
                            <option value="Visakhapatnam">Visakhapatnam</option>
                            <option value="Tirupati">Tirupati</option>
                            <option value="Chennai">Chennai</option>
                            <option value="Bangalore">Bangalore</option>
                            <option value="Kandukur">Kandukur</option>
                            <option value="Warangal">Warangal</option>
                            <option value="Nellore">Nellore</option>
                        </select>
                    </div>
                </div>


                <div class="field">
                    <label>Journey Date</label>

                    <div class="input-wrap">
                        <span>📅</span>

                        <input
                            type="date"
                            id="journeyDate"
                            onchange="updateDateText()">
                    </div>

                    <div class="quick-dates">
                        <button class="date-chip" onclick="setDate(0)">Today</button>
                        <button class="date-chip" onclick="setDate(1)">Tomorrow</button>
                    </div>
                </div>


                <div class="field">
                    <label>Passengers</label>

                    <div class="input-wrap">
                        <span>👤</span>

                        <select id="passengers">
                            <option value="1">1 Passenger</option>
                            <option value="2">2 Passengers</option>
                            <option value="3">3 Passengers</option>
                            <option value="4">4 Passengers</option>
                            <option value="5">5 Passengers</option>
                            <option value="6">6 Passengers</option>
                        </select>
                    </div>
                </div>


                <button class="search-btn" onclick="searchBuses()">
                    🔎 Search Buses
                </button>

            </div>
        </div>
    </div>
</section>


<!-- ================= TRUST ================= -->

<div class="trust-row">

    <div class="trust-item">
        <div class="trust-icon">🛡️</div>
        <div>
            <strong>Safe Travel</strong>
            <small>Verified operators</small>
        </div>
    </div>

    <div class="trust-item">
        <div class="trust-icon">₹</div>
        <div>
            <strong>Best Prices</strong>
            <small>Compare bus fares</small>
        </div>
    </div>

    <div class="trust-item">
        <div class="trust-icon">🎫</div>
        <div>
            <strong>Easy Booking</strong>
            <small>Quick online booking</small>
        </div>
    </div>

    <div class="trust-item">
        <div class="trust-icon">📞</div>
        <div>
            <strong>24/7 Support</strong>
            <small>We're here to help</small>
        </div>
    </div>

</div>


<!-- ================= POPULAR ROUTES ================= -->

<section class="container" id="routes">

    <div class="section-title">
        <h2>Popular Bus Routes</h2>
        <p>Book your favourite route in just a few clicks.</p>
    </div>

    <div class="route-grid">

        <div class="route-card" onclick="quickRoute('Hyderabad','Vijayawada')">
            <div class="route-icon">🚌</div>
            <strong>Hyderabad → Vijayawada</strong>
            <small>Multiple buses available</small>
            <div class="route-price">Starting ₹499</div>
        </div>

        <div class="route-card" onclick="quickRoute('Hyderabad','Tirupati')">
            <div class="route-icon">🚌</div>
            <strong>Hyderabad → Tirupati</strong>
            <small>AC Sleeper available</small>
            <div class="route-price">Starting ₹699</div>
        </div>

        <div class="route-card" onclick="quickRoute('Vijayawada','Visakhapatnam')">
            <div class="route-icon">🚌</div>
            <strong>Vijayawada → Visakhapatnam</strong>
            <small>Day & night services</small>
            <div class="route-price">Starting ₹549</div>
        </div>

        <div class="route-card" onclick="quickRoute('Hyderabad','Bangalore')">
            <div class="route-icon">🚌</div>
            <strong>Hyderabad → Bangalore</strong>
            <small>Premium sleeper buses</small>
            <div class="route-price">Starting ₹799</div>
        </div>

    </div>
</section>


<!-- ================= RESULTS ================= -->

<section id="resultsSection">

    <div class="results-header">

        <div class="results-header-inner">

            <div class="route-heading">
                <span id="resultRoute">Hyderabad → Vijayawada</span>

                <small>
                    <span id="resultDate">Today</span>
                    •
                    <span id="busCount">8</span> buses available
                </small>
            </div>

            <select class="sort-select" id="sortSelect" onchange="sortBuses()">
                <option value="recommended">Recommended</option>
                <option value="priceLow">Price: Low to High</option>
                <option value="priceHigh">Price: High to Low</option>
                <option value="departure">Earliest Departure</option>
                <option value="rating">Highest Rating</option>
            </select>

        </div>
    </div>


    <div class="results-layout">

        <!-- FILTERS -->

        <aside class="filter-card">

            <div class="filter-header">
                <strong>Filters</strong>
                <button class="clear-filter" onclick="clearFilters()">Clear All</button>
            </div>


            <div class="filter-group">

                <h4>Bus Type</h4>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="type-filter" value="AC">
                        AC
                    </label>
                    <span class="filter-count">6</span>
                </div>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="type-filter" value="Non-AC">
                        Non-AC
                    </label>
                    <span class="filter-count">2</span>
                </div>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="type-filter" value="Sleeper">
                        Sleeper
                    </label>
                    <span class="filter-count">5</span>
                </div>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="type-filter" value="Seater">
                        Seater
                    </label>
                    <span class="filter-count">5</span>
                </div>

            </div>


            <div class="filter-group">

                <h4>Departure Time</h4>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="time-filter" value="morning">
                        🌅 Morning
                    </label>
                </div>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="time-filter" value="afternoon">
                        ☀️ Afternoon
                    </label>
                </div>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="time-filter" value="evening">
                        🌆 Evening
                    </label>
                </div>

                <div class="check-row">
                    <label>
                        <input type="checkbox" class="time-filter" value="night">
                        🌙 Night
                    </label>
                </div>

            </div>


            <div class="filter-group">

                <h4>Price</h4>

                <div style="display:flex;justify-content:space-between;margin-bottom:8px;">
                    <span style="font-size:11px;color:#6b7280;">Up to</span>
                    <span class="range-value" id="priceValue">₹2000</span>
                </div>

                <input
                    type="range"
                    id="priceRange"
                    min="400"
                    max="2000"
                    value="2000"
                    step="50"
                    oninput="updatePriceFilter()">

            </div>


            <div class="filter-group">

                <h4>Rating</h4>

                <div class="check-row">
                    <label>
                        <input type="radio" name="rating" value="4">
                        ⭐ 4+ Rating
                    </label>
                </div>

                <div class="check-row">
                    <label>
                        <input type="radio" name="rating" value="3">
                        ⭐ 3+ Rating
                    </label>
                </div>

            </div>

        </aside>


        <!-- BUS LIST -->

        <div class="bus-list" id="busList">

        </div>

    </div>

</section>


<!-- ================= OFFERS ================= -->

<section class="container" id="offers">

    <div class="section-title">
        <h2>Offers & Discounts</h2>
        <p>Save more on your next Ralis journey.</p>
    </div>

    <div class="offer-grid">

        <div class="offer">
            <strong>First Booking Offer</strong>
            <p style="font-size:12px;margin-top:6px;">
                Get up to ₹150 OFF on your first booking.
            </p>

            <span class="offer-code">FIRST150</span>
        </div>

        <div class="offer">
            <strong>UPI Payment Offer</strong>
            <p style="font-size:12px;margin-top:6px;">
                Get ₹100 instant discount on eligible UPI payments.
            </p>

            <span class="offer-code">UPI100</span>
        </div>

        <div class="offer">
            <strong>Family Travel</strong>
            <p style="font-size:12px;margin-top:6px;">
                Special discounts for group bookings.
            </p>

            <span class="offer-code">FAMILY100</span>
        </div>

    </div>

</section>


<!-- ================= BOOKING MODAL ================= -->

<div class="modal-overlay" id="bookingModal">

    <div class="modal">

        <div class="modal-header">
            <h3 id="modalBusTitle">Select Your Seats</h3>

            <button class="close-modal" onclick="closeModal()">
                ×
            </button>
        </div>


        <div class="modal-body">

            <div class="seat-layout">

                <!-- SEAT MAP -->

                <div>

                    <div class="bus-seat-map">

                        <div class="driver">
                            🚍
                        </div>

                        <div id="seatMap"></div>

                        <div class="seat-legend">

                            <span>
                                <span class="legend-box legend-available"></span>
                                Available
                            </span>

                            <span>
                                <span class="legend-box legend-selected"></span>
                                Selected
                            </span>

                            <span>
                                <span class="legend-box legend-booked"></span>
                                Booked
                            </span>

                        </div>

                    </div>

                </div>


                <!-- SUMMARY -->

                <div class="booking-summary">

                    <h4>Booking Summary</h4>

                    <div class="summary-row">
                        <span>Bus</span>
                        <strong id="summaryBus">Ralis Express</strong>
                    </div>

                    <div class="summary-row">
                        <span>Route</span>
                        <strong id="summaryRoute">Hyderabad → Vijayawada</strong>
                    </div>

                    <div class="summary-row">
                        <span>Seats</span>
                        <strong id="selectedSeatsText">None</strong>
                    </div>

                    <div class="summary-row">
                        <span>Passengers</span>
                        <strong id="summaryPassengers">1</strong>
                    </div>

                    <div class="summary-row">
                        <span>Base Fare</span>
                        <strong id="baseFare">₹0</strong>
                    </div>

                    <div class="summary-row">
                        <span>Convenience Fee</span>
                        <strong id="convenienceFee">₹0</strong>
                    </div>

                    <div class="summary-total">
                        <span>Total</span>
                        <span id="totalFare">₹0</span>
                    </div>

                    <button
                        class="continue-btn"
                        id="continueSeatBtn"
                        disabled
                        onclick="openCheckout()">

                        Continue

                    </button>

                </div>

            </div>

        </div>

    </div>

</div>


<!-- ================= CHECKOUT MODAL ================= -->

<div class="modal-overlay" id="checkoutModal">

    <div class="modal">

        <div class="modal-header">

            <h3>Passenger & Payment Details</h3>

            <button class="close-modal" onclick="closeCheckout()">
                ×
            </button>

        </div>


        <div class="modal-body">

            <div class="checkout-grid">

                <div>

                    <div class="form-card">

                        <h4>Passenger Details</h4>

                        <div class="form-grid">

                            <div class="form-group">
                                <label>Full Name</label>
                                <input
                                    type="text"
                                    id="passengerName"
                                    placeholder="Enter passenger name">
                            </div>

                            <div class="form-group">
                                <label>Age</label>
                                <input
                                    type="number"
                                    id="passengerAge"
                                    placeholder="Age"
                                    min="1"
                                    max="100">
                            </div>

                            <div class="form-group">
                                <label>Mobile Number</label>
                                <input
                                    type="tel"
                                    id="passengerMobile"
                                    placeholder="10 digit mobile number"
                                    maxlength="10">
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <input
                                    type="email"
                                    id="passengerEmail"
                                    placeholder="Email address">
                            </div>

                            <div class="form-group">
                                <label>Boarding Point</label>

                                <select id="boardingPoint">

                                    <option>Hyderabad MGBS</option>
                                    <option>Hyderabad LB Nagar</option>
                                    <option>Hyderabad Kukatpally</option>
                                    <option>Hyderabad Gachibowli</option>

                                </select>
                            </div>

                            <div class="form-group">
                                <label>Dropping Point</label>

                                <select id="droppingPoint">

                                    <option>Vijayawada Bus Stand</option>
                                    <option>Vijayawada Benz Circle</option>
                                    <option>Vijayawada Ramavarappadu</option>

                                </select>
                            </div>

                        </div>

                    </div>


                    <div class="form-card" style="margin-top:15px;">

                        <h4>Payment Method</h4>

                        <div class="payment-options">

                            <div
                                class="payment-option active"
                                onclick="selectPayment(this)">
                                UPI
                            </div>

                            <div
                                class="payment-option"
                                onclick="selectPayment(this)">
                                Cards
                            </div>

                            <div
                                class="payment-option"
                                onclick="selectPayment(this)">
                                Net Banking
                            </div>

                        </div>

                    </div>

                </div>


                <!-- CHECKOUT SUMMARY -->

                <div class="booking-summary">

                    <h4>Fare Summary</h4>

                    <div class="summary-row">
                        <span>Bus</span>
                        <strong id="checkoutBus">Ralis Express</strong>
                    </div>

                    <div class="summary-row">
                        <span>Route</span>
                        <strong id="checkoutRoute">Hyderabad → Vijayawada</strong>
                    </div>

                    <div class="summary-row">
                        <span>Seats</span>
                        <strong id="checkoutSeats">-</strong>
                    </div>

                    <div class="summary-row">
                        <span>Ticket Fare</span>
                        <strong id="checkoutFare">₹0</strong>
                    </div>

                    <div class="summary-row">
                        <span>Convenience Fee</span>
                        <strong>₹30</strong>
                    </div>

                    <div class="summary-row">
                        <span>GST</span>
                        <strong id="checkoutGst">₹0</strong>
                    </div>

                    <div class="summary-total">
                        <span>Total</span>
                        <span id="checkoutTotal">₹0</span>
                    </div>

                    <button
                        class="continue-btn"
                        onclick="confirmBooking()">

                        🔒 Pay Securely

                    </button>

                    <p style="font-size:9px;color:#9ca3af;text-align:center;margin-top:10px;">
                        Demo payment — no real money will be charged.
                    </p>

                </div>

            </div>

        </div>

    </div>

</div>


<!-- ================= CONFIRMATION MODAL ================= -->

<div class="modal-overlay" id="confirmationModal">

    <div class="modal">

        <div class="confirmation">

            <div class="success-icon">
                ✓
            </div>

            <h2>Booking Confirmed!</h2>

            <p style="color:#6b7280;margin-top:8px;">
                Your Ralis Bus ticket has been successfully booked.
            </p>

            <div class="booking-id" id="bookingId">
                RB000000
            </div>

            <div class="form-card" style="max-width:500px;margin:15px auto;text-align:left;">

                <div class="summary-row">
                    <span>Passenger</span>
                    <strong id="confirmPassenger">-</strong>
                </div>

                <div class="summary-row">
                    <span>Route</span>
                    <strong id="confirmRoute">-</strong>
                </div>

                <div class="summary-row">
                    <span>Seats</span>
                    <strong id="confirmSeats">-</strong>
                </div>

                <div class="summary-row">
                    <span>Boarding</span>
                    <strong id="confirmBoarding">-</strong>
                </div>

                <div class="summary-row">
                    <span>Total Paid</span>
                    <strong id="confirmTotal">-</strong>
                </div>

            </div>

            <button
                class="continue-btn"
                style="max-width:300px;"
                onclick="closeAllModals()">

                Done

            </button>

        </div>

    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer id="contact">

    <div class="footer-inner">

        <div class="footer-brand">

            <div class="logo">

                <div class="logo-icon">🚌</div>

                <div class="logo-text">
                    <div class="logo-main" style="color:white;">
                        Ralis Bus
                    </div>

                    <div class="logo-sub">
                        TOURS & TRAVELS
                    </div>
                </div>

            </div>

            <p>
                Your trusted travel partner for safe, comfortable
                and affordable bus journeys across South India.
            </p>

        </div>


        <div>
            <h4>Company</h4>
            <a href="#home">Home</a>
            <a href="#routes">Popular Routes</a>
            <a href="#offers">Offers</a>
            <a href="#">About Us</a>
        </div>


        <div>
            <h4>Support</h4>
            <a href="#">Help Center</a>
            <a href="#">Cancellation Policy</a>
            <a href="#">Refund Policy</a>
            <a href="#">Terms & Conditions</a>
        </div>


        <div>
            <h4>Contact</h4>
            <a href="tel:+919876543210">📞 +91 98765 43210</a>
            <a href="mailto:support@ralisbus.com">✉️ support@ralisbus.com</a>
            <a href="#">📍 Hyderabad, Telangana</a>
        </div>

    </div>


    <div class="copyright">
        © 2026 Ralis Bus Tours & Travels. All rights reserved.
    </div>

</footer>


<!-- TOAST -->

<div class="toast" id="toast"></div>


<script>

    /* ============================================================
       BUS DATA
       ============================================================ */

    const buses = [

        {
            id: 1,
            operator: "Ralis Express",
            type: "AC Sleeper",
            categories: ["AC", "Sleeper"],
            rating: 4.7,
            reviews: 326,
            departure: "09:30 PM",
            arrival: "04:30 AM",
            duration: "7h 00m",
            price: 699,
            seats: 18,
            departureHour: 21,
            amenities: ["❄️ AC", "🔌 Charging", "💧 Water Bottle", "🛡️ Live Tracking"],
            boarding: "MGBS Hyderabad",
            dropping: "Vijayawada Bus Stand"
        },

        {
            id: 2,
            operator: "Ralis Super Fast",
            type: "AC Seater",
            categories: ["AC", "Seater"],
            rating: 4.5,
            reviews: 214,
            departure: "06:15 AM",
            arrival: "11:15 AM",
            duration: "5h 00m",
            price: 549,
            seats: 24,
            departureHour: 6,
            amenities: ["❄️ AC", "🔌 Charging", "💧 Water Bottle"],
            boarding: "LB Nagar Hyderabad",
            dropping: "Vijayawada Bus Stand"
        },

        {
            id: 3,
            operator: "Ralis Coastal Express",
            type: "AC Sleeper",
            categories: ["AC", "Sleeper"],
            rating: 4.8,
            reviews: 488,
            departure: "10:45 PM",
            arrival: "05:45 AM",
            duration: "7h 00m",
            price: 799,
            seats: 12,
            departureHour: 22,
            amenities: ["❄️ AC", "📶 WiFi", "🔌 Charging", "🛡️ Live Tracking"],
            boarding: "Kukatpally Hyderabad",
            dropping: "Benz Circle Vijayawada"
        },

        {
            id: 4,
            operator: "Ralis City Connect",
            type: "Non-AC Seater",
            categories: ["Non-AC", "Seater"],
            rating: 4.1,
            reviews: 146,
            departure: "01:30 PM",
            arrival: "06:45 PM",
            duration: "5h 15m",
            price: 449,
            seats: 31,
            departureHour: 13,
            amenities: ["🔌 Charging", "💧 Water Bottle"],
            boarding: "Gachibowli Hyderabad",
            dropping: "Vijayawada Bus Stand"
        },

        {
            id: 5,
            operator: "Ralis Night Rider",
            type: "AC Sleeper",
            categories: ["AC", "Sleeper"],
            rating: 4.6,
            reviews: 277,
            departure: "08:15 PM",
            arrival: "03:30 AM",
            duration: "7h 15m",
            price: 749,
            seats: 9,
            departureHour: 20,
            amenities: ["❄️ AC", "🛏️ Sleeper", "🔌 Charging", "💧 Water"],
            boarding: "MGBS Hyderabad",
            dropping: "Vijayawada Bus Stand"
        },

        {
            id: 6,
            operator: "Ralis Economy",
            type: "Non-AC Seater",
            categories: ["Non-AC", "Seater"],
            rating: 3.9,
            reviews: 98,
            departure: "04:00 PM",
            arrival: "09:15 PM",
            duration: "5h 15m",
            price: 399,
            seats: 35,
            departureHour: 16,
            amenities: ["💧 Water Bottle"],
            boarding: "LB Nagar Hyderabad",
            dropping: "Vijayawada Bus Stand"
        },

        {
            id: 7,
            operator: "Ralis Premium",
            type: "AC Seater",
            categories: ["AC", "Seater"],
            rating: 4.4,
            reviews: 185,
            departure: "11:30 AM",
            arrival: "04:45 PM",
            duration: "5h 15m",
            price: 599,
            seats: 19,
            departureHour: 11,
            amenities: ["❄️ AC", "🔌 Charging", "📺 Entertainment"],
            boarding: "Gachibowli Hyderabad",
            dropping: "Vijayawada Bus Stand"
        },

        {
            id: 8,
            operator: "Ralis Sleeper Plus",
            type: "AC Sleeper",
            categories: ["AC", "Sleeper"],
            rating: 4.9,
            reviews: 561,
            departure: "11:00 PM",
            arrival: "06:00 AM",
            duration: "7h 00m",
            price: 899,
            seats: 7,
            departureHour: 23,
            amenities: ["❄️ AC", "🛏️ Sleeper", "📶 WiFi", "🔌 Charging"],
            boarding: "MGBS Hyderabad",
            dropping: "Vijayawada Bus Stand"
        }

    ];


    let selectedBus = null;
    let selectedSeats = [];
    let currentFare = 0;


    /* ============================================================
       DATE
       ============================================================ */

    function initializeDate() {

        const dateInput = document.getElementById("journeyDate");

        const today = new Date();

        const yyyy = today.getFullYear();
        const mm = String(today.getMonth() + 1).padStart(2, "0");
        const dd = String(today.getDate()).padStart(2, "0");

        dateInput.min = `${yyyy}-${mm}-${dd}`;

        dateInput.value = `${yyyy}-${mm}-${dd}`;
    }

    initializeDate();


    function setDate(offset) {

        const date = new Date();

        date.setDate(date.getDate() + offset);

        const yyyy = date.getFullYear();
        const mm = String(date.getMonth() + 1).padStart(2, "0");
        const dd = String(date.getDate()).padStart(2, "0");

        document.getElementById("journeyDate").value =
            `${yyyy}-${mm}-${dd}`;

    }


    function formattedDate() {

        const value =
            document.getElementById("journeyDate").value;

        if (!value) {
            return "Select date";
        }

        const date = new Date(value + "T00:00:00");

        return date.toLocaleDateString("en-IN", {
            day: "2-digit",
            month: "short",
            year: "numeric"
        });
    }


    /* ============================================================
       SEARCH
       ============================================================ */

    function searchBuses() {

        const from =
            document.getElementById("fromCity").value;

        const to =
            document.getElementById("toCity").value;

        if (from === to) {

            showToast("From and To cities cannot be the same.");

            return;
        }

        document.getElementById("resultRoute").textContent =
            `${from} → ${to}`;

        document.getElementById("resultDate").textContent =
            formattedDate();

        document.getElementById("resultsSection").style.display =
            "block";

        renderBuses(buses);

        document.getElementById("resultsSection")
            .scrollIntoView({
                behavior: "smooth"
            });
    }


    function quickRoute(from, to) {

        document.getElementById("fromCity").value = from;
        document.getElementById("toCity").value = to;

        searchBuses();
    }


    function swapCities() {

        const from =
            document.getElementById("fromCity");

        const to =
            document.getElementById("toCity");

        const temp = from.value;

        from.value = to.value;
        to.value = temp;
    }


    function selectTrip(button) {

        document
            .querySelectorAll(".trip-tab")
            .forEach(tab => tab.classList.remove("active"));

        button.classList.add("active");

        if (button.textContent.includes("Round")) {

            showToast("Round trip mode selected.");

        }

    }


    /* ============================================================
       BUS RENDER
       ============================================================ */

    function renderBuses(data) {

        const list =
            document.getElementById("busList");

        list.innerHTML = "";

        document.getElementById("busCount").textContent =
            data.length;

        if (data.length === 0) {

            list.innerHTML = `
                <div style="
                    background:white;
                    padding:45px;
                    border-radius:12px;
                    text-align:center;
                    border:1px solid #e5e7eb;
                ">
                    <div style="font-size:40px;">🚌</div>

                    <h3 style="margin-top:10px;">
                        No buses found
                    </h3>

                    <p style="
                        color:#6b7280;
                        font-size:13px;
                        margin-top:5px;
                    ">
                        Try changing your filters.
                    </p>
                </div>
            `;

            return;
        }


        data.forEach(bus => {

            const card =
                document.createElement("div");

            card.className = "bus-card";

            card.innerHTML = `

                <div class="bus-main">

                    <div class="bus-operator">

                        <div class="bus-logo">
                            🚌
                        </div>

                        <div>

                            <div class="operator-name">
                                ${bus.operator}
                            </div>

                            <div class="bus-type">
                                ${bus.type}
                            </div>

                            <div class="rating">
                                ★ ${bus.rating}
                            </div>

                            <span style="
                                font-size:9px;
                                color:#9ca3af;
                                margin-left:3px;
                            ">
                                ${bus.reviews} reviews
                            </span>

                        </div>

                    </div>


                    <div>

                        <div class="time">
                            ${bus.departure}
                        </div>

                        <div class="city">
                            ${getCityFrom()}
                        </div>

                    </div>


                    <div class="duration">

                        ${bus.duration}

                        <div class="duration-line"></div>

                        Direct

                    </div>


                    <div>

                        <div class="time">
                            ${bus.arrival}
                        </div>

                        <div class="city">
                            ${getCityTo()}
                        </div>

                    </div>


                    <div>

                        <div class="price">
                            ₹${bus.price}
                        </div>

                        <div class="per-seat">
                            per passenger
                        </div>

                        <div class="seat-left">
                            ${bus.seats} seats left
                        </div>

                        <button
                            class="view-seat-btn"
                            onclick="openSeatSelection(${bus.id})">

                            View Seats

                        </button>

                    </div>

                </div>


                <div class="bus-details" id="details-${bus.id}">

                    <div class="amenities">

                        ${bus.amenities.map(a =>
                            `<span class="amenity">${a}</span>`
                        ).join("")}

                    </div>

                    <div class="points">

                        <div class="point-box">

                            <small>BOARDING POINT</small>

                            <strong>
                                ${bus.boarding}
                            </strong>

                        </div>

                        <div class="point-box">

                            <small>DROPPING POINT</small>

                            <strong>
                                ${bus.dropping}
                            </strong>

                        </div>

                    </div>

                </div>

            `;

            card.addEventListener("dblclick", () => {

                const details =
                    document.getElementById(`details-${bus.id}`);

                details.classList.toggle("open");

            });

            list.appendChild(card);

        });

    }


    function getCityFrom() {

        return document.getElementById("fromCity").value;
    }


    function getCityTo() {

        return document.getElementById("toCity").value;
    }


    /* ============================================================
       FILTERS
       ============================================================ */

    document
        .querySelectorAll(".type-filter, .time-filter")
        .forEach(input => {

            input.addEventListener("change", applyFilters);

        });


    document
        .querySelectorAll("input[name='rating']")
        .forEach(input => {

            input.addEventListener("change", applyFilters);

        });


    function updatePriceFilter() {

        const value =
            document.getElementById("priceRange").value;

        document.getElementById("priceValue").textContent =
            `₹${value}`;

        applyFilters();
    }


    function applyFilters() {

        let filtered = [...buses];

        const selectedTypes =
            [...document.querySelectorAll(".type-filter:checked")]
                .map(x => x.value);

        const selectedTimes =
            [...document.querySelectorAll(".time-filter:checked")]
                .map(x => x.value);

        const selectedRating =
            document.querySelector("input[name='rating']:checked");

        const maxPrice =
            Number(document.getElementById("priceRange").value);


        if (selectedTypes.length > 0) {

            filtered = filtered.filter(bus =>

                selectedTypes.some(type =>
                    bus.categories.includes(type)
                )

            );

        }


        if (selectedTimes.length > 0) {

            filtered = filtered.filter(bus => {

                const h = bus.departureHour;

                return selectedTimes.some(time => {

                    if (time === "morning") {
                        return h >= 5 && h < 12;
                    }

                    if (time === "afternoon") {
                        return h >= 12 && h < 17;
                    }

                    if (time === "evening") {
                        return h >= 17 && h < 21;
                    }

                    if (time === "night") {
                        return h >= 21 || h < 5;
                    }

                    return true;

                });

            });

        }


        filtered = filtered.filter(bus =>
            bus.price <= maxPrice
        );


        if (selectedRating) {

            filtered = filtered.filter(bus =>
                bus.rating >= Number(selectedRating.value)
            );

        }


        renderBuses(filtered);

    }


    function clearFilters() {

        document
            .querySelectorAll(".type-filter, .time-filter")
            .forEach(x => x.checked = false);

        document
            .querySelectorAll("input[name='rating']")
            .forEach(x => x.checked = false);

        document.getElementById("priceRange").value = 2000;

        document.getElementById("priceValue").textContent =
            "₹2000";

        renderBuses(buses);

    }


    /* ============================================================
       SORT
       ============================================================ */

    function sortBuses() {

        const sort =
            document.getElementById("sortSelect").value;

        let data = [...buses];


        if (sort === "priceLow") {

            data.sort((a,b) => a.price - b.price);

        }


        if (sort === "priceHigh") {

            data.sort((a,b) => b.price - a.price);

        }


        if (sort === "departure") {

            data.sort((a,b) =>
                a.departureHour - b.departureHour
            );

        }


        if (sort === "rating") {

            data.sort((a,b) =>
                b.rating - a.rating
            );

        }


        renderBuses(data);

    }


    /* ============================================================
       SEAT SELECTION
       ============================================================ */

    function openSeatSelection(busId) {

        selectedBus =
            buses.find(bus => bus.id === busId);

        selectedSeats = [];

        currentFare = selectedBus.price;

        document.getElementById("modalBusTitle").textContent =
            `${selectedBus.operator} • ${selectedBus.type}`;

        document.getElementById("summaryBus").textContent =
            selectedBus.operator;

        document.getElementById("summaryRoute").textContent =
            `${getCityFrom()} → ${getCityTo()}`;

        document.getElementById("summaryPassengers").textContent =
            document.getElementById("passengers").value;

        document.getElementById("bookingModal")
            .classList.add("show");

        createSeatMap();

        updateSeatSummary();

    }


    function createSeatMap() {

        const map =
            document.getElementById("seatMap");

        map.innerHTML = "";

        const bookedSeats =
            [3, 7, 11, 16, 21, 28, 33];


        for (let row = 0; row < 10; row++) {

            const rowElement =
                document.createElement("div");

            rowElement.className = "seat-row";


            for (let position = 0; position < 4; position++) {

                const seatNumber =
                    row * 3 + position + 1;

                if (position === 2) {

                    const gap =
                        document.createElement("div");

                    rowElement.appendChild(gap);

                    continue;
                }


                const seat =
                    document.createElement("button");

                seat.className = "seat";

                seat.textContent =
                    seatNumber;

                if (bookedSeats.includes(seatNumber)) {

                    seat.classList.add("booked");

                    seat.disabled = true;

                } else {

                    seat.onclick = () =>
                        toggleSeat(seatNumber, seat);

                }

                rowElement.appendChild(seat);

            }

            map.appendChild(rowElement);

        }

    }


    function toggleSeat(number, element) {

        const maxPassengers =
            Number(
                document.getElementById("passengers").value
            );


        if (selectedSeats.includes(number)) {

            selectedSeats =
                selectedSeats.filter(
                    seat => seat !== number
                );

            element.classList.remove("selected");

        } else {

            if (selectedSeats.length >= maxPassengers) {

                showToast(
                    `You can select only ${maxPassengers} seat(s).`
                );

                return;
            }

            selectedSeats.push(number);

            element.classList.add("selected");

        }


        updateSeatSummary();

    }


    function updateSeatSummary() {

        const seatText =
            selectedSeats.length > 0
                ? selectedSeats.join(", ")
                : "None";

        document.getElementById("selectedSeatsText")
            .textContent = seatText;


        const fare =
            selectedSeats.length *
            (selectedBus ? selectedBus.price : 0);


        const fee =
            selectedSeats.length > 0 ? 30 : 0;


        document.getElementById("baseFare")
            .textContent = `₹${fare}`;

        document.getElementById("convenienceFee")
            .textContent = `₹${fee}`;

        document.getElementById("totalFare")
            .textContent = `₹${fare + fee}`;


        document.getElementById("continueSeatBtn")
            .disabled = selectedSeats.length === 0;

    }


    /* ============================================================
       CHECKOUT
       ============================================================ */

    function openCheckout() {

        if (!selectedBus || selectedSeats.length === 0) {

            showToast("Please select a seat.");

            return;
        }


        const fare =
            selectedSeats.length * selectedBus.price;

        const gst =
            Math.round(fare * 0.05);

        const total =
            fare + 30 + gst;


        document.getElementById("checkoutBus")
            .textContent = selectedBus.operator;

        document.getElementById("checkoutRoute")
            .textContent =
            `${getCityFrom()} → ${getCityTo()}`;

        document.getElementById("checkoutSeats")
            .textContent =
            selectedSeats.join(", ");

        document.getElementById("checkoutFare")
            .textContent = `₹${fare}`;

        document.getElementById("checkoutGst")
            .textContent = `₹${gst}`;

        document.getElementById("checkoutTotal")
            .textContent = `₹${total}`;


        document.getElementById("bookingModal")
            .classList.remove("show");

        document.getElementById("checkoutModal")
            .classList.add("show");

    }


    function selectPayment(element) {

        document
            .querySelectorAll(".payment-option")
            .forEach(x =>
                x.classList.remove("active")
            );

        element.classList.add("active");

    }


    /* ============================================================
       CONFIRM BOOKING
       ============================================================ */

    function confirmBooking() {

        const name =
            document.getElementById("passengerName").value.trim();

        const age =
            document.getElementById("passengerAge").value;

        const mobile =
            document.getElementById("passengerMobile").value.trim();

        const email =
            document.getElementById("passengerEmail").value.trim();


        if (!name || !age || !mobile || !email) {

            showToast("Please fill all passenger details.");

            return;
        }


        if (!/^[0-9]{10}$/.test(mobile)) {

            showToast("Please enter a valid 10-digit mobile number.");

            return;
        }


        const fare =
            selectedSeats.length * selectedBus.price;

        const gst =
            Math.round(fare * 0.05);

        const total =
            fare + 30 + gst;


        const bookingNumber =
            "RB" +
            Date.now().toString().slice(-8);


        document.getElementById("bookingId")
            .textContent = bookingNumber;

        document.getElementById("confirmPassenger")
            .textContent = name;

        document.getElementById("confirmRoute")
            .textContent =
            `${getCityFrom()} → ${getCityTo()}`;

        document.getElementById("confirmSeats")
            .textContent =
            selectedSeats.join(", ");

        document.getElementById("confirmBoarding")
            .textContent =
            document.getElementById("boardingPoint").value;

        document.getElementById("confirmTotal")
            .textContent = `₹${total}`;


        document.getElementById("checkoutModal")
            .classList.remove("show");

        document.getElementById("confirmationModal")
            .classList.add("show");

    }


    /* ============================================================
       LOGIN
       ============================================================ */

    function openLogin() {

        const phone =
            prompt(
                "Enter your 10-digit mobile number:"
            );

        if (phone) {

            showToast(
                "Login demo: OTP verification would happen here."
            );

        }

    }


    /* ============================================================
       MODAL
       ============================================================ */

    function closeModal() {

        document.getElementById("bookingModal")
            .classList.remove("show");

    }


    function closeCheckout() {

        document.getElementById("checkoutModal")
            .classList.remove("show");

    }


    function closeAllModals() {

        document
            .querySelectorAll(".modal-overlay")
            .forEach(modal =>
                modal.classList.remove("show")
            );

    }


    /* ============================================================
       TOAST
       ============================================================ */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");

        toast.textContent = message;

        toast.classList.add("show");

        clearTimeout(toastTimer);

        toastTimer =
            setTimeout(() => {

                toast.classList.remove("show");

            }, 2800);

    }


    /* ============================================================
       MOBILE MENU
       ============================================================ */

    function toggleMobileMenu() {

        const nav =
            document.querySelector(".nav-links");

        if (nav.style.display === "flex") {

            nav.style.display = "";

        } else {

            nav.style.display = "flex";
            nav.style.position = "absolute";
            nav.style.top = "72px";
            nav.style.left = "0";
            nav.style.right = "0";
            nav.style.background = "white";
            nav.style.padding = "20px";
            nav.style.flexDirection = "column";
            nav.style.boxShadow = "0 10px 25px rgba(0,0,0,.1)";

        }

    }


    /* ============================================================
       CLOSE MODAL ON BACKGROUND CLICK
       ============================================================ */

    document
        .querySelectorAll(".modal-overlay")
        .forEach(overlay => {

            overlay.addEventListener("click", function(event) {

                if (event.target === overlay) {

                    overlay.classList.remove("show");

                }

            });

        });

</script>

</body>
</html>
