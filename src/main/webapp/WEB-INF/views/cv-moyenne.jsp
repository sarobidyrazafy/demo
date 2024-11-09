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
        /* Style principal pour harmoniser avec le formulaire d'inscription */
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
            padding: 20px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 1.6rem;
            font-weight: 700;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }

        .table {
            border-radius: 8px;
            overflow: hidden;
        }

        .table th {
            background-color: #343a40; /* Couleur foncée pour le thead */
            color: white;
            font-weight: 500;
            padding: 1rem;
        }

        .table td {
            padding: 0.75rem;
            vertical-align: middle;
        }

        .table tr:nth-child(even) {
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

        .btn-info {
            background-color: #007bff; /* Bleu vif */
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

        /* Icônes dans les boutons */
        .btn-custom i {
            margin-right: 8px;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Liste des Employés Correspondant au Profil</h1>
        <div class="table-responsive">
            <table class="table text-center align-middle">
                <thead>
                    <tr>
                        <th>CV</th>
                        <th>Annonce</th>
                        <th>Nom</th>
                        <th>Email</th>
                        <th>Moyenne</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#1</td>
                        <td>Recrutement Manager</td>
                        <td>Rivo</td>
                        <td>Rivo@gmail.com</td>
                        <td>15,75</td>
                        <td>
                            <a href="details-cv.html" class="btn btn-custom btn-info"><i class="fas fa-eye"></i></a>
                            <button class="btn btn-custom btn-success"><i class="fas fa-check"></i></button>
                            <button class="btn btn-custom btn-danger"><i class="fas fa-times"></i></button>
                        </td>
                    </tr>
                    <!-- Lignes supplémentaires ici -->
                </tbody>
            </table>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
