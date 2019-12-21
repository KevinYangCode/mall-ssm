/*
    准备工作 : 准备数据
*/
var provinces = [
    ["深圳市", "东莞市", "惠州市", "广州市"],
    ["长沙市", "岳阳市", "株洲市", "湘潭市"],
    ["厦门市", "福州市", "漳州市", "泉州市"]
];
/*
    1. 确定事件:  onchange
    2. 函数: selectProvince()
    3. 函数里面要搞事情了
        得到当前操作元素
        得到当前选中的是那一个省份
        从数组中取出对应的城市信息
        
        动态创建城市元素节点
        添加到城市select中
        
*/
function selectProvince() {
    var province = document.getElementById("province");
    //得到当前选中的是哪个省份
    //alert(province.value);
    var value = province.value;
    //从数组中取出对应的城市信息
    var cities = provinces[value];
    var citySelect = document.getElementById("city");
    //清空select中的option
    citySelect.options.length = 0;

    for (var i = 0; i < cities.length; i++) {
        //					alert(cities[i]);
        var cityText = cities[i];
        //动态创建城市元素节点   <option>东莞市</option>

        //创建option节点
        var option1 = document.createElement("option"); // <option></option>
        //创建城市文本节点
        var textNode = document.createTextNode(cityText);// 东莞市

        //将option节点和文本内容关联起来
        option1.appendChild(textNode);  //<option>东莞市</option>
        //添加到城市select中
        citySelect.appendChild(option1);
    }

}