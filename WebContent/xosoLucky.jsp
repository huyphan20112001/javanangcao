<%@page import="java.util.concurrent.ThreadLocalRandom"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xo so Lucky</title>
<style type="text/css">
	table{
		margin: auto;
		
	}
	tbody{
		width: 502px;
    	display: block;
	}
	table, th, td {
  		border-collapse: collapse;
	}
	.number{
		width: 450px;
		text-align: center;
	}
	.prize{
		width: 50px;
    	text-align: center;
	}
	td{
		text-align: center;
	}
	
</style>
</head>
<body>
	<%
	int db = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai1 = ThreadLocalRandom.current().nextInt(10000, 99999);
	
	int giai2_1 = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai2_2 = ThreadLocalRandom.current().nextInt(10000, 99999);
	
	int giai3_1 = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai3_2 = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai3_3 = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai3_4 = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai3_5 = ThreadLocalRandom.current().nextInt(10000, 99999);
	int giai3_6 = ThreadLocalRandom.current().nextInt(10000, 99999);
	
	int giai4_1 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai4_2 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai4_3 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai4_4 = ThreadLocalRandom.current().nextInt(1000, 9999);
	
	int giai5_1 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai5_2 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai5_3 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai5_4 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai5_5 = ThreadLocalRandom.current().nextInt(1000, 9999);
	int giai5_6 = ThreadLocalRandom.current().nextInt(1000, 9999);
	
	int giai6_1 = ThreadLocalRandom.current().nextInt(100, 999);
	int giai6_2 = ThreadLocalRandom.current().nextInt(100, 999);
	int giai6_3 = ThreadLocalRandom.current().nextInt(100, 999);
	
	int giai7_1 = ThreadLocalRandom.current().nextInt(10, 99);
	int giai7_2 = ThreadLocalRandom.current().nextInt(10, 99);
	int giai7_3 = ThreadLocalRandom.current().nextInt(10, 99);
	int giai7_4 = ThreadLocalRandom.current().nextInt(10, 99);
	%>
	<table border="1" cellpadding="0"
		cellspacing="0">
		<tr style="display: flex">
			<td class="prize">DB</td>
			<td class="number"><%=db %></td>
		</tr>
		<tr style="display: flex">
			<td class="prize">1</td>
			<td class="number"><%=giai1 %></td>
		</tr>
		<tr style="display: flex">
			<td class="prize">2</td>
			<td style="width:225px; text-align: center"><%=giai2_1 %></td>
			<td style="width:225px; text-align: center"><%=giai2_1 %></td>
		</tr>
		<tr>
			<td rowspan="2" class="prize" >3</td>
			<td style="width:calc(450px / 3)"><%=giai3_1 %></td>
			<td style="width:calc(450px / 3)"><%=giai3_2 %></td>
			<td style="width:calc(450px / 3)"><%=giai3_3 %></td>
		</tr>
		<tr>
			<td style="width:calc(450px / 3)"><%=giai3_4 %></td>
			<td style="width:calc(450px / 3)"><%=giai3_5 %></td>
			<td style="width:calc(450px / 3)"><%=giai3_6 %></td>
		</tr>
		<tr style="display: flex">
			<td class="prize">4</td>
			<td style="width:calc(450px / 4)"><%=giai4_1 %></td>
			<td style="width:calc(450px / 4)"><%=giai4_2 %></td>
			<td style="width:calc(450px / 4)"><%=giai4_3 %></td>
			<td style="width:calc(450px / 4)"><%=giai4_4 %></td>
		</tr>
		<tr>
			<td rowspan="2" class="prize">5</td>
			<td style="width:calc(450px / 3)"><%=giai5_1 %></td>
			<td style="width:calc(450px / 3)"><%=giai5_2 %></td>
			<td style="width:calc(450px / 3)"><%=giai5_3 %></td>
		</tr>
		<tr>
			<td style="width:calc(450px / 3)"><%=giai5_4 %></td>
			<td style="width:calc(450px / 3)"><%=giai5_5 %></td>
			<td style="width:calc(450px / 3)"><%=giai5_6 %></td>
		</tr>
		<tr style="display: flex">
			<td class="prize">6</td>
			<td style="width:calc(450px / 3)"><%=giai6_1 %></td>
			<td style="width:calc(450px / 3)"><%=giai6_2 %></td>
			<td style="width:calc(450px / 3)"><%=giai6_3 %></td>
		</tr>
		<tr style="display: flex">
			<td class="prize">7</td>
			<td style="width:calc(450px / 4)"><%=giai7_1 %></td>
			<td style="width:calc(450px / 4)"><%=giai7_2 %></td>
			<td style="width:calc(450px / 4)"><%=giai7_3 %></td>
			<td style="width:calc(450px / 4)"><%=giai7_4 %></td>
		</tr>
	</table>
</body>
</html>