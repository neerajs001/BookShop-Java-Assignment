<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Books - BookHub</title>
    <style>
        /* Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Page background */
        body {
            font-family: "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            min-height: 100vh;
            padding: 40px 20px;
            background: linear-gradient(180deg, #f6f9ff 0%, #eef4ff 100%);
            color: #0f1724;
        }

        /* Card container */
        .container {
            max-width: 1100px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 12px;
            padding: 30px;
            border: 1px solid rgba(15, 23, 36, 0.06);
            box-shadow: 0 8px 30px rgba(16, 24, 40, 0.06);
        }

        /* Title */
        h1 {
            margin-bottom: 22px;
            text-align: center;
            font-size: 1.6rem;
            color: #0b1220;
            font-weight: 600;
        }

        /* Action buttons row */
        .actions {
            display: flex;
            gap: 12px;
            margin-bottom: 22px;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* Buttons */
        .btn {
            padding: 10px 18px;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-weight: 600;
            transition: transform 120ms ease, box-shadow 120ms ease;
            border: none;
            color: #fff;
            background: linear-gradient(180deg,#2563eb,#1e4fd6);
            box-shadow: 0 6px 18px rgba(37,99,235,0.12);
        }

        .btn:active { transform: translateY(1px); }
        .btn:hover { box-shadow: 0 10px 26px rgba(37,99,235,0.14); }

        /* Make the second button lighter (Home) without changing classes */
        .actions .btn:last-child {
            background: #ffffff;
            color: #0b1220;
            border: 1px solid #e2e8f0;
            box-shadow: none;
        }
        .actions .btn:last-child:hover {
            background: #f8fafc;
            box-shadow: 0 6px 16px rgba(11,18,32,0.04);
        }

        /* Table responsiveness and style */
        .books-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            overflow: auto;
            display: block;
            border-radius: 8px;
        }

        .books-table thead {
            display: table;
            width: 100%;
            table-layout: fixed;
        }

        .books-table tbody {
            display: block;
            max-height: 50vh;
            overflow: auto;
            width: 100%;
        }

        .books-table th,
        .books-table td {
            padding: 12px 14px;
            text-align: left;
            border-bottom: 1px solid rgba(15, 23, 36, 0.06);
            min-width: 120px;
        }

        .books-table th {
            font-weight: 700;
            background: linear-gradient(180deg,#fbfdff,#f3f7ff);
            color: #0b1220;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 0.02em;
            position: sticky;
            top: 0;
            z-index: 1;
        }

        .books-table tbody tr {
            transition: background 120ms ease, transform 120ms ease;
        }

        .books-table tbody tr:nth-child(even) td {
            background: #fbfdff;
        }

        .books-table tbody tr:hover td {
            background: #f1f5ff;
            transform: translateY(-1px);
        }

        /* Book ID styling */
        .books-table td:first-child {
            color: #475569;
            font-weight: 600;
            width: 110px;
        }

        /* Price styling */
        .books-table td:last-child {
            color: #065f46;
            font-weight: 700;
        }

        /* Empty state */
        .empty-message {
            text-align: center;
            padding: 34px 20px;
        }
        .empty-message p {
            margin-bottom: 18px;
            color: #334155;
            font-size: 1rem;
        }

        /* Small screens */
        @media (max-width: 640px) {
            .container { padding: 18px; }
            h1 { font-size: 1.25rem; }
            .books-table th, .books-table td { padding: 10px; min-width: 90px; }
            .books-table tbody { max-height: 60vh; }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All Books</h1>
        
        <div class="actions">
            <a href="${pageContext.request.contextPath}/books/addBook" class="btn">
                Add New Book
            </a>
            <a href="${pageContext.request.contextPath}/books/" class="btn">
                Home
            </a>
        </div>
        
        <c:choose>
            <c:when test="${not empty books}">
                <table class="books-table">
                    <thead>
                        <tr>
                            <th>Book ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>#${book.bookId}</td>
                                <td>${book.title}</td>
                                <td>${book.author}</td>
                                <td>$${book.price}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <div class="empty-message">
                    <p>No books found in the library.</p>
                    <a href="${pageContext.request.contextPath}/books/addBook" class="btn">
                        Add Your First Book
                    </a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
