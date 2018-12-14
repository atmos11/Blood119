<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-1 col-md-4 pt-1">
            <a class="text-muted" href="#"></a>
          </div>
		  	  <div class="col-10 col-md-4 text-center" style="text-align:center;">
	
   </div> 

            <div class="col-1 col-md-4 d-flex justify-content-end align-items-center">  
            <%String id= (String)session.getAttribute("id");
            if(id==null){ %>
                <a class="btn btn-sm btn-outline-secondary" href="login.jsp"  style="margin:30px;">Sign in</a>  
               <%}else{
            	   %>  
            	    <a class="btn btn-sm btn-outline-secondary" href="logoutProc.jsp"  style="margin:30px;">Logout</a>  
            	    <%} %>
          </div>
        </div>
 <header class=" py-3">
           <div class="p-3 p-md-5 ">
        <div class="col-12 px-0">
          <img src="./resource/img/Big_Logo.png" class="rounded mx-auto d-block" style="width:30%;height:auto;">
        </div>
      </div>
      </header>