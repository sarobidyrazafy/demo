<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Créer un Profil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Styles de base */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            min-height: 100vh;
            align-items: center;
        }
        .container {
            max-width: 650px;
            width: 100%;
            padding: 20px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 1.8rem;
            margin-bottom: 20px;
            text-align: center;
            color: #2c3e50;
        }
        .form-section {
            margin-bottom: 20px;
        }
        .section-header {
            font-size: 1.2rem;
            font-weight: bold;
            color: #fff;
            background-color: #333;
            padding: 10px;
            border-radius: 6px 6px 0 0;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .section-header i {
            font-size: 1.5rem;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 6px;
            margin-bottom: 15px;
        }
        .form-check {
            margin-bottom: 10px;
        }
        .form-check input {
            margin-right: 10px;
        }
        .btn {
            background-color: #3498db;
            color: white;
            padding: 12px;
            font-size: 1rem;
            border-radius: 6px;
            border: none;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        .d-flex {
            display: flex;
            gap: 15px;
            align-items: center;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Créer un Profil</h1>

        <!-- Informations Personnelles -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-user"></i>
                Informations Personnelles
            </div>
            <form>
                <div>
                    <label for="nom">Nom complet</label>
                    <input type="text" class="form-control" id="nom" name="nom" placeholder="Votre nom complet" required>
                </div>
                <div>
                    <label for="date_naissance">Date de naissance</label>
                    <input type="date" class="form-control" id="date_naissance" name="date_naissance" required>
                </div>
                <div>
                    <label for="sexe">Sexe</label>
                    <select class="form-control" id="sexe" name="sexe" required>
                        <option selected disabled>Choisir</option>
                        <option>Homme</option>
                        <option>Femme</option>
                        <option>Autre</option>
                    </select>
                </div>
            </form>
        </div>

        <!-- Adresse -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-map-marker-alt"></i>
                Adresse
            </div>
            <div>
                <label for="adresse">Adresse</label>
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Votre adresse" required>
            </div>
            <div>
                <label for="ville">Ville</label>
                <input type="text" class="form-control" id="ville" name="ville" placeholder="Ville" required>
            </div>
            <div>
                <label for="code_postal">Code postal</label>
                <input type="text" class="form-control" id="code_postal" name="code_postal" placeholder="Code postal" required>
            </div>
        </div>

        <!-- Contact -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-phone"></i>
                Contact
            </div>
            <div>
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Votre email" required>
            </div>
            <div>
                <label for="telephone">Téléphone</label>
                <input type="tel" class="form-control" id="telephone" name="telephone" placeholder="Numéro de téléphone" required>
            </div>
        </div>

        <!-- Compétences -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-cogs"></i>
                Compétences
            </div>
            <div>
                <label for="competences">Compétences clés</label>
                <textarea class="form-control" id="competences" name="competences" rows="4" placeholder="Listez vos compétences" required></textarea>
            </div>
        </div>

        <!-- Soumettre -->
        <button type="submit" class="btn">Soumettre</button>
    </div>

</body>
</html>
