
var nom = window.prompt("Saisissez votre nom");
var prenom = window.prompt("Saisissez votre prénom");

if (window.confirm ("Êtes-vous un homme ?") == true)
{
    window.alert("Bonjour Monsieur " + nom + " " + prenom + ","  + "\nBienvenue sur notre site de merde !");
}
else {

    if (window.confirm ("Êtes-vous une femme ?") == true)
    {
    window.alert("Bonjour Madame " + nom + " " + prenom + ","  + "\nBienvenue sur notre site de merde !");
    }
    else
    {
        window.alert("! ALERTE ! VOUS ÊTES NON BINAIRE, VEUILLEZ CONSULTEZ UN MEDECIN DANS LES PLUS BREFS DELAIS")
    }
}

a="100";
b=100;
c=1.00;
var d = true;

window.alert("Ceci est une chaîne de caractères : "+a);

b=b--;

c=c+a;


var n=prompt("Insérez un nombre");

a=n%2;



if (a == 0)
{
    window.alert("Le nombre que vous avez inscrit est pair");
}
else {
    window.alert("Le nombre que vous avez inscrit est impair");
}

var naissance=prompt("Quelle est votre année de naissance ?");

age=2022-naissance;

if (age>=18)
{
    window.alert("Vous avez "+age+" ans et vous êtes majeur.");
}
else
{
    window.alert("Vous avez "+age+" ans. L'accès a pornhub est réservé aux personnes majeures.")
}




 

var n1=parseInt(prompt("Insérez un nombre entier"));
var n2=parseInt(prompt("Insérez un deuxieme nombre entier"));
var o=prompt("Insérez un opérateur +, -, * ou /");
while (o!="+" && o!="-" && o!="*" && o!="/")
{
    var o=prompt("Insérez un opérateur +, -, * ou /");
}
if (o=="+")
    {
        r=n1+n2;
    }
    else if (o=="-")
        {
             r=n1-n2;
        }
        else if (o="*")
            {
                r=n1*n2;
            }
else
{
    r=n1/n2;
}

window.alert("voici votre résultat :"+r); 

