<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
<style>
	table{
		border:1px solid black;
		border-collapse: collapse;
	}

	#tbl td{
		width: 50px;
		height: 20px;
		border:1px solid black;
		text-align: center;
	}

	.date{
		width:100px;
		height:50px;
		border:1px solid black;
	}
	
	
</style>
</head>
<body>
	<table id="tbl">
		<thead>
			<tr>
				<th class="date">시간</th>
				<th class="date">일</th>
				<th class="date">월</th>
				<th class="date">화</th>
				<th class="date">수</th>
				<th class="date">목</th>
				<th class="date">금</th>
				<th class="date">토</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="i" begin="0" end="47">
				
				<tr class="items">
					<c:if test="${i % 2 == 0}">
						<td class="hour"></td>
					</c:if>
					
					<td class="minute"></td>
					<td class="minute"></td>
					<td class="minute"></td>
					<td class="minute"></td>
					<td class="minute"></td>
					<td class="minute"></td>
					<td class="minute"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	
	// $('.hour').click(()=>{
	// 	console.log($(this).text());
	// 	console.log($('div').text());
		
	// });

	$('.hour').attr('rowspan', 2);
	$('.hour').text();
	
	let hour = 0;
	
	$('tr').each(function(index){
		if(index % 2 == 1){
			$(this).find('.hour').text(hour);
			hour++;
		}
	});
	
	let tdIndex;
	
	$('tr').click(function(){
		$(this).find('.minute').each(function(index){
			if($(this).is(event.target)){
				tdIndex = index;
				console.log('클릭된 요소는 ', tdIndex, '번째 자식이다.');
				m2();		
			} 
		});
	});
	
	function m2(){
		/* const minute = document.getElementsByClassName('minute');
		const tr = document.getElementsByClassName('items'); */
		$('.items').each((index, item)=>{
			$('#tbl tbody').eq(index).find('.minute').eq(tdIndex).css('background-color', 'gold');
			
		});
		
	}
</script>
</body>
</html>