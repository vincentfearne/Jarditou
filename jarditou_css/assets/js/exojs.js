/*

//----1er exercice----//
var p="void";
var i = 0;
while (p!=null)
{
    var p=prompt("Insérez un prénom");
    console.log(p);
    i=i+1;
}
i=i-1;
console.log("Nombre de prénoms : "+i);


//----2eme exercice----//
var N=parseInt(prompt("Insérez un nombre"));
console.log("Pour le nombre "+N+" voici tout les entiers inférieurs :");
while (N!=0)
{
    N=N-1;
    console.log(N);
}


//----3eme exercice----//
let S = 0;
var M = 0;
var i = 0;
var E=parseInt(prompt("Insérez un nombre entier"));     
while (E!=0)
{
    S=S+E;
    var E=parseInt(prompt("Insérez un nombre entier"));
    i++;
}
var M=S/i;
console.log("La somme des entiers insérés est : "+S);
console.log("La moyenne des entiers insérés est : "+M);


//----4eme exercice----//

var X=parseInt(prompt("Insérez un entier"));
var N=parseInt(prompt("Insérez le nombre de multiples désiré"));
let R=0;
var i=0;
while (i<N)
{
    i++;
    R=i*X;
    console.log(i+" x "+X+" = "+R);
}

//----5eme exercice-----//

let mot=prompt("Insérez un mot");
function combiendevoyelles(mot) {
    var nbVoyelles = 0;
    for (i = 0; i < mot.length; i++) {
        var lettre = mot[i].toLowerCase();
        if ((lettre === "a") || (lettre === "e") || (lettre === "i") || (lettre ==="o") || (lettre === "u") || (lettre === "y")) {
            nbVoyelles ++;
        }
    }
    return nbVoyelles;
}
 
console.log("le nombre de voyelles est : " + combiendevoyelles(mot));



let x=parseInt(prompt("Insérez un nombre"));
let y=parseInt(prompt("Insérez un multiplicateur"));
let resultat=0;
function product(x, y)
{
    resultat=x*y;
    return resultat;
}
product(x, y);

console.log(resultat);

document.getElementById("texte1").innerHTML="Le résultat du produit est "+resultat;

document.getElementById("img1").innerHTML=src="/assets/papillon.jpg";



//----6eme exercice----//

let str1="1# Jessica Alba.\n 2# Scarlet Johanson.\n 3# Carla Devigne.\n 4# Megan Fox.\n 5# Clara Morgane";
let str2=".";

window.alert("Voici une liste d'avion de chasse :\n"+str1+"\n Dans la prochaine fenêtre nous allons vous demander avec laquelle souhaiteriez vous faire un tour, retenez donc son numéro");

const n=parseInt(prompt("Insérez un numéro")-1);



function strtok(str1, str2, n) {
    const mot=str1.split(str2);
    window.alert(mot[n]+" : j'avoue elle est trop bonne.");
}

strtok(str1, str2, n);



//----1er exercice tableaux----//


let n=parseInt(prompt("Insérez le nombre d'éléments souhaités dans le tableau"));
n=n-1;
var tableau= new Array(n);

for (i=0;i<=n;i++)
{
    tableau[i]=parseInt(prompt("Insérez un nombre"));
}
window.alert(tableau);



//----2eme exercice tableaux----//
let n;
let tableau;
let b;
let max;
let S = 0;
let M = 0;

function GetInteger()
{
    n=parseInt(prompt("Insérez un nombre"));
}

function InitTab()
{   
    b=parseInt(prompt("Insérez le nombre d'entités que vous souhaitez avoir le tableau"));
    tableau= new Array(b);
}

function SaisieTab()
{
    for (i=0;i<b;i++)
    {
        tableau[i]=parseInt(prompt("Insérez un nombre"));
    }
}

function AfficheTab()
{
    window.alert(tableau);
}

function RechercheTab()
{
    window.alert(tableau[parseInt(prompt("Insérez le numéro de poste"))-1]);
}

function InfoTab()
{
    for (i=0;i<b;i++)
    {
        if(tableau[i]<tableau[i+1])
        {
            max=tableau[i+1];
        }

        S+=tableau[i];
    }
    console.log(S);
    M=(S/b);

    document.getElementById("5").innerHTML=("La valeur maximum est "+max+" et la moyenne des postes est "+M+".");
    window.alert("maximum = "+max+"       moyenne = "+M);
}



GetInteger();
InitTab();
SaisieTab();
AfficheTab();
RechercheTab();
InfoTab();

*/

//----Exercice 13 : les objets natifs----//

let b=1;
let tab= new Array();
let i=0;
S=0;

while (b!==0)
{
    b=parseInt(prompt("Insérez un nombre entier"));
    tab[i]=b;
    S+=tab[i];
    i++;    
}
let M=(S/i);
window.alert("Le nombre de valeurs saisies est : "+i+", la somme des valeurs saisies est : "+S+", et la moyenne est : "+M);

