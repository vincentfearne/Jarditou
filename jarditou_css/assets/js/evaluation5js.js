let validation = document.getElementById("envoi");
let nom = document.getElementById("nom");
let nom_m = document.getElementById("nom_manquant");
let nom_v = /^[a-zA-ZéèëîïÉÈÊÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèëîïÉÈÊÎÏ][a-zéèêàçîï]+)?/;
let prenom = document.getElementById("prenom");
let prenom_m = document.getElementById("prenom_manquant");
let prenom_v = /^[a-zA-ZéèëîïÉÈÊÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèëîïÉÈÊÎÏ][a-zéèêàçîï]+)?/;
let date = document.getElementById("date");
let date_m = document.getElementById("date_manquante");
let departement = document.getElementById("departement");
let departement_m = document.getElementById("departement_manquant");
let departement_v = /[1-9]{5}/;
let mail = document.getElementById("mail");
let mail_m = document.getElementById("mail_manquant");
let mail_v = /^[a-zA-Z0-9.-]+[@]{1}[a-zA-Z0-9.-]+[.]{1}[a-z]{2,10}$/;
let questions = document.getElementById("questions");
let questions_m = document.getElementById("questions_manquantes");

validation.addEventListener('click', valid);

function valid(e)
{

if(nom.value === "")
{
    e.preventDefault();
    nom_m.textContent = "*Veuillez renseigner votre nom"
    nom_m.style.color = "red";
}
else if(nom_v.test(nom.value) == false)
{
    e.preventDefault();
    nom_m.textContent = "*Format incorrect";
    nom_m.style.color = "orange";
}

else if(prenom.value === "")
{
    e.preventDefault();
    prenom_m.textContent ="Veuillez renseigner votre prénom";
    prenom_m.style.color = "red";
}

else if(prenom_v.test(prenom.value) == false)
{
    e.preventDefault();
    prenom_m.textContent = "*Format incorrect";
    prenom_m.style.color = "orange";
}


else if(date.value === "")
{
    e.preventDefault();
    date_m.textContent = "*Veuillez renseigner votre date de naissance";
    date_m.style.color = "red";
}

if(departement.value === "")
{
    e.preventDefault();
    departement_m.textContent = "*Veuillez renseigner votre code postal"
    departement_m.style.color = "red";
}
else if(departement_v.test(departement.value) == false)
{
    e.preventDefault();
    departement_m.textContent = "*Format incorrect";
    departement_m.style.color = "orange";
}
if(mail.value === "")
{
    e.preventDefault();
    mail_m.textContent = "*Veuillez renseigner votre adresse mail"
    mail_m.style.color = "red";
}
else if(mail_v.test(mail.value) == false)
{
    e.preventDefault();
    mail_m.textContent = "*Format incorrect";
    mail_m.style.color = "orange";
}
if(questions.value === "")
{
    e.preventDefault();
    questions_m.textContent = "*Veuillez remplir le champ"
    questions_m.style.color = "red";
}
else{}

}

let accepter=document.getElementById("accepter");
console.log(accepter.value);










