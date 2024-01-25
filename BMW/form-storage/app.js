function userSignUp(){
    var name =document.getElementById('user_name').value;
    var email =document.getElementById('user_email').value;
    var password =document.getElementById('user_password').value;

    if(name == "" || email == "" || password == ""){
        // Error Handling
        var errorSpan = document.getElementById('error');
        errorSpan.innerText = "Plz fill all fields";
        errorSpan.style.display = "inline";
    }else{
        // localStorage.setItem('name', name);
        // localStorage.setItem('email', email);
        // localStorage.setItem('password', password);

        // for session storage
        sessionStorage.setItem('name', name);
        sessionStorage.setItem('email', email);
        sessionStorage.setItem('password', password);

        // change file location from login to signup

        location.href = "./login/login.html";

    }
}