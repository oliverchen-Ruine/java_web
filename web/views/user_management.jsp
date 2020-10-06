<%--
  Created by IntelliJ IDEA.
  User: olive
  Date: 2020/9/28
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>user_management page</title>
    <style type="text/css">
        a {text-decoration: none}
        #header_1{
            padding: 23px 50px 10px 23px;
            background-image: url("../imgs/top_left.gif");
            text-align: left;  /*文本右对齐*/
            width: 600px;
            background-size:100%,100%;
        }

        #header1_child{
            text-align: center;     /* 水平 */
            vertical-align: middle; /* 垂直 */
        }
        #title{
            font-size: 20px;
        }
        #return{
            text-align: right;  /*文本左对齐*/
        }
        #data{
            text-align: right;  /*文本右对齐*/
        }
        #form_1{
            padding: 10px 0px 10px 0px ;
        }
        #button_1{
            padding: 10px 0px 10px 0px ;
        }
        body{
            padding: 100px 0px 0px 690px ;
            background-image: url("../imgs/wallhaven-wyzl56_1920x1080.png");
            background-size: 100%;
        }
        .user_name1 {
            background-color: aqua;
        }
        .name1 {
            background-color: aqua;
        }
        .user_type1 {
            background-color: aqua;
        }
        .user_email {
            background-color: aqua;
            text-align: center;     /* 水平 */
            vertical-align: middle; /* 垂直 */
        }
        .user_postion {
            background-color: aqua;
        }
        .user_check {
            background-color: aqua;
        }
        .user_number {
            background-color: aqua;
            text-align: center;     /* 水平 */
            vertical-align: middle; /* 垂直 */
        }
        .student_1{
            background-color: #A4A4A4;

        }
        .student_2{
            background-color: #A4A4A4;
        }
        .teacher{
            background-color: #A4A4A4;
        }
        .list {
            padding: 10px 10px 10px 10px ;
        }
        #autor{
            padding: 30px 0px 10px 0px ;
            background-image: url("../imgs/footer_bg.gif");
            width: 630px;
        }
        #repassword{
            background-color: #A4A4A4;
            font-size: 15px;
            color: #EB0D3B;
        }
        #repassword1{
            background-color: #A4A4A4;
            font-size: 15px;
            color: #EB0D3B;
        }
        #deletemessage{
            background-color: #A4A4A4;
            font-size: 15px;
            color: #EB0D3B;
        }
    </style><br>
    <script language="javascript">
        function resetpassword(){
            alert("确认修改密码？");
        }
        function deleteinfo(){
            alert("确认删除信息？");
        }
        function Click(){
            var str = document.getElementById("inputinfo").value;
            if (str===null||str===undefined||str===""){
                alert("查找、增加、修改对象输入为空");
                return false;
            }else{
                return true;
            }
        }
    </script>
</head>
<body>
<div id="header_1">
    <tr>
        <td><span id="title">用户管理</span></td>

    </tr>
    <div id="header1_child">

        <span id="autorname">欢迎：
            <%
            session.setAttribute("username",request.getParameter("username"));
            session.setAttribute("usertype",request.getParameterValues("usertype"));
            Cookie user_name = new Cookie("name",request.getParameter("username"));//创建一个cookie对象保存用户名和密码
            Cookie user_password = new Cookie("pwd",request.getParameter("password"));
            response.addCookie(user_name);//添加
            response.addCookie(user_password);
            session.setMaxInactiveInterval(60*5);//5分钟后过期
        %><%=session.getAttribute("username")%><a href="login.jsp" id="return">注销</a></span>
        <div id="data"><%=new java.util.Date().toLocaleString()%></div>

    </div>
</div>

<div>
    <form id="form_1" name="usercontrol" method="post" onSubmit="return Click()">
        <div id="button_1">
            <input id="inputinfo" type="text" name="operation">
            <button id="search" type="submit">查找</button>
            <button id="add" type="submit">增加</button>
            <button id="delet" type="submit">删除</button>
        </div>
        <table border="5" class="list" >
            <tr>
                <td class="user_name1" >用户名</td>
                <td class="name1" >姓名</td>
                <td class="user_type1" >用户类型</td>
                <td class="user_number">手机号</td>
                <td class="user_email">邮箱</td>
                <td class="user_postion">所在单位</td>
                <td class="user_check">操作</td>
            </tr>
            <tr class="student_1">
                <td>憨憨</td>
                <td>李翰</td>
                <td>学生</td>
                <td>12724671232</td>
                <td>12724671232@163.com</td>
                <td>西安理工大学</td>
                <td><input id="repassword" type="button" onClick="resetpassword();" value="修改密码"></td>
            </tr>
            <tr class="student_2">
                <td>瓜瓜</td>
                <td>张挂</td>
                <td>学生</td>
                <td>14143252235</td>
                <td>14143252235@qq.com</td>
                <td>西安理工大学</td>
                <td><input id="repassword1" type="button" onClick="resetpassword();" value="修改密码"></td>
            </tr>
            <tr class="teacher">
                <td>言言</td>
                <td>严寒</td>
                <td>老师</td>
                <td>16213413212</td>
                <td>16213413212@163.com</td>
                <td>西安理工大学</td>
                <td><input id="deletemessage" type="button" onClick="deleteinfo();" value="删除信息"></td>
            </tr>

        </table>
    </form>
    <div id="autor">
        oliverchen_info@163.com
    </div>
</div>
</body>
</html>