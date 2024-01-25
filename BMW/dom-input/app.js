function loginUser(){
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    if( email == "" || password == ""){
        alert('Please enter email & password')
    }else{
        alert('Your email is ' + email + ' & your password is ' + password)
    }
}