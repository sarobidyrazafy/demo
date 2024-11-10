<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Détails CV</title>
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
        }

        h1 {
            font-size: 2rem;
            font-weight: 700;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }

        .details-section {
            margin-bottom: 1.5rem;
        }

        .details-section h5 {
            font-size: 1.1rem;
            font-weight: 600;
            color: #333;
            margin-bottom: 10px;
        }

        .details-section p,
        .details-section ul,
        .details-section table {
            font-size: 1rem;
            line-height: 1.6;
        }

        .details-section table {
            width: 100%;
            margin-top: 10px;
            border-collapse: collapse;
        }

        .details-section table th,
        .details-section table td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .details-section table th {
            background-color: #007bff;
            color: #fff;
        }

        .details-section table tr:nth-child(even) {
            background-color: #f9fafb;
        }

        .btn-custom {
            font-size: 1.2rem;
            border-radius: 8px;
            border: none;
            padding: 0.6rem 1rem;
            color: white;
            cursor: pointer;
        }

        .btn-success {
            background-color: #28a745; /* Vert vif */
        }

        .btn-danger {
            background-color: #dc3545; /* Rouge vif */
        }

        .btn-custom:hover {
            opacity: 0.8;
        }

        .btn-custom i {
            margin-right: 8px;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Détails du CV</h1>

        <div class="details-section">
            <h5>Nom:</h5>
            <p>Rivo</p>
        </div>

        <div class="details-section">
            <h5>Email:</h5>
            <p>Rivo@gmail.com</p>
        </div>

        <div class="details-section">
            <h5>Date de naissance:</h5>
            <p>01 Janvier 1995</p>
        </div>

        <div class="details-section">
            <h5>Genre:</h5>
            <p>Masculin</p>
        </div>

        <div class="details-section">
            <h5>Année d'expérience:</h5>
            <p>5 ans</p>
        </div>

        <div class="details-section">
            <h5>Diplômes et formations:</h5>
            <table>
                <tr>
                    <th>Diplôme</th>
                    <th>Filière</th>
                    <th>Etablissement</th>
                </tr>
                <tr>
                    <td>Licence</td>
                    <td>Informatique</td>
                    <td>IT University</td>
                </tr>
                <tr>
                    <td>Master</td>
                    <td>Design</td>
                    <td>IT University</td>
                </tr>
            </table>
        </div>

        <div class="details-section">
            <h5>Expériences:</h5>
            <table>
                <tr>
                    <th>Période (Début-Fin)</th>
                    <th>Poste occupé</th>
                    <th>Entreprise</th>
                </tr>
                <tr>
                    <td>2020-2022</td>
                    <td>Développeur Junior</td>
                    <td>IT Solutions</td>
                </tr>
                <tr>
                    <td>2022-2024</td>
                    <td>Designer UI/UX</td>
                    <td>Creative Labs</td>
                </tr>
            </table>
        </div>

        <div class="details-section">
            <h5>Langues maîtrisées:</h5>
            <ul>
                <li>Français</li>
                <li>Anglais</li>
                <li>Espagnol</li>
            </ul>
        </div>

        <div class="details-section">
            <h5>Moyenne:</h5>
            <p>12,40</p>
        </div>

        <div class="text-center">
            <button class="btn btn-custom btn-success"><i class="fas fa-check"></i> Valider</button>
            <button class="btn btn-custom btn-danger"><i class="fas fa-times"></i> Rejeter</button>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
