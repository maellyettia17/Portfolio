function connexion()
{
var id = prompt("Donnez votre nom d'utilisateur");
var mdp = prompt("Entrez votre mot de passe");
if (id == "admin"&& mdp == "admin")
{
document.write("Bienvenue:  " + id);
}
else
{
alert("Accès refusé");
}

}

function chaine_caractere()
{
var chaine=prompt("Donnez un mot")
document.write(chaine.toUppenCase()+"<br>");
document.write(chaine.toLowerCase()+"<br>");
document.write("La chaine contient   "+ chaine.length+"  caractères  " +"<br>");
document.write("La premiere lettre est  "+chaine.substr(0,1)+"<br>");
}

function affichage_tableau()
{
document.write("<table border=2 width=30%;>");
for (i=0; i <=5; i++) 
{
    document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
}
document.write("</table");
}