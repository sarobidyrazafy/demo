<%@ taglib uri="http://xmlns.jcp.org/jsf/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    
    <form action="/traitlogin" method="POST">
        <div>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required />
        </div>
        <div>
            <label for="mdp">Mot de passe:</label>
            <input type="password" name="mdp" id="mdp" required />
        </div>
        <button type="submit">Se connecter</button>
    </form>

    <c:if test="${not empty error}">
        <p style="color: red;">Email ou mot de passe incorrect</p>
    </c:if>
</body>
</html>
