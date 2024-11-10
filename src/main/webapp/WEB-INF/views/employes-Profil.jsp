<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Recherche Employés</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Couleurs principales */
        :root {
            --primary-color: #007bff; /* Bleu */
            --secondary-color: #6c757d; /* Gris clair */
            --accent-color: #28a745; /* Vert */
            --background-color: #f8f9fa; /* Gris clair pour le fond */
            --hover-color: #0056b3; /* Bleu foncé */
            --button-color: #007bff; /* Bleu bouton */
            --button-hover-color: #0056b3; /* Bleu foncé bouton */
            --button-green: #28a745; /* Vert bouton */
            --button-hover-green: #218838; /* Vert foncé bouton */
            --dark-header: #343a40; /* Header sombre */
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 30px;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.6s ease-out;
        }

        h1 {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary-color);
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        h1::after {
            content: '\f0c8';
            font-family: 'Font Awesome 5 Free';
            position: absolute;
            right: -30px;
            top: 5px;
            font-size: 1.5rem;
            color: var(--primary-color);
            animation: bounce 1s infinite alternate;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 1rem;
            border: 1px solid #ddd;
            color: #333;
            background-color: #fff;
        }

        /* Header sombre */
        thead {
            background-color: var(--dark-header);
            color: white;
        }

        th {
            font-weight: 600;
        }

        tr:hover {
            background-color: #f1f1f1;
            transform: scale(1.02);
            transition: transform 0.3s ease;
        }

        a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: var(--accent-color);
        }

        .btn {
            font-size: 1rem;
            padding: 10px 20px;
            color: white;
            background-color: var(--button-color);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: inline-flex;
            align-items: center;
        }

        .btn:hover {
            background-color: var(--button-hover-color);
        }

        /* Bouton vert pour validation */
        .btn-green {
            background-color: var(--button-green);
        }

        .btn-green:hover {
            background-color: var(--button-hover-green);
        }

        .btn i {
            margin-right: 8px;
        }

        /* Animation et transitions */
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Liste Employés correspondant au profil</h1>

        <table>
            <thead>
                <tr>
                    <th><i class="fas fa-user"></i> Nom Employés</th>
                    <th><i class="fas fa-envelope"></i> Email</th>
                    <th><i class="fas fa-briefcase"></i> Poste Actuel</th>
                    <th><i class="fas fa-chart-line"></i> Moyenne</th>
                    <th><i class="fas fa-cogs"></i> Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Rivo</td>
                    <td>Rivo@gmail.com</td>
                    <td>Manager</td>
                    <td>15,75</td>
                    <td>
                        <a href="#" class="btn btn-green"><i class="fas fa-check-circle"></i> Valider pour ce poste</a>
                    </td>
                </tr>
                <tr>
                    <td>Marie</td>
                    <td>Marie@gmail.com</td>
                    <td>Développeur</td>
                    <td>14,50</td>
                    <td>
                        <a href="#" class="btn btn-green"><i class="fas fa-check-circle"></i> Valider pour ce poste</a>
                    </td>
                </tr>
                <tr>
                    <td>Jean</td>
                    <td>Jean@gmail.com</td>
                    <td>Analyste</td>
                    <td>16,20</td>
                    <td>
                        <a href="#" class="btn btn-green"><i class="fas fa-check-circle"></i> Valider pour ce poste</a>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="text-center">
            <button class="btn"><i class="fas fa-bullhorn"></i> Générer annonce</button>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
