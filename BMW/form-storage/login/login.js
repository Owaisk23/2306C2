function logIn(){
    var email = document.getElementById('user_email').value;
    var password = document.getElementById('user_password').value;

    // Get values from local storage

    // var localEmail = localStorage.getItem('email');
    // var localPass = localStorage.getItem('password');
    
    
    var localEmail = sessionStorage.getItem('email');
    var localPass = sessionStorage.getItem('password');

    if( email == localEmail && password == localPass){
        alert('Login Success')
    }else{
        alert('KOn ho aaap??')
    }

}