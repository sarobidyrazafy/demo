<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Noter CV</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Lien vers Bootstrap local -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    
    <!-- Lien vers FontAwesome CDN pour le fichier all.min.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-4oKi3yCKhQzvY2OZrXBhtCp6iCOhdppZnDlfV6l5GbgsR4N3Zz1Fh6hCpXyTpzjP" crossorigin="anonymous">
    
    <!-- Votre propre fichier CSS (si nécessaire) -->
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-4oKi3yCKhQzvY2OZrXBhtCp6iCOhdppZnDlfV6l5GbgsR4N3Zz1Fh6hCpXyTpzjP" crossorigin="anonymous">

    
    <script src="main.js"></script>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-6 col-lg-4">
            <h1 class="text-center mb-4">Noter le CV</h1>
            
            <form action="#" method="POST">
                <input type="hidden" name="id_cv" value="1" />
                
                <!-- Champ pour la note avec Bootstrap -->
                <div class="form-group">
                    <label for="note">Note :</label>
                    <input type="number" name="note" id="note" min="1" max="5" class="form-control" required />
                </div>

                <!-- Bouton de soumission avec Bootstrap -->
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-success">
                        <!-- Icône FontAwesome -->
                        <i class="fas fa-star"></i> Noter
                    </button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
