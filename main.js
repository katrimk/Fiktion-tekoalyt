const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const tekoalyhaku = require("./models/tekoalyhaku");

const portti = 3000;
const ejs = require("ejs");

app.set("views", "./views");
app.set("view engine", "ejs");

// tarvitaanko tiedostojenhallintaa?




app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));



app.get("/", (req, res) => {

    res.render("index");

});

app.get("/haeKaikki", (req, res) => {

    tekoalyhaku.haeKaikki((err, data) => {
        if (!err) {
            console.log(data);
            res.render("listaus", {"tekoalyt" : data});
        }

        else {
            console.log(err);
            res.redirect("/");
        }
    });
    
    
});

app.get("/haeHahmo/:id", (req, res) => {
    let id = req.params.id;
    console.log(id);
    tekoalyhaku.haeHahmo(id, (err, data) => {
        if (err) throw err;
        console.log(data);
        res.render("hahmo", {"hahmo" : data[0]});

    });
    
})

app.post("/haeNimella/", (req, res) => {

    tekoalyhaku.haeNimella(req.body.hakusana, (err, data) => {
        if (err) throw err;
        console.log(data);
        res.render("hahmo", {"hahmo" : data[0]});
    });
});

  








// haku eri ehdoilla

app.listen(portti, () => {

    console.log(`palvelin käynnistyi porttiin: ${portti}`);
}
);