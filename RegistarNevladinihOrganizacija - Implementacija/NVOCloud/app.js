const express = require('express');
const sql = require('mssql/msnodesqlv8');
const bodyParser = require('body-parser');
const fs = require('fs');
const { nextTick } = require('process');
const app = express();

//template engine
app.set('view engine', 'ejs')

//middleware and static files (css and js)
app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

var sqlConfig = {
    user: 'NVOCloud',
    password: 'nvo123',
    driver: 'msnodesqlv8',
    server: 'localhost',
    database: 'NVOCLOUD',
    port: 1433,
    multipleStatements: true,
}
let koalicija = [];
let kantoni = [];
let opstine = [];
let koalicije = [];
let savezi = [];

let admin = false;
let poruka = '';

//Niz za smjetanje podataka iz baze
let Pretraga = [];

let conn = sql.connect(sqlConfig, (err) => {

    if(err) console.log(err);
    
    let request = new sql.Request();

    request.query('EXEC Ispis_Kategorija', (err, Belma) => {
        if(err) console.log(err);
    
        for(let i = 0; i< Belma.recordset.length; i++ ){
            koalicija.push(Belma.recordset[i]);
        }
    })
    request.query('EXEC Proc_Ispis_Kantona',(err,kanton) => {
        if(err) console.log(err);
    
        for(let i = 0; i< kanton.recordset.length; i++ ){
            kantoni.push(kanton.recordset[i]);
        }
    })
    request.query('EXEC Proc_Ispis_Opcina',(err,opstina) => {
        if(err) console.log(err);
    
        for(let i = 0; i< opstina.recordset.length; i++ ){
           // console.log(opstina.recordset[i].Naziv);
            opstine.push(opstina.recordset[i]);
        }
    });
    request.query('SELECT Naziv FROM Koalicija',(err, Koalicija) => {
       for (let i = 0; i < Koalicija.recordset.length; i++) {
        koalicije.push(Koalicija.recordset[i].Naziv);
        //console.log(koalicije[i]);
       }
    });
    request.query('SELECT Naziv FROM Savez', (err, Savezi) => {
        for (let i = 0; i < Savezi.recordset.length; i++) {
            savezi.push(Savezi.recordset[i]);
            //console.log(savezi[i].Naziv);
        }
    })
});
 

// ROUTING
app.listen(3005, (req, res) => {
    console.log('Listen for request on port 3005');
})

app.get('/registri', (req, res) => {
        let request = new sql.Request();
        conn.request;
        //PARAMETRI PRETRAZIVANJA
        let Kanton = req.query.kanton;
        let Opcina = req.query.opstina;
        let Entitet = req.query.entitet;
        let Kategorija = req.query.djelatnost;
        let Tip = req.query.organizacija;
        let Naziv = req.query.naziv;
        
        //POPUNJAVNJE PRAZNIH PARAMETARA SA NULL(PROC NE RADI UKOLIKO JE PRAZAN STRING!)
        if(Kanton == '') Kanton = 'null';
        if(Kategorija == '') Kategorija = 'null';
        if(Tip == '') Tip = 'null';
        if(Opcina == '') Opcina = 'null';
        if(Entitet == '') Entitet = 'null';
        if(Naziv == '') Naziv = 'null';
        
    if(Kanton || Kategorija || Tip || Opcina || Entitet || Naziv){
        let pretragaSve = `Exec Proc_Pretraga_Sve @Kategorija = "${Kategorija}", @Opcina="${Opcina}", @Entitet="${Entitet}", @Kanton="${Kanton}", @Tip="${Tip}", @Skracenica="${Naziv}"`;
        
        request.query(pretragaSve, (err, pretraga) => {
            if(err) console.log(err);
            else{                 
                    for(let i = 0; i<pretraga.recordset.length; i++){
                        Pretraga.push(pretraga.recordset[i]);
                       // console.log(pretraga.recordset[i]);
                    }
                }
                res.render('registri', { koalicija, kantoni, opstine, Pretraga } );
            }
        )
    }else{
        request.query('Proc_NVO_Podaci', (err, pretraga) => {
            if(err) console.log(err);
            else{
                    for(let i = 0; i<pretraga.recordset.length; i++){
                        Pretraga.push(pretraga.recordset[i]);
                    }
                }
                res.render('registri', { koalicija, kantoni, opstine, Pretraga });
            }
        )
    }
        Pretraga = []; // PRAZNJENJE NIZA ZBOG
        Kanton = 'null';
         Opcina = 'null';
         Entitet = 'null';
         Kategorija = 'null';
         Tip = 'null';
         Naziv = 'null';
})

app.get('/pocetna/:id', (req, res) => {
    let request = new sql.Request();
    conn.request;
    let ID = req.params.id;

    let imeiprez = '';
    let logIn = false;

    let PretragaDetalji = `Proc_NVO_PodaciViseDetalja @ID = "${ID}"`
    request.query(PretragaDetalji,(err, PretragaP) => {
        Pretraga = PretragaP.recordset[0];
        res.render('pocetna', {Pretraga, imeiprez, logIn});
    })
    Pretraga = [];
});


app.get('/index', (req, res) => { 
    res.render('index');
})

app.get('/oglasna/:id', (req, res) => {
    let request = new sql.Request();
    conn.request;
    let ID = req.params.id;
    let Objave = [];

    
    let PretragaDetalji = `Proc_NVO_PodaciViseDetalja @ID = "${ID}"`
    request.query(PretragaDetalji,(err, PretragaP) => {
        Pretraga = PretragaP.recordset[0];
        
        request.execute(`Proc_Ispis_Objava @IdentifikacijskiBroj = "${ID}"`,(err,ob) => {
            for (let i = 0; i < ob.recordset.length; i++) {
                Objave.push(ob.recordset[i]);
                Objave[i].DatumObjave = Objave[i].DatumObjave.toString();
                Objave[i].DatumObjave = Objave[i].DatumObjave.slice(4,15);
            }
            res.render('oglasna', {Pretraga, Objave});
        })
        
    })
    Pretraga = [];
    Objave = [];
})

app.get('/oNama/:id', (req, res) => {
    let request = new sql.Request();
    conn.request;
    let ID = req.params.id;
    
    let PretragaDetalji = `Proc_NVO_PodaciViseDetalja @ID = "${ID}"`
    request.query(PretragaDetalji,(err, PretragaP) => {
        Pretraga = PretragaP.recordset[0];
        Pretraga.GodinaRegistracije = Pretraga.GodinaRegistracije.toString();
        Pretraga.GodinaRegistracije = Pretraga.GodinaRegistracije.slice(4,15);

        res.render('oNama', {Pretraga});
    })
    Pretraga = [];
})

app.get('/pridruziSe', (req, res) => {
    res.render('pridruziSe', {poruka});
    poruka = '';
})

app.post('/pridruziSe', (req, res) => {
    let request = new sql.Request();
    conn.request;
    let Pretraga = [];
    
    let KorIme = req.body.ime;
    let password = req.body.passw;
    let idUdru;
    let imeiprez = [];
    let logIn = false;
    let brojac = 0;
    request.query('Select * from Korisnik', (err, korisnik) => {
        for(let i = 0; i<korisnik.recordset.length; i++){
            if(korisnik.recordset[i].KorisnickoIme === KorIme && korisnik.recordset[i].Lozinka === password){
                idUdru = korisnik.recordset[i].IdentifikacijskiBroj;
                imeiprez.push(korisnik.recordset[i].Ime);
                imeiprez.push(korisnik.recordset[i].Prezime);
                logIn = true;

                brojac++;
            }
        }
        if(idUdru === null){
            admin = true;
            res.render('admin');
        }else if(brojac==1){
            let PretragaDetalji = `Proc_NVO_PodaciViseDetalja @ID = "${idUdru}"`
            request.query(PretragaDetalji,(err, pretraga) => {
            Pretraga = pretraga.recordset[0];
            
            res.render('pocetna', {Pretraga, imeiprez, logIn});
        })
        Pretraga = [];
        }else{
            let poruka = 'Pogrešna prijava, molimo ponovo unesite podatke!';
            res.render('pridruziSe', { poruka});
        }
    });
})


app.get('/', (req, res) => {  
    res.render('index');
});


app.get('/zakonskaRegulativa', (req, res) => {
    res.render('zakonskaRegulativa');
})

app.get('/koalicije', (req,res) => {
    let K = [];
    let Ispis = [];
    let formKoal = req.query.koalicija;
    let OdgOsoba = [];


    if(!formKoal){
            let txt1 = 'Izraz "koalicija" označava skupinu koja se formira kada se dvoje ili više ljudi, frakcija, država, političkih stranaka, vojski i slično, dogovore da privremeno zajedno rade u partnerstvu kako bi postigli zajednički cilj. Riječ koalicija označava okupljanje radi postizanja cilja.';
            let txt2 = 'Koalicije se granaju u dvije kategorije koje se šire: unutarnje koalicije i vanjske koalicije. Interne koalicije sastoje se od ljudi koji su već u nekoj organizaciji, poput radnog mjesta. Na primjer, sindikat je vrsta koalicije koja je osnovana kako bi predstavljala plaće, beneficije i radne uvjete zaposlenika. Bez ovog jedinstva između zaposlenika, radnici su bili podvrgnuti teškim radnim uvjetima i niskim plaćama zbog praktičnih propisa. Često organizacije radije savjetuju s članovima svojih unutarnjih koalicija prije nego što uvedu promjene na radnom mjestu kako bi osigurale potporu.'
            let txt3 = 'Suprotno tome, vanjske koalicije sastoje se od ljudi koji su članovi različitih organizacija koji surađuju u postizanju općeg cilja. Na primjer, kako bi se spriječilo nasilje nad oružjem i zagovaralo nadzor nad oružjem, nekoliko grupa, sindikata i neprofitnih organizacija okupilo se u koaliciji za zaustavljanje nasilja protiv oružja. Vanjske koalicije svoje povjerenje u stjecanje kredibiliteta temelje na pozivanju malo vjerojatnih partnera koji žele postići isti krajnji cilj, ali razlozi za postizanje tih ciljeva se razlikuju.'
        
        res.render('koalicijePoc', {koalicije, txt1, txt2, txt3 });
    }else{
        let request = new sql.Request();
    conn.request;
    
        let P = `Proc_Ispis_O_Koaliciji @Naziv="${formKoal}" `

        request.execute(P , (err, ispisOkoaliciji) => {
                Ispis.push(ispisOkoaliciji.recordset[0]);                
                aaa();
                IspisOdgKoal();
        });
    function aaa(){
        let proc = `Proc_Ispis_Clanica_Koalicije @Naziv = "${formKoal}"`
        request.execute(proc,(err, koal) => {
            if(err) console.log(err);
            else {
                for (let i = 0; i < koal.recordset.length; i++) {
                    K.push(koal.recordset[i]);  
                }
            }
        })
    }
    function IspisOdgKoal(){
        request.execute(`Proc_Ispis_Osobe_Koalicije @Naziv = "${formKoal}"`, (err,ispisOdg) => {
            for (let i = 0; i < ispisOdg.recordset.length; i++) {
                OdgOsoba.push(ispisOdg.recordset[i]);
            }
            res.render('koalicije', {koalicije, K, Ispis, OdgOsoba });
        });
    }
}
});

app.get('/savezi', (req,res) => {
    

    let formSave = req.query.savezi;

    if(!formSave){
        let txt1 = '"Savez" predstavlja naziv za odnos između dvoje ili više pojedinaca, organizacija ili država, temeljem kojim se oni međusobno pomažu i nastoje ostvariti zajedničke interese. Savez može biti formalne ili neformalne prirode, odnosno privremene ili trajne naravi. Za njega, pogotovo kada je formalne prirode, se koristi izraz alijansa ili alianca. Članovi saveza se nazivaju saveznici.'

        let txt2 = 'Savez je manji od koalicije, to jest savez može biti dio koalicije, a koalicija ne može biti dio saveza.'
        res.render('saveziPoc', { savezi, txt1, txt2 });
    }else{
        let Savezi = [];
        let Detalji = [];
        let OdgOsoba = [];
        let request = new sql.Request();
        conn.request;
    
        let P = `Proc_Ispis_Clanica_Saveza @Naziv="${formSave}" `

        request.execute(P , (err, ispisOsavezu) => {
                Savezi.push(ispisOsavezu.recordset[0].Naziv);                
                aaa();
        });
    function aaa(){
        let proc = `Proc_Ispis_O_Savezu @Naziv = "${formSave}"`
        request.execute(proc,(err, pretragaSavez) => {
            if(err) console.log(err);
            else {
                 for (let i = 0; i < pretragaSavez.recordset.length; i++) {
                    Detalji.push(pretragaSavez.recordset[i]);
                 }
            }
            IspisOdgSave();
        })
    }
    function IspisOdgSave(){
        request.execute(`Proc_Ispis_Osobe_Saveza @Naziv = "${formSave}"`, (err,ispisOdg) => {
            for (let i = 0; i < ispisOdg.recordset.length; i++) {
                OdgOsoba.push(ispisOdg.recordset[i]);
            }
            res.render('savezi', {savezi, Savezi, Detalji, OdgOsoba });
        });
    }
    }
})

app.get('/admin', (req, res) => {
    if(admin){
        app.render('admin');
    }else{
        res.status(404).render('404');    
    }
})

app.use((req, res) => {
    res.status(404).render('404');
})

