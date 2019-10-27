<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
	<body>
	<div class="sub-wrap">
	  <div class="sub-container">
	      <div class="sub-header">
	           <div class="ast-div-headline">
	             <label class="AST-label">부대 설비 등록</label>
	           </div>
	           <div class="btn-exit">
			     <ul>
			       <li><a href="#" title="닫기">X</a></li>
			     </ul>
		       </div>
	      </div>
      
        <div class="ast-title">
			     <table class= "ast-table-style04"> 
			    	 <colgroup>
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">

				     </colgroup>
				   <tbody>
				     <tr>
				       <th><li class="color">STEP 01</li>기본 정보</th>
				       <td class="color2"><li class="color2">STEP 02</li>속성 정보</td>
				       <td class="color2"><li class="color2">STEP 03</li>비용 정보</td>
				       <td class="color2"><li class="color2">STEP 04</li>사용자 정보</td>
				       <td class="color2"><li class="color2">STEP 05</li>위치 정보</td>
				     </tr>
				   </tbody>
			     </table>
		</div>

		    <div class="ast-div-simple">
			  <span class="black title-dot-navi">기본 정보 등록</span>
			</div>
			    
			<div class="mg-t2 mg-r50 ta-r">
			  <span class="red">*필수 값을 입력해주세요</span>
		    </div> 

        <div class="middle-cont">
	               <table class="ast-table-style05">
	                   <caption>기본 정보 등록 테이블</caption>
	                   <colgroup>
	                       <col class="wp20">
	                       <col class="wp30">
	                       <col class="wp20">
	                       <col class="wp30">
	                   </colgroup>
                		<tbody>
	                       <tr>
	                           <th><span class="red">*</span>자산번호</th>
	                           <td>
	                               <input type="text" name="" id="" class="ast-select">
	                               <label for="" class="hide">자산번호</label>
	                               <button type="button" name="" id="" class="btn-search">자산번호 검색</button>
	                           </td>
	                           <th><span class="red">*</span>시리얼 번호</th>
	                           <td>
	                           	<input type="text" name="" id="" class="ast-select">
	                           	<label for="" class="hide">시리얼 번호</label>
							</td>
						</tr>
						<tr>
	                           <th><span class="red">*</span>제품명</th>
	                           <td>
	                           	<input type="text" name="" id="" class="wp90">
	                           	<label for="" class="hide">제품명</label>
	                           </td>
	                           <th>제조사</th>
	                           <td>
	                           	<input type="text" name="" id="" class="ast-select">
	                           	<label for="" class="hide">제조사</label>
	                           </td>
	                       </tr>
	                       <tr>
	                           <th>업무구분</th>
	                           <td>
	                               <label for="" class="hide">업무구분</label>
	                               <select id="" class="ast-select">
	                                   <option value="">업무용</option>
	                                   <option value="">출장용</option>
	                                   <option value="">등등</option>
	                               </select>
	                           </td>
	                           <th>용도구분</th>
	                           <td>
	                               <label for="" class="hide">용도구분</label>
	                               <select id="" class="ast-select">
	                                   <option value="">업무용</option>
	                                   <option value="">출장용</option>
	                                   <option value="">등등</option>
	                               </select>
	                           </td>
	                       </tr>
	                       <tr>
	                           <th>대구분</th>
	                           <td>
	                               <label for="" class="hide">대구분</label>
	                               <select id="" class="ast-select">
	                                   <option value="">업무용</option>
	                                   <option value="">출장용</option>
	                                   <option value="">등등</option>
	                               </select>
	                           </td>
	                           <th>중구분</th>
	                           <td>
	                               <label for="" class="hide">중구분</label>
	                               <select id="" class="ast-select">
	                                   <option value="">업무용</option>
	                                   <option value="">출장용</option>
	                                   <option value="">등등</option>
	                               </select>
	                           </td>
	                       </tr>
	                       <tr>
	                           <th>소구분</th>
	                           <td>
	                               <label for="" class="hide">소구분</label>
	                               <select id="" class="ast-select">
	                                   <option value="">업무용</option>
	                                   <option value="">출장용</option>
	                                   <option value="">등등</option>
	                               </select>
	                           </td>
	                           <th>납품사</th>
	                           <td>
	                               <input type="text" name="" id="" class="wp90">
	                               <label for="" class="hide">납품사</label>
	                           </td>
	                        </tr>
	                        <tr>
	                           <th>기술지원사</th>
	                           <td>
	                               <input type="text" name="" id="" class="wp90">
	                               <label for="" class="hide">기술지원사</label>
	                           </td>
	                           <th>유지보수사</th>
	                           <td>
	                               <input type="text" name="" id="" class="wp90">
	                               <label for="" class="hide">유지보수사</label>
	                           </td>
	                       </tr>
                   		</tbody>
               		</table>
				</div>
				
				<div class="button-cont">
					<div class="btn-next ta-c">
		                <ul>
		                    <li>
                                <a href="javascript:register();" title="다음">다음</a>                   		                    
			                    <a href="#" title="저장">저장</a>	        
		                    </li>
		                </ul>
	                </div>
				</div>
			</div>
		</div>
</body>
</html>