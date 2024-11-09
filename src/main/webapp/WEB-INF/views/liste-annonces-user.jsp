<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste Annonces</title>
    <!-- Lien vers FontAwesome pour les icônes -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Styles de base */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .container {
            width: 80%;
            max-width: 1000px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        h1 {
            font-size: 2rem;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Lien style pour les actions */
        a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            margin-right: 15px;
        }

        a:hover {
            opacity: 0.8;
        }

        .icon {
            font-size: 18px;
            margin-right: 5px;
        }

        /* Boutons stylisés */
        .action-btn {
            display: inline-block;
            padding: 8px 16px;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .action-btn.view {
            background-color: #3498db; /* Bleu pour Détails Profil */
        }

        .action-btn.view:hover {
            background-color: #2980b9;
        }

        .action-btn.apply {
            background-color: #2ecc71; /* Vert pour Postuler */
        }

        .action-btn.apply:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Liste des Annonces</h1>

        <table>
            <thead>
                <tr>
                    <th>Désignation Annonce</th>
                    <th>Date</th>
                    <th>Poste</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Recrutement</td>
                    <td>Secrétaire Administratif</td>
                    <td>Secrétaire Administratif</td>
                    <td>
                        <a href="details-profil.html" class="action-btn view">
                            <i class="fa fa-info-circle icon"></i>Détails Profil
                        </a>
                        <a href="recherche-employes.html" class="action-btn apply">
                            <i class="fa fa-paper-plane icon"></i>Postuler
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>Recrutement</td>
                    <td>Manager</td>
                    <td>Manager</td>
                    <td>
                        <a href="details-profil.html" class="action-btn view">
                            <i class="fa fa-info-circle icon"></i>Détails Profil
                        </a>
                        <a href="recherche-employes.html" class="action-btn apply">
                            <i class="fa fa-paper-plane icon"></i>Postuler
                        </a>
                    </td>
                </tr>
                <!-- Ajoutez d'autres lignes ici -->
            </tbody>
        </table>
    </div>

</body>
</html>
