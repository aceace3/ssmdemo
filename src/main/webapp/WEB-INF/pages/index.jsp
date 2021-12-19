<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<body>
<h2>Hello World!</h2>
<button id="btn">click me</button>
<button id="btn2">show user whose id = 1</button>
<div id="re">

</div>
<hr>
<div id="re2">

</div>
<script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-3.5.1.min.js"></script>
<script>
    $(function(){
        $("#btn").click(function(){
            $.ajax({
                url:"/findAll",//要请求的服务器url
                data:{
                    // ins:ins
                },//第一个name对应的是后端request.getParameter("name")的name、第二个name对应的是此js中的var name = $("#name").val();的name
                type:"GET",//请求方式
                dataType:"json",//服务器返回什么类型数据 text xml javascript json(javascript对象)
                success:function(result){//函数会在服务器执行成功后执行，result就是服务器返回结果
                    console.log(result);
                    var resHtml = '<ol>'
                    for(var i =0;i<result.length;i++){
                        resHtml += '<li>'+result[i].username+'</li>'
                        console.log(resHtml)
                    }
                    resHtml+='</ol>'

                    $("#re").html(resHtml);
                },
                error:function(jqXHR, textStatus, errorThrown) {

                }
            });
        });
        $("#btn2").click(function(){
            $.ajax({
                url:"/findById",//要请求的服务器url
                data:{
                    id: 1
                },//第一个name对应的是后端request.getParameter("name")的name、第二个name对应的是此js中的var name = $("#name").val();的name
                type:"GET",//请求方式
                dataType:"json",//服务器返回什么类型数据 text xml javascript json(javascript对象)
                success:function(result){//函数会在服务器执行成功后执行，result就是服务器返回结果
                    console.log(result);
                    var resHtml = '<ol>'
                    resHtml += '<li>'+result.username+'</li>'
                    resHtml+='</ol>'

                    $("#re2").html(resHtml);
                },
                error:function(jqXHR, textStatus, errorThrown) {

                }
            });
        });
    });
</script>
</body>
</html>
