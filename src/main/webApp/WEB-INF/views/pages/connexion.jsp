<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion / Inscription</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">Se connecter / S'inscrire</h2>
        <form action="/traitementconnexion" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="mdp">Mot de passe</label>
                <input type="password" class="form-control" id="mdp" name="mdp" required>
            </div>
            <button type="submit" class="btn btn-primary">Se connecter / S'inscrire</button>

            <!-- Affichage des erreurs en cas de connexion échouée -->
            <c:if test="${not empty error}">
                <div class="alert alert-danger mt-3">
                    <p>${error}</p>
                </div>
            </c:if>
        </form>
    </div>
</body>
</html>
