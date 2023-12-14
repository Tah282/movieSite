let check = "check"; 
let list = null;

function makeListView(){
	
	if(check != null){ 	//무비차트
		check = null;
		//alert(check);	
		list = getList1_5();
	}else{				//상영예정작
		check = "check";
		//alert(check);
		list = getList2_5();
	}
	
}

function getList1_5(){
	
	$.ajax({
		url: "movie/movieList1_5",
		type: "get",
		success: makeView,
		error: function() { alert("getList1 error!"); }
	});
	
}
function getList2_5(){
	
	$.ajax({
		url: "movie/movieList2_5",
		type: "get",
		success: makeView,
		error: function() { alert("getList1 error!"); }
	});
	
}

function makeView(data){
	
	let listHtml = ``;
	
	listHtml += 
	`<table id="listTable">
        <tr>
            <td class="chartspace1" colspan="5"></td>
        </tr>
        <tr>
            <td id="chartList"><p onclick="makeListView()">무비차트</p></td> <td id="openList"><p onclick="makeListView()">상영예정작</p></td> <td width="20px;" sytle="text-align:left;"></td>  <td id="allList" colspan="2"><button class="allBtn" onclick="location.href='/controller/movie/movieTotalList.do?check=${check}'">전체보기</button></td>
        </tr>
        <tr>
            <td class="chartspace2" colspan="5"></td>
        </tr>
        <tr>
	`;
	
	$.each(data, function(index, obj){
		listHtml += `<td>
                    <a class="a-pageItemInfo" href="/controller/movie/movieInfo.do?num=${obj.num}">
                    <img class="chart-img" src="/controller/resources/mvImage/${obj.movieImage}">
                    <input type="hidden" class="movieIndex" value="${ index }">
                    </a>
                </td>`;
	});
        
    listHtml+=`</tr><tr>`;

	$.each(data, function(index, obj){
		listHtml += `<td class="chartMovieInfo" >
	                    <p class="chartMovieName">
							<a href="/controller/movie/movieInfo.do?num=${obj.num}" >${ obj.movieName }</a>
						</p>
	                    <p class="chartMoviePercent">
	                   		<img class="rating-img" src="/controller/resources/image/star2.png"> ${obj.movieRating} 
	                    </p>
              		 </td>`;
	});

    listHtml +=
    `
        </tr>
        </table>
        </div>
    `;
	
	$("#listDiv").html(listHtml);
	
	if(check != null){ 	
		let text = document.querySelector("#chartList");
		text.style.color = "Gray";
	}else{				//상영예정작
		let text = document.querySelector("#openList");
		text.style.color = "Gray";
	}
}

//------------------------------------------------------------------------
function getTotalList(check){
	
	if(check == null){ 	//무비차트
		check = null;
		list = getList1();
	}else{				//상영예정작
		check = "check";
		list = getList2();
	}
	
}

function getList1(){
	
	$.ajax({
		url: "movieList1",
		type: "get",
		success: makeTotalList,
		error: function() { alert("getList1 error!"); }
	});
	
}
function getList2(){
	
	$.ajax({
		url: "movieList2",
		type: "get",
		success: makeTotalList2,
		error: function() { alert("getList1 error!"); }
	});
	
}
function getTotalCount(){
	
	let allcount = null;
	
	if(check != null){//무비차트
		allcount = $.ajax({
			async: false,
			url: "chartCount",
			type: "get",
			dataType: "json",
			error: function() { alert("chartCount error"); }
		}).responseText;	
	
	}else{ //상영예정작
		allcount = $.ajax({
			async: false,
			url: "openCount",
			type: "get",
			dataType: "json",
			error: function() { alert("openCount error"); }
		}).responseText;
	}	
	
	return allcount;
}

function makeTotalList(data){
	
	let listCount = getTotalCount();
	
	let col = 4;
	let row = parseInt(listCount/col);
	if(row==0){row = 1;}
	else if(listCount%col>0){row += 1;}
	let startIndex = 0;
	let endIndex = startIndex + col;
	if(endIndex>listCount){ endIndex = listCount; }
	
	let listHtml =``;
	
	listHtml +=`
			<table id="titleTable">
				<tr>
					<td><h1>무비차트</h1></td>
				</tr>
				<tr><td colspan="3"><hr></td></tr>
			</table>
	`; 
	
	listHtml +=`<table id="totalTable">`;
	
	$.each(data, function(index, obj){
		if(index%4==0){
			listHtml +=`
				<tr>
			`;
		}
		
		listHtml += `<td>
			<p class="tagNum">No.${index+1}</p>
			<p class="img-td"><a href="/controller/movie/movieInfo.do?num=${obj.num}" >
				<img class="listImg" src="/controller/resources/mvImage/${obj.movieImage}"></a>
			</p>
			<p class="img-name"><a href="/controller/movie/movieInfo.do?num=${obj.num}" > 
				${obj.movieName}</a>
			</p>
			</td>`;
		
		if(index%3==0 && index != 0){
			listHtml +=`
				</tr>
			`;
		}		
	});	
	
	listHtml +=`
			</table>`;
	
	$("#totalListDiv").html(listHtml);
}

function makeTotalList2(data){
	
	let listCount = getTotalCount();
	
	let col = 4;
	let row = parseInt(listCount/col);
	if(row==0){row = 1;}
	else if(listCount%col>0){row += 1;}
	let startIndex = 0;
	let endIndex = startIndex + col;
	if(endIndex>listCount){ endIndex = listCount; }
	
	let listHtml =``;
	
	listHtml +=`
			<table id="titleTable">
				<tr>
					<td><h1>상영예정작</h1></td> 
				</tr>
				<tr><td colspan="3"><hr></td></tr>
			</table>
	`; 
	
	listHtml +=`<table id="totalTable">`;
	
	$.each(data, function(index, obj){
		if(index%4==0){
			listHtml +=`
				<tr>
			`;
		}
		
		listHtml += `<td>
			<p class="tagNum">No.${index+1}</p>
			<p class="img-td"><a href="/controller/movie/movieInfo.do?num=${obj.num}" >
				<img class="listImg" src="/controller/resources/mvImage/${obj.movieImage}"></a>
			</p>
			<p class="img-name"><a href="/controller/movie/movieInfo.do?num=${obj.num}" > 
				${obj.movieName}</a>
			</p>
			</td>`;
		
		if(index%3==0 && index != 0){
			listHtml +=`
				</tr>
			`;
		}		
	});	
	
	listHtml +=`
			</table>`;
	
	$("#totalListDiv").html(listHtml);
}

