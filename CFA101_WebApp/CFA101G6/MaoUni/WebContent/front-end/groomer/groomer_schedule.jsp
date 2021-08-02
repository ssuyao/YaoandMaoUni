<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.gschedule.model.*" %>
<%@ page import="com.groomer.model.*" %>

<jsp:useBean id="schSvc" scope="page" class="com.gschedule.model.SchService"/>

<%
	Integer groomerId = ((GroVO)session.getAttribute("groVO")).getGroomerId();
	List<SchVO> list = schSvc.getByGroomerId(groomerId, 8);
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Appointment Manage</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/tooplate-gymso-style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sweetalert2.css">

<script src="<%= request.getContextPath() %>/resources/js/fontawesome.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/jquery_1.12.4.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/js/sweetalert2.js"></script>
<style>

th, td{
line-height:20px;
width: 10px;
font-size: 10px;
}

.table td, .table th {
   padding: 2px;
}

.booked{
background-color: #F6B352;
}

.done{
background-color: #8CD790;
}

.schduleTable {
  overflow-x:auto;
}

.fa-power-off:hover{
cursor: pointer;
}

</style>
</head>

<body>
	<!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">

            <a class="navbar-brand" href="<%= request.getContextPath() %>/front-end/groomer/groomer_appointment_manage.jsp">美容服務管理</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="<%= request.getContextPath() %>/front-end/member/grooming_groomerInfo.jsp?groomerId=${groVO.groomerId}" class="nav-link smoothScroll">個人主頁</a>
                    </li>
					<li class="nav-item">
                        <a href="<%= request.getContextPath() %>/front-end/groomer/groomer_infoEdit.jsp" class="nav-link smoothScroll">服務資訊管理</a>
                    </li>
                    <li class="nav-item">
                        <a href="<%= request.getContextPath() %>/front-end/groomer/groomer_appointment_manage.jsp" class="nav-link smoothScroll">預約單管理</a>
                    </li>

                    <li class="nav-item">
                        <a href="<%= request.getContextPath() %>/front-end/groomer/groomer_schedule.jsp" class="nav-link smoothScroll">班表</a>
                    </li>
                     <li class="nav-item">
                        <a href="<%= request.getContextPath() %>/front-end/member/memberpage.jsp" class="nav-link smoothScroll">會員中心</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
	<main>
		<c:if test="${not empty errorMsgs}">
			<c:forEach var="message" items="${errorMsgs}">
				<p style="color: red">${message}</p>
			</c:forEach>

		</c:if>


<!------------------------------------------------------ SCHEDULE start ------------------------------------------------>
    <section class="schedule section" id="schedule">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 col-12 text-center">
                    <!-- <h6 data-aos="fade-up">our weekly GYM schedules</h6> -->

                    <h2 class="text-white" data-aos="fade-up" data-aos-delay="200">預約行程</h2>
                </div>

                <div class="col-lg-12 py-5 col-md-12 col-12 schduleTable">
                    <div class="guide">8<span> 月</span></div>
                    <table class="table table-bordered table-responsive schedule-table" data-aos="fade-up"
                        data-aos-delay="300">

                        <thead class="thead-light">
                        	<th>Date</th>
                        	<th>09:00</th>
                        	<th>09:30</th>
                        	<th>10:00</th>
                        	<th>10:30</th>
                        	<th>11:00</th>
                        	<th>11:30</th>
                        	<th>12:00</th>
                        	<th>12:30</th>
                        	<th>13:00</th>
                        	<th>13:30</th>
                        	<th>14:00</th>
                        	<th>14:30</th>
                        	<th>15:00</th>
                        	<th>15:30</th>
                        	<th>16:00</th>
                        	<th>16:30</th>
                        	<th>17:00</th>
                        	<th>17:30</th>
                        	<th>18:00</th>
                        	<th>18:30</th>
                        	<th>19:00</th>
                        	<th>19:30</th>
                        	<th>20:00</th>
                        	<th>20:30</th>
                        	<th>21:00</th>
                        	<th style="background-color: green">休</th>
                        </thead>

                        <tbody>
 <c:forEach var="schVO" items="${list}">                   
                        <th class="${schVO.schDate}"><fmt:formatDate value="${schVO.schDate}" pattern="dd"/></th>
            <c:forEach var="i" begin="17" end="41" step="1"> 
<!--             			charAt(i) return char -->
           				<c:if test="${schVO.schStatus.charAt(i) == '0'.charAt(0)}"><td class=""></td></c:if>           			
           				<c:if test="${schVO.schStatus.charAt(i) == '1'.charAt(0)}"><td class="booked"></td></c:if>           
           				<c:if test="${schVO.schStatus.charAt(i) == '2'.charAt(0)}"><td class="booked"><i class="fas fa-paw"></i></td></c:if>          				
          				<c:if test="${schVO.schStatus.charAt(i) == '3'.charAt(0)}"><td class="done"><i class="fas fa-check"></i></td></c:if>             				
           				<c:if test="${schVO.schStatus.charAt(i) == '4'.charAt(0)}"><td class=""></td></c:if>
           				<c:if test="${i == 41}"><td class=""><i class="fas fa-power-off" data-groomerid="${schVO.groomerId}" data-schdate="${schVO.schDate}"></i></td></c:if>                 
            </c:forEach>
                            </tr>
                            
</c:forEach>                             


                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </section>	
<!------------------------------------------------------ SCHEDULE end ------------------------------------------------>

	</main>
	<footer></footer>
	
	<script>
	$(".fa-power-off").click(function(e){		
		$.ajax({
			url: "/MaoUni/schedule.do",
			type: "POST",
			data:{
				schdate: e.target.dataset.schdate,
				groomerId: e.target.dataset.groomerid,
				status: "0",
				stime: "0",
				etime: "47",
				action: "update"
			},
			success: function(data){
				console.log(data)
				if(data === "更新失敗"){
					swal("更新失敗！", "這天已有行程，不可劃休哦!", "warning").then((result) => {
						window.location.reload();
					})
				}else{
					swal("班表更新！", "", "success").then((result) => {
						window.location.reload();
					})
				}
			}
		})
	})
	
	
	
	</script>
	
	

<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
</body>
</html>