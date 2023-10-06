// callbacks
function test(mensaje) {
    setTimeout(function(){
        callback();
    }, 5000);
}

function mensaje() {
    alert("Mensaje impreso");
}

// promesas
let lapromesa = new Promise(function (resolve, reject) {
    setTimeout(function(){
        resolve('promesa ok');
        //reject('pronesa nok')
    }, 10000);
})

lapromesa.
then(function (resultado) {
    console.log(resultado);
}).
catch(function(error) {
    console.log(error);
});

// dos promesas con promise.all
let laotrapromesa = new Promise(function (resolve, reject) {
    setTimeout(resolve, 2000, 'hola');
});

let lanuevapromesa = new Promise(function (resolve, reject) {
    setTimeout(resolve, 4000, 'mundo');
});

Promise.all([laotrapromesa,lanuevapromesa]).then(function (valores) {
    console.log(valores);
});

// uso de una promesa funcion
function obtenerUsuario() {
    return new Promise((resolve, reject) => {
        let xhr = new XMLHttpRequest();
        xhr.open('GET', 'https://boo.far.com');
        xhr.onload = function () {
            if (xhr.status==200) {
                resolve(JSON.parse(xhr.responseText));
            } else {
                reject(xhr.statusText);
            }
        }
        xhr.send();
    });
}

obtenerUsuario().
then(function (usuarios) {
    console.log(usuarios);
}).
catch(function (error) {
    console.error(error);
});