<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste Annonces</title>
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

        a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
        }

        a:hover {
            color: #2980b9;
        }

        .btn {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            display: block;
            width: 50%;
            text-align: center;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        .icon {
            font-size: 20px;
            margin-right: 5px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Liste des Annonces</h1>

        <table>
            <thead>
                <tr>
                    <th>Annonce</th>
                    <th>Poste</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Recrutement</td>
                    <td>Secrétaire Administratif</td>
                    <td>01/11/2024</td>
                    <td>
                        <a href="cv-moyenne.html" class="btn">
                            <i class="fa fa-eye icon"></i> 
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>Recrutement</td>
                    <td>Manager</td>
                    <td>02/11/2024</td>
                    <td>
                        <a href="cv-moyenne.html" class="btn">
                            <i class="fa fa-eye icon"></i> 
                        </a>
                    </td>
                </tr>
                <!-- Ajoutez d'autres lignes ici -->
            </tbody>
        </table>
    </div>

</body>
</html>
