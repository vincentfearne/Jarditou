let PU=parseInt(prompt("Insérez le prix unitaire"));
let QTECOM=parseInt(prompt("Insérez la quantité commandée"));
let TOT=PU*QTECOM;
let REM=0;
let PORT;
var total=0;


if (TOT>=100 & TOT<=200)
{
    REM=5;
}
else if (TOT>200)
{
    REM=10;
}

let TTLR=TOT-(TOT*(REM/100));

if (TTLR>=500)
{
    PORT=0;
}
else
{
    PORT=TTLR*(2/100);
}

if (TTLR<500 & PORT<6)
{
    PORT=6;
}

total=TTLR+PORT;

console.log("Prix unitaire : "+PU+", quantitée : "+QTECOM+", remise : "+REM+"%, frais de port : "+PORT+", prix total à régler : "+total+" euros");
