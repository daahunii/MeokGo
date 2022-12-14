<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.board.BoardDAO, com.mycompany.myapp.board.BoardVO,java.util.*, java.io.File"%>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <title>Review</title>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .mbg{
            background-color: rgba(255, 104, 47, 0.96);
        }

        .btn-sm:hover{
            background-color: #dddddd;
        }

        #br{
            ext-align: center;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
            sans-serif;
            font-size: 50pt;
            font-weight: bold;
            color: #ff7e1d;
            text-shadow: 1px 3px 3px rgba(194, 54, 3, 0.96);
        }

    </style>
</head>
<body>
<header>
    <div class="navbar navbar-dark mbg box-shadow">
        <div class="container d-flex justify-content-between" onclick="location.href='list';">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
                    <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                    <path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
                </svg>
                <strong style="margin-left: 5px">먹Go</strong>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header

<%--<%--%>
<%--    BoardDAO boardDAO = new BoardDAO();--%>
<%--    String id=request.getParameter("id");--%>
<%--    BoardVO u = boardDAO.getEat(Integer.parseInt(id));--%>
<%--    request.setAttribute("u", u);--%>
<%--%>--%>

<br>
<h1 align="center" id="br">Review</h1>
<br>
<div align="center" class="album py-5 bg-light">
<%--    <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>--%>
<%--    <c:if test="${u.getPhoto() ne ''}"><br /><img width="430" height="600" src="${pageContext.request.contextPath}/upload/${u.getPhoto()}"></c:if>--%>
<%--    <br />--%>
    <br>
    <label class="form-label"><span>- 카테고리 -</span> <p class="con"></p></label>
<%--    <br />--%>
<%--    <label class="form-label"><span>- 음식이름 -</span> <p class="con"><%=u.getFdname() %></p></label>--%>
<%--    <br />--%>
<%--    <label class="form-label"><span>- 음식가격 -</span> <p class="con"><%=u.getPrice() %></p></label>--%>
<%--    <br />--%>
<%--    <label class="form-label"><span>- 별점 -</span> <p class="con"><%=u.getStar() %></p></label>--%>
<%--    <br />--%>
<%--    <label class="form-label"><span>- 연락처 -</span> <p class="con"><%=u.getTel() %></p></label>--%>
<%--    <br />--%>
<%--    <label class="form-label"><span>- 작성자 -</span> <p class="con"><%=u.getWriter() %></p></label>--%>
<%--    <br />--%>
<%--    <label class="form-label"><span>- 리뷰 내용 -</span> <p class="con" style="width: 60%"><%=u.getReview() %></p></label>--%>
    <br />
</div>

<footer class="text-muted">
    <div class="container">
        <p>HGU MeokGo © project</p>
        <p>Book Review website</p>
    </div>
</footer>
</body>
</html>

