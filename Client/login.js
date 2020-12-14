// Tablice odpowiadajaca za pracownikow
var users = new Array("pracownik", "pracownik2", "pracownik3");
var passwords = new Array("kod1", "kod2", "kod3");

// Tablice odpowiadajaca za klientow
var users2 = new Array("klient", "klient2", "klient3");
var passwords2 = new Array("kod1", "kod2", "kod3");

// Funkcaja sprwadzajaca rownosc rejestru np 0 jednej tablicy
// z rejestrem 0 drugiej tablicy jako system sprawdzania logowania
function sprawdz_haslo2(user, pass) {
    for (var i = 0; i < users2.length; i++) {
        if ((user == users2[i]) && (pass == passwords2[i]))
            return true;
    }
    return false;
}

// Ta funkcja sprawdza wczytana wartosc uzytkownika z HTML'a
function check2() {
    var user = document.form1.user.value;
    var pass = document.form1.pass.value;
    if (!sprawdz_haslo2(user, pass)) {
        alert('Niepoprawne hasło!');
    } else {
        document.location.href = "Klient.html";
    }
}

// Funkcaja sprwadzajaca rownosc rejestru np 0 jednej tablicy
// z rejestrem 0 drugiej tablicy jako system sprawdzania logowania
function sprawdz_haslo(user, pass) {
    for (var i = 0; i < users.length; i++) {
        if ((user == users[i]) && (pass == passwords[i]))
            return true;
    }
    return false;
}

// Ta funkcja sprawdza wczytana wartosc uzytkownika z HTML'a
function check() {
    var user = document.form1.user.value;
    var pass = document.form1.pass.value;
    if (!sprawdz_haslo(user, pass)) {
        alert('Niepoprawne hasło!');
    } else {
        document.location.href = "Pracownik.html";
    }
}





