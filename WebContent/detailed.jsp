<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form>
   <input type="hidden" name="currentpage" />
    <table align="center" style="width: 60%;" border="1">
       <tr>
         <th>学生编号</th>
         <th>学生姓名</th>
         <th>学生年龄</th>
         <th>学生性别</th>
         <th>学生生日</th>
       </tr>
      <c:forEach items="${requestScope.list}" var="list">
       <tr>
            <td>${list.id }</td>
             <td>${list.name }</td>
              <td>${list.age }</td>
               <td>${list.sex }</td>
                <td>${list.birth}</td>        


       </tr>
      </c:forEach>

   </table>
   <div align="right" style="width: 80%">
  <c:forEach begin="${pageView.startindex}" end="${pageView.endindex}"
   var="wp">
   <c:if test="${pageView.currentpage==wp}">
    <b>[${wp}]</b>
   </c:if>
   <c:if test="${pageView.currentpage!=wp}">
    <a href="javascript:topage('${wp}')">[${wp}]</a>
   </c:if>
  </c:forEach>
                            总共${pageView.totalrecordnumber}页
    </div>
  </form>

</body>
</html>