

var loadLogo = "../../Slike/Logo_NVOa/NVOLogo.svg";
var loadNvoName = "Neki NVO, tj ime za primjer testa";
var plusExpand = "../../Slike/Icons/plus-expand.svg";

var OblikOrganizovanja = "Udruženja";
var RbrUpisa = "0";
var brRjesenja = "UPI 01-056/20-1100/5";
var DatumUpisa = "12/5/2020.";
var Djelatnost = "Privrednici i poduzetnici";
var Opstina = "Zenica";
var Adresa = "Neka ulica xx";
var Telefon = "-";
var Email = "-";
var linkToNvoPage = "../NVO/NVOStranice/Pocetna/pocetna.html";

var addRegisterItem = (index) =>{
    //stvaranje orginalnog containera za sve elemente svakog registra
    const resultComtainer = document.createElement("div");
    resultComtainer.classList.add("search-result-item-container");

    //stvaranje div za osnovne informacije koje se prikazuju
    const basicInfo = document.createElement("div");
    basicInfo.classList.add("basic-info");

    const nvoBasicDetails = document.createElement("div");
    nvoBasicDetails.classList.add("nvo-basic-details");

    //dodavanje div-a za logo sliku NVO-a
    const nvoLogoImageContainer = document.createElement("div");
    nvoLogoImageContainer.classList.add("logo-image");

    const logoImage = document.createElement("img");
    logoImage.setAttribute("src", loadLogo);
    logoImage.setAttribute("alt", "Logo");

    nvoLogoImageContainer.appendChild(logoImage);
    nvoBasicDetails.appendChild(nvoLogoImageContainer);

    //dodavanje diva za ime
    const nvoNameContainer = document.createElement("div");
    nvoNameContainer.classList.add("nvo-name");
    nvoNameContainer.innerHTML = "<h2>" + loadNvoName + " " + index + "</h2>";
    nvoBasicDetails.appendChild(nvoNameContainer);

    //dodavanje dugmeta kojim se otvaraju detaljniji podaci
    const expandMoreDetailsButtonContainer = document.createElement("div");
    expandMoreDetailsButtonContainer.classList.add("expand-button");

    const expandMoreDetailsButton = document.createElement("button");
    expandMoreDetailsButton.setAttribute("onclick", "getIndex(" + index + ")");

    const expandMoreDetailsButtonImage = document.createElement("img");
    expandMoreDetailsButtonImage.setAttribute("src", plusExpand);
    expandMoreDetailsButtonImage.setAttribute("alt", "+");
    expandMoreDetailsButton.appendChild(expandMoreDetailsButtonImage);
    

    basicInfo.appendChild(nvoBasicDetails);

    expandMoreDetailsButtonContainer.appendChild(expandMoreDetailsButton);
    basicInfo.appendChild(expandMoreDetailsButtonContainer);

    resultComtainer.appendChild(basicInfo);
    

//---------------------------------------------------------------------------------

    //dodavanje svega u cemo su detaljnije informacije
    const expandedInfo = document.createElement("div");
    expandedInfo.classList.add("nvo-contracted-details");

    //container za lijevi i desni dio informacija
    const leftRightSideContainer = document.createElement("div");
    leftRightSideContainer.classList.add("left-right-side-container");


    //sada idu lijevi i desni posebno

    //---------------------------------------------------Lijevo---------------------------------------------------------

    const leftSide = document.createElement("div");
    leftSide.classList.add("left-side");

    const oblikOrganizovanja = document.createElement("div");
    oblikOrganizovanja.classList.add("oblik-organizovanja");
    oblikOrganizovanja.innerHTML = "<h3>Oblik organizovanja</h3>\n<p>" + OblikOrganizovanja + "</p>";
    leftSide.appendChild(oblikOrganizovanja);

    const rbrUpisa = document.createElement("div");
    rbrUpisa.classList.add("redni-broj-upisa");
    rbrUpisa.innerHTML = "<h3>Redni broj upisa</h3>\n<p>" + RbrUpisa + "</p>";
    leftSide.appendChild(rbrUpisa);

    const brojRjesenja = document.createElement("div");
    brojRjesenja.classList.add("broj-rjesenja");
    brojRjesenja.innerHTML = "<h3>Broj rješenja</h3>\n<p>" + brRjesenja + "</p>";
    leftSide.appendChild(brojRjesenja);

    const datumUpisa = document.createElement("div");
    datumUpisa.classList.add("datum-upisa");
    datumUpisa.innerHTML = "<h3>Datum upisa</h3>\n<p>" + DatumUpisa + "</p>";
    leftSide.appendChild(datumUpisa);

    const djelatnost = document.createElement("div");
    djelatnost.classList.add("djelatnost");
    djelatnost.innerHTML = "<h3>Djelatnost</h3>\n<p>" + Djelatnost + "</p>";
    leftSide.appendChild(djelatnost);

    leftRightSideContainer.appendChild(leftSide);

    //---------------------------------------------------Desno---------------------------------------------------------
    const rightSide = document.createElement("div");
    rightSide.classList.add("right-side");

    const opstina = document.createElement("div");
    opstina.classList.add("opstina");
    opstina.innerHTML = "<h3>Opština</h3>\n<p>" + Opstina + "</p>";
    rightSide.appendChild(opstina);

    const adresa = document.createElement("div");
    adresa.classList.add("adresa");
    adresa.innerHTML = "<h3>Adresa</h3>\n<p>" + Adresa + "</p>";
    rightSide.appendChild(adresa);

    const telefon = document.createElement("div");
    telefon.classList.add("telefon");
    telefon.innerHTML = "<h3>Telefon</h3>\n<p>" + Telefon + "</p>";
    rightSide.appendChild(telefon);

    const email = document.createElement("div");
    email.classList.add("email");
    email.innerHTML = "<h3>Email</h3>\n<p>" + Email + "</p>";
    rightSide.appendChild(email);
    
    leftRightSideContainer.appendChild(rightSide);

    expandedInfo.appendChild(leftRightSideContainer);

        //---------------------------------------------------Desno---------------------------------------------------------

    //Jos elementi za dugme koje vodi do stranice NVO-a
    const goToNvoPageButtonContainer = document.createElement("div");
    goToNvoPageButtonContainer.classList.add("more-details-button");

    const goToNvoPageButtonLink = document.createElement("a");
    goToNvoPageButtonLink.setAttribute("href", linkToNvoPage);
    goToNvoPageButtonLink.innerHTML = "<button>Više detalja</button>";

    goToNvoPageButtonContainer.appendChild(goToNvoPageButtonLink);

    expandedInfo.appendChild(goToNvoPageButtonContainer);

    resultComtainer.appendChild(expandedInfo);

    //na kraju dodavanje u listu registara
    const allRegisters = document.getElementById("result-container");
    allRegisters.appendChild(resultComtainer);
}


var limit;
var total = 3;

var testLoop = () =>{
    limit = parseInt(prompt("Unesi broj predmeta za dodati: "));

    for(let i=total; i<limit+total; i++){
        addRegisterItem(i);
    }
    total += limit;
}