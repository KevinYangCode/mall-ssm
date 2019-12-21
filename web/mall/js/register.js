/**
 * 校验邮箱是否已经存在
 * @returns {*}
 */
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

function checkEmail() {

    //获取输入框的值  documen整个页面
    var a = document.getElementById("email");
    var email = a.value;
    var emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;


    if (!emailReg.test(email)) {
        document.getElementById("span02").innerHTML = "对不起,邮箱格式有问题"
        a.focus();
        // return false;
    } else {
        //1.创建对象
        var request = ajaxFunction()
        //2.发送请求
        // alert("进入checkEmail.action");
        request.open("POST", "/checkEmail.action", true);
        // alert("aaaaaa");

        //注册状态改变监听，获取服务器传送过来的数据
        request.onreadystatechange = function () {
            var data = request.responseText;
            // alert("data="+data)
            if (request.readyState == 4 && request.status == 200) {
                if (data== 'false') {
                    document.getElementById("span02").innerHTML = "用户名已存在！"
                    a.focus();
                    return false;
                } else {
                    document.getElementById("span02").innerHTML = "用户名可用！"
                    return true;
                }
            }
        }
        request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        request.send("email=" + email);
    }
}

/**
 * 电话校验
 * @returns {boolean}
 */
function checkTel() {
    var obj = document.getElementById("tel");
    var value = obj.value;
    var regTel1 = /^[1][345678][0-9]{9}$/.test(value);//电话号码
    var span = document.getElementById("span_telephone");
    if (value != "") {
        if (!regTel1) {
            span.innerHTML = "电话号码格式错误";
            obj.focus();
            return false;
        }
        else {
            span.innerHTML = "";
            return true;
        }
    }
    else {
        span.innerHTML = "请输入电话号码";
        return false;
    }
}

/**
 *密码校验
 */
function checkPassword() {
    //获取密码输入
    var uPass = document.getElementById("password");
    var pas = uPass.value;
    var span = document.getElementById("span_password");


    //对密码输入进行校验
    if (pas != "") {
        if (pas.length < 6) {
            span.innerHTML = "密码不能少于6位";
            uPass.focus();
            return false;
        }
        else {
            span.innerHTML = "";
            return true;
        }
    }
    else {
        span.innerHTML = "请输入密码";
        return false;
    }
}

/**
 *确认密码校验
 */
function checkRePassword() {
    //获取密码输入
    var uPass = document.getElementById("password").value;
    //获取确认密码输入
    var Rpsw = document.getElementById("repassword");
    var uRePass = Rpsw.value;
    var span = document.getElementById("span_repassword");
    //对密码输入进行校验
    if (uRePass != "") {
        if (uPass != uRePass) {
            span.innerHTML = "对不起,两次密码不一致";
            return false;
        } else {
            span.innerHTML = "";
            return true;
        }
    } else {
        span.innerHTML = "请确认密码";
        return false;
    }
}

function checkForm() {
    var a = checkEmail() && checkPassword() && checkRePassword() && checkTel();
    if (a){
        alert("注册失败,请重新输入...")
    } else {
        alert("注册成功!");
    }
    return a;

}



