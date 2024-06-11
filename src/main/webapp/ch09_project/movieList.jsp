<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.javalab.vo.*" %>    
    
    <%
       // 영화 목록 추출하기
       List<Movie> movieList = (List<Movie>)request.getAttribute("movieList");
       // 문화 컨텐트 타입 추출하기
       String infoType = (String)request.getAttribute("infoType");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieList.jsp</title>
</head>
<body>
   <h3>영화목록</h3>
   <table border="1">
      <tr>
         <th>제목</th>
         <th>감독</th>
         <th>개봉년도</th>
      </tr>
      <%
         for(Movie movie: movieList){            
      %>
         <tr>
            <td><a href="movieDetail.jsp"> <%= movie.getTitle() %></a></td>
            <td><%= movie.getDirector() %></td>
            <td><%= movie.getReleaseYear() %></td>
         </tr>
      <%
         } // end for
      %>
   </table>
   
   <button onclick="location.href='selectInfo.jsp?infoType=<%=infoType %>'">컨텐츠 선택</button>
</body>
</html>