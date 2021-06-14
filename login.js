function validate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if (username == "admin" && password == "password") { // ik this isn't secure, it isn't protecting anything rn so it will be like this until then

        alert("Login Accepted. Access the Map by going to https://www.weirdbandkid.games/des/postal-codes");
        //window.location.replace("http://www.w3schools.com");
        //window.location.href = "http://localhost:5500/des/postal-codes.html";
        return false;
    }
 else {
    alert("Login Failed");
}
}