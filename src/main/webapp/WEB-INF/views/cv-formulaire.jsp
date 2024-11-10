<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Envoyer CV</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Styles de base */
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        .container {
            max-width: 600px;
            padding: 20px;
            margin: 20px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
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
            display: flex;
            align-items: center;
            background-size: cover;
            padding: 10px;
            border-radius: 8px;
            color: #fff;
            font-weight: bold;
            font-size: 1.2rem;
            margin-bottom: 15px;
            background-color: rgba(0, 0, 0, 0.7);
            background-blend-mode: multiply;
        }
        .section-header i {
            font-size: 1.5rem;
            margin-right: 10px;
        }
        .form-control {
            width: 100%;
            padding: 8px 12px;
            font-size: 0.9rem;
            border: 1px solid #ddd;
            border-radius: 6px;
            margin-bottom: 10px;
        }
        .form-check {
            margin-bottom: 5px;
        }
        .btn {
            font-size: 0.95rem;
            font-weight: bold;
            border-radius: 20px;
            background-color: #3498db;
            color: #fff;
            padding: 10px;
            cursor: pointer;
            border: none;
            width: 100%;
            margin-top: 15px;
            transition: background 0.3s;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        .d-flex {
            display: flex;
            gap: 10px;
            align-items: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Envoyer votre CV</h1>
        
        <div class="form-section">
            <div class="section-header" style="background-image: url('https://undraw.co/api/download?color=007acc&id=personal_info');">
                <i class="fas fa-user"></i> Informations personnelles
            </div>
            <form>
                <div>
                    <label for="nom">Nom complet</label>
                    <input type="text" class="form-control" id="nom" name="nom" placeholder="Votre nom complet">
                </div>
                <div>
                    <label for="date_naissance">Date de naissance</label>
                    <input type="date" class="form-control" id="date_naissance" name="date_naissance">
                </div>
                <div>
                    <label for="sexe">Sexe</label>
                    <select class="form-control" id="sexe" name="sexe">
                        <option selected disabled>Choisir</option>
                        <option>Homme</option>
                        <option>Femme</option>
                        <option>Autre</option>
                    </select>
                </div>
            </form>
        </div>

        <div class="form-section">
            <div class="section-header" style="background-image: url('https://undraw.co/api/download?color=007acc&id=education');">
                <i class="fas fa-graduation-cap"></i> Diplôme
            </div>
            <div id="diplome-container">
                <div class="d-flex">
                    <select class="form-control" name="diplome">
                        <option selected disabled>Diplôme</option>
                        <option>Licence</option>
                        <option>Master</option>
                        <option>Doctorat</option>
                    </select>
                    <input type="text" class="form-control" name="lieu_etude" placeholder="Lieu d'étude">
                    <button type="button" class="btn btn-outline-primary btn-sm ms-2" onclick="addFields('diplome')">+</button>
                </div>
            </div>
        </div>

        <div class="form-section">
            <div class="section-header" style="background-image: url('https://undraw.co/api/download?color=007acc&id=languages');">
                <i class="fas fa-language"></i> Langues
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="langue" value="francais"> Français
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="langue" value="anglais"> Anglais
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="langue" value="espagnol"> Espagnol
            </div>
        </div>

        <div class="form-section">
            <div class="section-header" style="background-image: url('https://undraw.co/api/download?color=007acc&id=experience');">
                <i class="fas fa-briefcase"></i> Expérience
            </div>
            <div id="experience-container">
                <div class="d-flex">
                    <input type="text" class="form-control" name="poste" placeholder="Poste occupé">
                    <input type="text" class="form-control" name="entreprise" placeholder="Entreprise">
                    <button type="button" class="btn btn-outline-primary btn-sm" onclick="addFields('experience')">+</button>
                </div>
            </div>
        </div>

        <button type="submit" class="btn">Postuler maintenant</button>
    </div>

    <script>
        function addFields(type) {
            const newFields = document.createElement("div");
            newFields.classList.add("d-flex");

            if (type === 'diplome') {
                newFields.innerHTML = `
                    <select class="form-control" name="diplome">
                        <option selected disabled>Diplôme</option>
                        <option>Licence</option>
                        <option>Master</option>
                        <option>Doctorat</option>
                    </select>
                    <input type="text" class="form-control" name="lieu_etude" placeholder="Lieu d'étude">
                    <button type="button" class="btn btn-outline-danger btn-sm" onclick="removeFields(this)">x</button>`;
                document.getElementById("diplome-container").appendChild(newFields);
            } else if (type === 'experience') {
                newFields.innerHTML = `
                    <input type="text" class="form-control" name="poste" placeholder="Poste occupé">
                    <input type="text" class="form-control" name="entreprise" placeholder="Entreprise">
                    <button type="button" class="btn btn-outline-danger btn-sm" onclick="removeFields(this)">x</button>`;
                document.getElementById("experience-container").appendChild(newFields);
            }
        }

        function removeFields(button) {
            button.parentNode.remove();
        }
    </script>
</body>
</html>
