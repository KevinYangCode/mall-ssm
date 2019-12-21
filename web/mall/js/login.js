function ajaxFunction() {
    var xmlHttp;
    try { //Firefox , Opera 8.0+ , Safari
        xmlHttp = new XMLHttpRequest();
    } catch (e) {
        try {//Internet Explorer
            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e) {
            try {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e) {
            }
        }
    }
    return xmlHttp;
}

function checkLogin() {

    //获取输入框的值  documen整个页面
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    //1.创建对象
    var request = ajaxFunction();

    //2.发送请求
    request.open("POST", "/login.action", true);

    //注册状态改变监听，获取服务器传送过来的数据
    request.onreadystatechange = function () {
        var data = request.responseText;
        if (request.readyState == 4 && request.status == 200) {
            if (data == 'success') {
                window.location="/main.action"//跳转到首页
            } else {
                document.getElementById("span01").innerHTML = "用户不存在或密码错误"
                return false;
            }
        }
    }
    request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    request.send("email=" + email +"&password=" + password);
}


function UpdateUserData() {
    $.post("/update.action",  $("#updateData").serialize(), function (data) {
        if (data == "0") {
            alert("客户信息更新成功！"   );
        }else {
            alert("客户信息更新失败！");
        }
        window.location="/person.action";
    });
}
