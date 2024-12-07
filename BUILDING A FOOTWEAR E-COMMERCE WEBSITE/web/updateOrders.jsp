<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Users" %>
<%
    String role = null;
    if (session != null && session.getAttribute("acc") != null) {
        role = ((Users) session.getAttribute("acc")).getRole();  // Lấy role từ đối tượng user trong session
    }

    if (role == null || !"admin".equals(role)) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        return;
    }
%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sửa Đơn Hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="./css/styles.css" rel="stylesheet" />
        <link href="./css/listproducts.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="menu.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <div class="container">
                    <h1 style="text-align: center;">Sửa Đơn Hàng</h1>
                    <form action="updateOrder" method="post">   
                        <div class="mb-3 mt-3">
                            <label for="Product_id" class="modal-lable">ID:</label>
                            <input value="${order.order_id}" type="text" class="modal-input"  name="order_id" readonly>
                    </div>
                    <div class="mb-3 mt-3">
                        <label for="Product_name" class="modal-lable">Tên Khách hàng:</label>
                        <input value="${order.customer_id}" type="text" class="modal-input" name="customer_id" readonly>
                    </div>
                    <div class="mb-3 mt-3">
                        <label for="description" class="modal-lable">Ngày đặt hàng:</label>
                        <input value="${order.order_date}" type="text" class="modal-input" name="order_date" readonly>
                    </div>

                    <div class="mb-3">
                        <label for="DOB" class="modal-lable">Tổng tiền:</label>
                        <input value="${order.total_amount}" type="text" class="modal-input" name="total_amount" readonly>
                    </div>
                    <div class="mb-3 mt-3">
                        <label for="method" class="modal-lable">Phương thức thanh toán:</label>
                        <input value="${order.payment_id}" type="text" class="modal-input" name="payment_id" readonly>
                    </div>

                    <label for="status" class="modal-lable">Trạng thái:</label>
                    <select class="modal-input" name="status" required>
                        <option value="Chờ xử lý" ${order.status == 'Chờ xử lý' ? 'selected' : ''}>Chờ xử lý</option>
                        <option value="Đang giao" ${order.status == 'Đang giao' ? 'selected' : ''}>Đang giao</option>
                        <option value="Đã giao" ${order.status == 'Đã giao' ? 'selected' : ''}>Đã giao</option>
                        <option value="Hủy" ${order.status == 'Hủy' ? 'selected' : ''}>Hủy</option>
                    </select><br>


                    <button type="submit" class="btn-add-doctor">Sửa Thông Tin</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
</body>
</html>


