
document.write("Faites ctrl+maj+k pour voir les résultats dans la console du navigateur");

var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];

console.log(tab);


let n=prompt("Insérez un prénom");
let nMaj = n.charAt(0).toUpperCase() + n.slice(1).toLowerCase();

var p=tab.indexOf(nMaj);


console.log(p);

if (p>=0 & p<=9)
{
    tab.splice(p, 1);
    tab.push('');
}
else
{
    console.log("Ce prénom n'est pas dans le tableau");
}

console.log(tab);

