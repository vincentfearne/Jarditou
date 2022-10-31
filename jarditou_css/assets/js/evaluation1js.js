let A=0;
let jeunes=0;
let moyens=0;
let vieux=0;
let centenaire=0;

while (A < 100)
{
    A=parseInt(prompt("Insérez l'âge de la personne"));
    if (A<20)
    {
        jeunes++;
    }
    else if (A>=20 && A<=40)
    {
        moyens++;
    }
    else if (A>40)
    {
        vieux++;
    }

    if (A>=100)
    {
        centenaire++;
    }

}

console.log("Le nombre de de personnes ayant moins de 20 ans est : "+jeunes);
console.log("Le nombre de personnes ayant entre 20 et 40 ans est : "+moyens);
console.log("Le nombre de personnes ayant plus de 40 ans est : "+vieux);

document.write("Il y a "+jeunes+" personnes de moins de 20 ans.");
document.write(" Il y a "+moyens+" personnes ayant entre 20 et 40 ans.");
document.write(" Il y a "+vieux+" personnes ayant plus de 40 ans.");
document.write(" Il y a également un centenaire.");