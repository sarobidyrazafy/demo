<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Détails Profil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #f0f4f8, #d9e2ec);
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin-top: 2rem;
            padding: 30px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.6s ease-out;
        }

        h1 {
            font-size: 2rem;
            font-weight: 700;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
            position: relative;
        }

        h1::after {
            content: '\f0e7';
            font-family: 'Font Awesome 5 Free';
            position: absolute;
            right: -30px;
            top: 5px;
            font-size: 1.5rem;
            color: #007bff;
            animation: bounce 1s infinite alternate;
        }

        .details-section {
            margin-bottom: 1.5rem;
            padding: 1rem;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            position: relative;
        }

        .details-section h5 {
            font-size: 1.2rem;
            font-weight: 600;
            color: #333;
            margin-bottom: 10px;
        }

        .details-section p,
        .details-section ul {
            font-size: 1rem;
            line-height: 1.6;
        }

        .details-section ul {
            list-style-type: none;
            padding-left: 0;
        }

        .details-section ul li {
            padding-left: 1.5rem;
            position: relative;
            animation: fadeInText 1s ease-in-out;
        }

        .details-section ul li:before {
            content: '\f00c';
            font-family: 'Font Awesome 5 Free';
            position: absolute;
            left: 0;
            top: 0;
            color: #007bff;
            font-size: 1.2rem;
        }

        .details-section .icon {
            font-size: 1.5rem;
            color: #007bff;
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            transition: color 0.3s ease;
        }

        .details-section:hover .icon {
            color: #2ecc71;
            transform: translateY(-50%) scale(1.2);
        }

        .btn-custom {
            font-size: 1.2rem;
            border-radius: 8px;
            border: none;
            padding: 0.6rem 1rem;
            color: white;
            cursor: pointer;
            margin-top: 20px;
        }

        .btn-primary {
            background-color: #007bff; /* Bleu vif */
        }

        .btn-custom:hover {
            opacity: 0.8;
        }

        .btn-custom i {
            margin-right: 8px;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes bounce {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-10px);
            }
        }

        @keyframes fadeInText {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Détails Profil</h1>

        <div class="details-section">
            <h5><i class="fas fa-briefcase"></i> Poste:</h5>
            <p>Responsable Marketing</p>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="details-section">
            <h5><i class="fas fa-cogs"></i> Domaine:</h5>
            <p>Communication</p>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="details-section">
            <h5><i class="fas fa-genderless"></i> Genre idéal:</h5>
            <p>Femme</p>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="details-section">
            <h5><i class="fas fa-birthday-cake"></i> Age idéal:</h5>
            <p>30-40 ans</p>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="details-section">
            <h5><i class="fas fa-calendar-check"></i> Année d'expérience:</h5>
            <p>3-5 ans</p>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="details-section">
            <h5><i class="fas fa-graduation-cap"></i> Diplômes requis:</h5>
            <ul>
                <li>Master II en Communication</li>
                <li>Anglais</li>
            </ul>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="details-section">
            <h5><i class="fas fa-language"></i> Langues requises:</h5>
            <ul>
                <li>Français</li>
                <li>Anglais</li>
            </ul>
            <i class="fas fa-edit icon"></i>
        </div>

        <div class="text-center">
            <button class="btn btn-custom btn-primary"><i class="fas fa-check"></i> Postuler</button>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
