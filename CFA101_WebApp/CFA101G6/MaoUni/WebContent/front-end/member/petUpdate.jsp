<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.pet.model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>毛孩資料更新</title>
<!-- 隱藏式菜單_連結 -->
 <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hidden_menu.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hidden_menu2.css">

   <style>
    .touch_section{
 
 background-image: url("<%=request.getContextPath()%>/resources/images/petupdate.jpg");
  background-size: cover;
  height: 300px;
  position: relative;
  padding: 350px;
 
}
 .get_taital{
	text-align: center;
  position: absolute;
	color: #f7941d;
	font-size: 50pt;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
 }
   .email_box{
    margin-top: 150px;
    max-width:900px;
	    width: 50%;
	    float: left;
	    background-color: #ffffff;
	     border-radius: 20px;
	    height: auto;
      padding: 50px 20px;
      opacity: 0.80;
      text-align:center;
  }
   .form-group {
        margin-bottom: 2rem;
   }
   h4{
    margin-left: 200px;
    font-size: 22px;
   }
   .email-bt {
    max-width:900px;
     margin-left: 200px;
    border: 1px solid #000;
    color: #000000;
    width: 100%;
    height: 55px;
    font-size: 22px;  
    padding: 20px;
    margin-top: 20px;
   }
   .massage-bt {
    max-width:900px;
     margin-left: 200px;
    border: 1px solid #000;
    color: #000000;
    width: 100%;
    height: 200px;
    font-size: 22px;
    padding: 70px 20px 10px 20px;
  }
 .input{
  margin-left: 200px;
 }
button.main_bt {
  background-color: white; 
    color: black; 
    border: 2px solid #D2AD86;
   border-radius: 12px;
    width: 80px;
    height: 40px;
    font-size:15px;
   margin-left: 200px;
   border-radius: 25px;
    
}
button.main_bt:hover{
  background-color: #D2AD86; /* Green */
    color: white;
}
.erroeMasgs{
margin-left: 200px;
}
  
  
 </style>
</head>
<body >

   <!-- 以下 >>隱藏式菜單_內容 -->
<!--      <header> -->
<!--          <span class="toggle-button" style="margin-left:-5px;margin-top:-7px;"> -->
<!--              <div class="menu-bar menu-bar-top"></div> -->
<!--              <div class="menu-bar menu-bar-middle"></div> -->
<!--              <div class="menu-bar menu-bar-bottom"></div> -->
<!--          </span> -->
<!--          <div class="menu-wrap"> -->
<!--              <div class="menu-sidebar" style="margin-top:30px;"> -->
<!--                  <ul class="menu"> -->
<%--                     <li><a href="<%= request.getContextPath() %>/back-end/member/listAllMember.jsp">會員資料管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/item/itemHomePage.jsp">商城管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/message/message_home.jsp">商城客服管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/adopt/adopt_home.jsp">浪浪找家管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/article/select_page_art.jsp">知識站管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/announcemet/select_page.jsp">公告管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/groomer/groomerList.jsp">美容師管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/groomer/grooming_report.jsp">美容預約檢舉管理</a></li> --%>
<%-- 	                <li><a href="<%= request.getContextPath() %>/back-end/staff/allStaff.jsp">後台管理</a></li> --%>
<!--                  </ul> -->
<!--              </div> -->
<!--          </div> -->
<!--      </header> -->
 <!-- 以上 >>隱藏式菜單_內容 --> 
 
 
   <div class="touch_section">
        <h1 class="get_taital"><strong>
             <span style="color: #ffffff;">毛孩更新</span> Update Pet</strong></h1>
    </div>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/pet/pet.do" name="form1">
<table>
	
        <h3>毛孩編號: ${petVO.petId}</h3>
		<h3>毛孩名字 ${petVO.petName}</h3>
            
		<tr>
		<td>毛孩類別:</td>
		<select size="" name="petSort">
		<option value="狗">狗</option>
		<option value="貓">貓</option>
		</select>
	</tr>
	
		<tr>
		<td>毛孩品種:</td>
		<select size="" name="petVarId">
		<option value="1">馬爾濟斯</option>
		<option value="2">哈士奇</option>
		<option value="3">黃金獵犬</option>
		<option value="4">拉布拉多</option>
		<option value="5">吉娃娃</option>
		<option value="6">米克斯</option>
		<option value="7">博美</option>
		<option value="8">約克夏</option>
		<option value="9">臘腸</option>
		<option value="10">柴犬</option>
		<option value="11">豹貓</option>
		<option value="12">英國短毛貓</option>
		<option value="13">熱帶草原貓</option>
		<option value="14">蘇格蘭折耳貓</option>
		<option value="15">緬因貓</option>
		<option value="16">挪威森林貓</option>
		<option value="17">波斯貓 </option>
		<option value="18">塞爾凱克捲毛貓</option>
		<option value="19">加拿大無毛貓</option>
		</select>
	</tr>
	
		<tr>
		<td>性別:</td>
		<select size="1" name="petGender">
		<option value="公">公</option>
		<option value="母">母</option>
		</select>
	</tr>
	
	
	<tr>
		<td>年齡</td>
		<td><input type="TEXT" name="petAge" size=""value="${petVO.petAge}" required/></td>
	</tr>
	
		<tr>
		<td>狀態:</td>
		<select size="" name="petSurvive">
		<option value="0">健康</option>
		<option value="1">懷念</option>
		</select>
	</tr>
	

</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="petId" value="${param.petId}">
<input type="submit" value="送出修改"></FORM>

   <script src="<%=request.getContextPath()%>/resources/bootstrap/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>

    <script src="<%=request.getContextPath()%>/resources/js/hidden_menu3.js"></script> 
    <script src="<%=request.getContextPath()%>/resources/js/hidden_menu4.js"></script>

</body>

</html>