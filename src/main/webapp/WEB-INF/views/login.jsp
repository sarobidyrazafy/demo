<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <!-- Lien vers FontAwesome pour les icônes -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Lien vers la feuille de style CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="login-container">
        <h1>Se Connecter</h1>
        <form action="#" method="post">
            <div class="input-group">
                <label for="email"><i class="fas fa-envelope"></i> Email</label>
                <input type="email" id="email" name="mail" placeholder="Entrez votre email" required/>
            </div>
            <div class="input-group">
                <label for="password"><i class="fas fa-lock"></i> Mot de passe</label>
                <input type="password" id="password" name="mdp" placeholder="Entrez votre mot de passe" required/>
            </div>
            <div class="buttons">
                <button type="submit" class="btn-login">Se connecter</button>
            </div>
            <div class="signup-link">
                <p>Vous n'avez pas de compte ? <a href="signup.html">Inscrivez-vous ici</a></p>
            </div>
        </form>
    </div>

<style>
    /* Style de base */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f7fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-container {
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 100%;
    max-width: 400px;
    text-align: center;
}

h1 {
    font-size: 2rem;
    margin-bottom: 20px;
    color: #333;
}

.input-group {
    margin-bottom: 15px;
    text-align: left;
}

.input-group label {
    font-size: 14px;
    color: #555;
}

.input-group input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-top: 5px;
    font-size: 16px;
}

.input-group input:focus {
    border-color: #007bff;
    outline: none;
}

.buttons {
    margin-top: 20px;
}

.btn-login {
    width: 100%;
    padding: 12px;
    background-color: #28a745;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn-login:hover {
    background-color: #218838;
}

.signup-link {
    margin-top: 20px;
    font-size: 14px;
    color: #555;
}

.signup-link a {
    color: #007bff;
    text-decoration: none;
}

.signup-link a:hover {
    text-decoration: underline;
}

</style>
</body>
</html>
