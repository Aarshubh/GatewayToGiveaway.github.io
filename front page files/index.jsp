<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="portal.dbtask.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<style>
.w-100 {
	width: 100%;
	height: 50vh;
}
</style>
</head>
<body>
	<c:catch var="exp">

		<s:setDataSource driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://Localhost:3306/lifeline_db" user="root"
			password="root" var="dbcon" scope="application" />



	</c:catch>
	<div class="row bg-success">
	<div class="col-8">
		<h2 class="text-warning "
			style="text-align: center; margin-bottom: 0px">LifeLine Portal
			Welcomes You!!</h2>
			</div>
			<div class="col-4">
			<div class="row">
				<div class="col-8">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
					</div>
					
					
					
				<button class="btn btn-outline-danger" type="button" style="">Search</button>
			
			
			
			</div>
			</div>
	     	</div>
			
						
			
	</div>
	<%@include file="/common/navbar.html"%>

	<!-- carousel code starts from here -->

	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="false">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/LifeLineProtal/images/pexels-nothing-ahead-3584101.jpg"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block"">
					<h5>Bone Densitomitry</h5>
					<p>Providers at Lifeline Medical Associates can order regular
						bone density testing to closely monitor bone health.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/LifeLineProtal/images/pngfind.com-bacon-png-515897.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Wellness Care</h5>
					<p>Providers at Lifeline Medical Associates help patients
						develop a personalized Wellness Care plan allowing them to
						maintain a healthy lifestyle.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/LifeLineProtal/images/donor.png" class="d-block w-100"
					alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Dental care</h5>
					<p>A genuine smile comes from the heart,but a healthy smiles
						needs good dental care.Lifeline medical associates do the best for
						your dental care.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- carousel code ends here -->

	<div class="contain-fluid bg-warning">
		<marquee onmouseover="this.stop()" onmouseout="this.start()">
			<ul>
				<%
	String strsql="select * from notice";
	
							ResultSet rs= AdminTask.viewNotice(strsql);
							while(rs.next())
							{
								String msg=rs.getString("message");
								String id=rs.getString("notice_id");
							
	%>
				<li style="display: inline; color: red;"><a
					href="/LifeLineProtal/JSP/notice_details.jsp?noteid=<%=id%>"> <%=msg %></a>

				</li>

				<%} 
	rs.close();%>
			</ul>
		</marquee>
	</div>
	<br>
	<%
	
	String sql="select * from views  order by date desc limit 4";
	ResultSet rs1=DonorTask.donor_views(sql);
	while(rs1.next())
	{
		
	String rem=rs1.getString("remarks");
	String date=rs1.getString("date");
	String donorid=rs1.getString("donor_id");

	%>

	<div class="card text-bg-danger mb-3"
		style="max-width: 18rem; margin-left: 10px; float: left">
		<div class="card-header">
			Views Shared By
			<%=donorid %>
			on Dated
			<%=date%></div>
		<div class="card-body">
			<h5 class="card-title"><%=date%></h5>
			<p class="card-text"><%=rem %>
		</div>
	</div>
	<%}
	rs1.close();
	%>


	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>

</body>
</html>