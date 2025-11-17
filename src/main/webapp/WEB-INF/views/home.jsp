<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookHub - Home</title>
    <style>
        /* Reset & base */
        * { margin: 0; padding: 0; box-sizing: border-box; }
        html, body { height: 100%; }
        body {
            font-family: "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: linear-gradient(135deg, #f3f7ff 0%, #eef9f3 100%);
            color: #1f2937;
            -webkit-font-smoothing: antialiased;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
        }

        /* Container */
        .container {
            width: 100%;
            max-width: 720px;
            background: linear-gradient(180deg, rgba(255,255,255,0.9), rgba(250,250,255,0.95));
            border-radius: 12px;
            padding: 36px;
            box-shadow: 0 10px 30px rgba(31,41,55,0.10);
            text-align: center;
            border: 1px solid rgba(31,41,55,0.06);
        }

        h1 {
            font-size: 2.25rem;
            margin-bottom: 8px;
            letter-spacing: -0.02em;
            color: #0f172a;
        }

        .subtitle {
            margin-bottom: 26px;
            font-size: 1rem;
            color: #475569;
        }

        /* Button group and buttons (keep classes unchanged) */
        .button-group {
            display: flex;
            gap: 14px;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 8px;
        }

        .btn {
            display: inline-block;
            padding: 12px 20px;
            text-decoration: none;
            border: 1px solid rgba(15,23,42,0.08);
            background: #ffffff;
            color: #0f172a;
            border-radius: 10px;
            font-weight: 600;
            transition: transform 180ms ease, box-shadow 180ms ease, background 180ms ease;
            box-shadow: 0 6px 18px rgba(15,23,42,0.06);
            cursor: pointer;
            user-select: none;
            min-width: 160px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        /* subtle icon via pseudo-elements so HTML class names remain unchanged */
        .btn:first-child::before { content: "➕"; font-size: 1.05em; }
        .btn:last-child::before  { content: "📚"; font-size: 1.05em; }

        .btn:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 28px rgba(15,23,42,0.12);
            background: linear-gradient(180deg, #ffffff, #f7fbff);
        }

        .btn:active {
            transform: translateY(-1px) scale(0.997);
        }

        .btn:focus {
            outline: 3px solid rgba(59,130,246,0.18);
            outline-offset: 3px;
            border-color: rgba(59,130,246,0.6);
        }

        /* Responsive tweaks */
        @media (max-width: 480px) {
            .container { padding: 22px; border-radius: 10px; }
            h1 { font-size: 1.6rem; }
            .btn { min-width: 140px; padding: 10px 14px; font-size: 0.95rem; }
            .subtitle { font-size: 0.95rem; margin-bottom: 18px; }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>BookHub</h1>
        <p class="subtitle">Manage Your Book Collection</p>
        <div class="button-group">
            <a href="${pageContext.request.contextPath}/books/addBook" class="btn">
                Add New Book
            </a>
            <a href="${pageContext.request.contextPath}/books/viewBooks" class="btn">
                View All Books
            </a>
        </div>
    </div>
</body>
</html>
