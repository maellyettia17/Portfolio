function calcul_moyenne()
{
var note1=prompt("donner la premiere note: " );
var coef1=prompt("donner le  premier coefficient:" );
var note2=prompt("donner la deuxieme note: ");
var coef2=prompt("donner le  deuxieme coefficient:" );
var note3=prompt("donner la troisieme note: ");
var coef3=prompt("donner le troisieme coefficient");

var somme = Number(note1*coef1)+Number(note2*coef2)+Number(note3*coef3);
document.write ("Voici la somme:" + somme + "<br>");
var coef=Number(coef1)+Number(coef2)+Number(coef3);
var moyenne= (somme/coef);
document.write("Voici la moyenne:"+ moyenne  "<br>");

if (moyenne<10)
document.write("Vous etes redoublant");
else
document.write("Vous êtes admis");
}

function test_age()
{
var age= prompt("donner votre age");
if(age<18)
{
document.write("vous etes mineur");
document.bgColor="red";
}
else
{
document.write("vous etes majeur");
document.bgColor="green";
}
}

function simple_affichage()
{
var nom= prompt("Donner votre nom");
var prenom=prompt("Donner votre prenom");

document.write("<div style='margin:auto; border:2px solid blue; width:300px; color: lightblue;'>");
document.write("Bonjour " + prenom +" "+ nom);
document.write("</div>");
}

function test_couleur()
{ 
  
var c = prompt("Donner la couleur");
if(c == "rouge"|| c== "ROUGE"|| c=="Rouge")
document.body.style.background="red";
else if (c=="bleu"|| c== "BLEU"|| c=="Bleu")
document.body.style.background="blue";
else if(c =="vert"|| c== "VERT"|| c=="Vert")
document.body.style.background="green";
else
document.write("couleur non comprise");


}