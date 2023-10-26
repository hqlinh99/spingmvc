<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/commons/taglib.jsp" %>
<html>
<head>
    <title>Trang chủ - Website bán sách</title>
</head>
<body>
<div class="grid grid-cols-[1fr_5fr] m-auto w-[1280px] gap-4">
    <aside id="default-sidebar"
           class="w-64 h-screen transition-transform -translate-x-full sm:translate-x-0"
           aria-label="Sidebar">
        <div class="px-3 py-4 overflow-y-auto bg-white rounded">
            <ul class="space-y-2 font-medium">
                <li>
                    <div href="#"
                         class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white">
                        <svg class="w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400"
                             aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                             viewBox="0 0 22 21">
                            <path d="M16.975 11H10V4.025a1 1 0 0 0-1.066-.998 8.5 8.5 0 1 0 9.039 9.039.999.999 0 0 0-1-1.066h.002Z"/>
                            <path d="M12.5 0c-.157 0-.311.01-.565.027A1 1 0 0 0 11 1.02V10h8.975a1 1 0 0 0 1-.935c.013-.188.028-.374.028-.565A8.51 8.51 0 0 0 12.5 0Z"/>
                        </svg>
                        <span class="ml-3 text-lg">Danh mục sản phẩm</span>
                    </div>
                </li>
                <li>
                    <a href="#"
                       class="block p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                        <span class="flex-1 ml-3 whitespace-nowrap">Kanban</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    <div class="grid gap-y-4 auto-rows-min">
        <img class="w-full rounded"
             src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-sale-linkedin-banner-design-template-e4d1967a1630ea260de9d7fe2268f0c9_screen.jpg?ts=1634573581"
             alt="">
        <ul class="flex gap-5 bg-white rounded p-3 text-sm">
            <li>
                <a class="p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
                   href="/trang-chu?sort=default">
                    <span class="whitespace-nowrap">Phổ Biến</span>
                </a>
            </li>
            <li>
                <a class="p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
                   href="/trang-chu?sort=top_seller">
                    <span class="whitespace-nowrap">Bán Chạy</span>
                </a>
            </li>
            <li>
                <a class="p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
                   href="/trang-chu?sort=hang-moi">
                    <span class="whitespace-nowrap">Hàng Mới</span>
                </a>
            </li>
            <li>
                <a class="p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
                   href="/trang-chu?sort=price,asc">
                    <span class="whitespace-nowrap">Giá Thấp Đến Cao</span>
                </a>
            </li>
            <li>
                <a class="p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700"
                   href="/trang-chu?sort=price,desc">
                    <span class="whitespace-nowrap">Giá Cao Đến Thấp</span>
                </a>
            </li>
        </ul>
        <div class="grid grid-cols-4 gap-4 mb-4">
            <c:forEach var="item" items="${products}">
                <div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                    <c:forEach var="bienThe" items="${item.bienTheList}" begin="0" end="0">
                        <a href="/product/${item.url}?variant=${bienThe.id}">
                            <img class="rounded-t-lg"
                                 src="https://americastarbooks.com/wp-content/uploads/2018/11/noi-dung-sach-dac-nhan-tam-1280x720.jpg"
                                 alt=""/>
                        </a>
                    </c:forEach>
                    <div class="p-2">
                        <c:forEach var="bienThe" items="${item.bienTheList}" begin="0" end="0">
                            <a href="/product/${item.url}?variant=${bienThe.id}">
                                <h5 class="text-sm h-[40px] mb-1 tracking-tight text-gray-900 dark:text-white">${item.tenSanPham}</h5>
                            </a>
                        </c:forEach>
                        <div class="flex items-center space-x-1 mb-4">
                            <svg class="w-3 h-3 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                 fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-3 h-3 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                 fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-3 h-3 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                 fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-3 h-3 text-yellow-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                 fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                            <svg class="w-3 h-3 text-gray-300 dark:text-gray-500" aria-hidden="true"
                                 xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                            </svg>
                        </div>
                        <div class="flex gap-2">
                            <p class="text-xl font-extrabold mb-3 text-gray-700 dark:text-gray-400">
                                <c:forEach var="bienThe" items="${item.bienTheList}" begin="0" end="0">
                                    ${bienThe.giaBan}
                                    <sup class="font-normal text-base">đ</sup>
                                </c:forEach>
                            </p>
                            <span class="text-xs">-20%</span>
                        </div>
                        <hr class="rounded mb-2">
                        <p class="text-[12px] text-center">Giao chiều chủ nhật...</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</div>
</body>
</html>
