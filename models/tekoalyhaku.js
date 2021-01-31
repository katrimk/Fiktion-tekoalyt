const mysql = require("mysql");

const yhteys = mysql.createConnection({
    // define host, user, and password 
    "host" : "",
    "user" : "",
    "password" : "",
    "database" : "fikt-tekoalyt"
  });



  
yhteys.connect((err) => {
    if (!err) {

        console.log("Yhteys tietokantapalvelimeen avattu!");

    } else {

        throw err;

    }

}); 

module.exports = {
    haeKaikki : (callback) => {
        let sql = "SELECT * FROM tekoalyt";

        yhteys.query(sql, (err, data) => {
            

            callback(err, data);

        });

    },

    haeHahmo: (id, callback) => {

        console.log(id);
        let sql = "SELECT * FROM tekoalyt WHERE id=" + id;

        yhteys.query(sql, (err, data) => {

            callback(err, data);
        })
    },

    haeNimella: (nimi, callback) => {

        let hakusana = mysql.escape(`%${nimi}%`);
        let sql = "SELECT * FROM tekoalyt WHERE nimi LIKE " + hakusana + ";";
        console.log(sql);
        yhteys.query(sql, (err, data) => {

            callback(err, data);
        })
    }
}