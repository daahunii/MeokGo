<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
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
<title>Insert title here</title>
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
</header>

<h1>리뷰 추가하기</h1>
<form action="addok" method="post" <%-- enctype="multipart/form-data" --%>>
    <table id="edit">
<%--        <tr><td>음식사진</td><td><input type="file" id="photo" name="photo"/></td></tr>--%>
        <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
        <tr><td>음식이름</td><td><input type="text" name="fdname"/></td></tr>
        <tr><td>음식가격</td><td><input type="number" name="price"/></td></tr>
        <tr><td>별점</td><td><input type="number" name="star" placeholder="5점만점"></td></tr>
        <tr><td>연락처</td><td><input type="text" name="tel"></td></tr>
        <tr><td>작성자</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>내용</td><td><textarea cols="50" rows="5" name="review"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

<footer class="text-muted">
    <div class="container">
        <p>HGU BR © JDH</p>
        <p>Book Review website</p>
    </div>
</footer>
</body>
</html>