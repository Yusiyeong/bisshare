<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!--달력-->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>
   // 달력
    $(function() {
       
        $("#datepicker, #datepicker2").datepicker({
            dateFormat: 'yy-mm-dd'
            ,showOtherMonths: true
            ,showMonthAfterYear:true 
            ,changeYear: true 
            ,changeMonth: true              
            ,yearSuffix: "년"
            ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
            ,dayNamesMin: ['일','월','화','수','목','금','토'] 
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] 
            ,minDate: "-5Y" 
            ,maxDate: "+5y"  
        });                    
        
        
        $('#datepicker').datepicker('setDate', 'today');            
    });
 </script>


<!-- Begin Page Content -->
<div class="container-fluid">
   <!-- DataTales Example Start-->
   <div class="card shadow mb-4">
      <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary" >사원 등록</h6>
      </div>
      
      <div class="card-body">
         <!--start-->
         <div class="">
            <div class="row row-cols-2">
              <div class="col">
                  <!--프로필사진start-->
                  <div class="card" style="height: 337px;">
                     <div class="card-body">
                        <h5>프로필 사진</h5>
                        <hr>

                        <!--프로필사진 내부start-->
						<div style="font-size: 13px; margin-bottom: 5px;">사진은 가로 100px, 세로 100px이상을 권장 합니다.</div>

                        <div>
                           <input type="file" name="profile">
                        </div>
                     
                        <div id="profile-tumb" style="margin-top: 10px;">
                           <img id="profile-img-thumb" width="170px" height="170px">
                        </div>
                        <!--프로필사진 내부end-->

                     </div>
                  </div>
                  <!--프로필사진end-->
              </div>


              <div class="col">
                  <!--회사start-->
                  <div class="card" style="margin-bottom: 15px;">
                     <div class="card-body">

                        <h5>회사 정보</h5>
                        <hr>
                        <!--회사내부start-->
                        <div class="row">
                           <div class="col">
                              <label class="visually-hidden" for="autoSizingSelect">회사명</label>
                              <input type="text" class="form-control" placeholder="회사명을 입력하세요.">
                           </div>
                        </div>

						<div class="row" style="margin-top: 15px;">
							<div class="col">
							   <label class="visually-hidden" for="autoSizingSelect">회사 주소</label>
							   <input type="text" class="form-control" placeholder="회사 주소를 입력하세요.">
							</div>
						</div>

                        <div class="row" style="margin-top: 15px;">
                           <div class="col">
                              <label class="visually-hidden" for="autoSizingSelect">직급</label>
                              <select class="form-select form-control" id="autoSizingSelect">
                                 <option value="" selected>신입</option>
                                 <option value="">대리</option>
                                 <option value="">과장</option>
                                 <option value="">팀장</option>
                              </select>
                           </div>
      
                           <div class="col">
                              <label class="visually-hidden" for="autoSizingSelect">부서</label>
                              <select class="form-select form-control" id="autoSizingSelect">
                                 <option value="" selected>개발</option>
                                 <option value="">인사</option>
                                 <option value="">기획</option>
                                 <option value="">마케팅</option>
                              </select>
                           </div>
                        </div>
                        
                        <!--회사내부end-->
                     </div>
                  </div>
                  <!--회사end-->
              </div>



            </div>

            <div class="col">
                     <!--사원정보start-->
                     <div class="card" style="margin-bottom: 15px;">
                        <div class="card-body">
                        
                           <h5>사원 정보</h5>
                           <hr>
                  
                           <!--사원정보 내부start-->      
                           <div class="row">
                                 
                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">사원명</label>
                                 <input type="text" class="form-control" placeholder="사원명을 입력하세요.">
                              </div>

                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">아이디</label>
                                 <input type="text" class="form-control" placeholder="아이디를 입력하세요.">
                              </div>

                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">닉네임</label>
                                 <input type="text" class="form-control" placeholder="닉네임 입력하세요.">
                              </div>

                           </div>
                        
                        <!--사원정보 내부end-->
                        <!--사원정보 내부start-->
                           
                           <div class="row" style="margin-top: 15px;">
                                 
                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">생년월일</label>
                                 <input type="text" class="form-control" placeholder="6글자로 입력(ex: 990105)">
                              </div>

                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">이메일</label>
                                 <input type="email" class="form-control" placeholder="이메일을 입력하세요.">
                              </div>

                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">연락처</label>
                                 <input type="tel" class="form-control" placeholder="숫자만 입력하세요.">
                              </div>

                           </div>
                        
                        <!--사원정보 내부end-->
                           <!--사원정보 내부start-->
                           
                           <div class="row" style="margin-top: 15px;">
                                 
                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">주소</label>
                                 <input type="address" class="form-control" placeholder="api같은거적용할까말까귀찮다">
                              </div>

                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">연봉</label>
                                 <input type="text" class="form-control" placeholder="숫자만 입력하세요.">
                              </div>

                              <div class="col">
                                 <label class="visually-hidden" for="autoSizingSelect">입사일</label>
                                 <input type="text" class="form-control" id="datepicker">
                           </div>

                           </div>
                        <!--사원정보 내부end-->
                        </div>
                     </div>
                     <!--사원정보end-->

                      <!--취소, 등록 버튼start-->
                     <div style="margin-bottom: 7px; float: right;">
                        <!-- 취소 -->
                        <a href="#" class="btn btn-outline-secondary btn-sm">취소</a> 
                        <!-- 등록 -->
                        <a href="#" class="btn btn-outline-primary btn-sm">등록</a>
                     </div>
                     <!--취소, 등록 버튼end-->

            </div>

         </div>
         <!--end-->
      </div>

   </div>
  <!-- DataTales Example End-->
</div>
<!-- End Page Content -->

<script>
   // 사진 썸네일 미리보기 구현
   const fileInputTag = document.querySelector('input[name=profile]');
   
   // fileInputTag에 변화(onchange)가 생긴다면 함수가 실행 됨.
   fileInputTag.onchange = function(){

      const imgTag = document.querySelector('#profile-img-thumb');

      if(fileInputTag.files.length > 0){
         // 파일 선택 됨
         const fr = new FileReader();
         
         fr.onload = function(data){
            console.log(data);
            imgTag.src = data.target.result;
         }
         fr.readAsDataURL(fileInputTag.files[0]);     // 파일 읽기
      }else{
         imgTag.src = "";
      }

   }
</script>