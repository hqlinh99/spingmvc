<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${product.sanPham.tenSanPham} - ${product.tenBienThe}</title>
</head>
<body>


<div class="max-w-7xl mx-auto mb-4 sm:px-6 lg:px-8">
    <div class="flex items-center space-x-2 text-gray-400 text-sm">
        <a href="/trang-chu" class="hover:underline hover:text-gray-600">Trang chủ</a>
        <span>
            <svg class="h-5 w-5 leading-none text-gray-300" xmlns="http://www.w3.org/2000/svg" fill="none"
                 viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/>
            </svg>
        </span>
        <a href="#" class="hover:underline hover:text-gray-600">Electronics</a>
        <span>
            <svg class="h-5 w-5 leading-none text-gray-300" xmlns="http://www.w3.org/2000/svg" fill="none"
                 viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"/>
            </svg>
        </span>
        <span>Headphones</span>
    </div>
</div>
<div class="max-w-7xl mx-auto mb-4 sm:px-6 lg:px-8">
    <div class="grid grid-cols-[3fr_4fr_2fr] md:flex-row -mx-4 gap-2">
        <div class="md:flex-1 p-2 bg-white rounded-xl">
            <div x-data="{ image: 1 }" x-cloak>
                <div class="h-64 md:h-80 rounded-lg bg-gray-100 mb-4">
                    <div x-show="image === 1"
                         class="h-64 md:h-80 rounded-lg bg-gray-100 mb-4 flex items-center justify-center">
                        <span class="text-5xl">1</span>
                    </div>

                    <div x-show="image === 2"
                         class="h-64 md:h-80 rounded-lg bg-gray-100 mb-4 flex items-center justify-center">
                        <span class="text-5xl">2</span>
                    </div>

                    <div x-show="image === 3"
                         class="h-64 md:h-80 rounded-lg bg-gray-100 mb-4 flex items-center justify-center">
                        <span class="text-5xl">3</span>
                    </div>

                    <div x-show="image === 4"
                         class="h-64 md:h-80 rounded-lg bg-gray-100 mb-4 flex items-center justify-center">
                        <span class="text-5xl">4</span>
                    </div>
                </div>

                <div class="flex -mx-2 mb-4">
                    <template x-for="i in 4">
                        <div class="flex-1 px-2">
                            <button x-on:click="image = i"
                                    :class="{ 'ring-2 ring-indigo-300 ring-inset': image === i }"
                                    class="focus:outline-none w-full rounded-lg h-24 md:h-32 bg-gray-100 flex items-center justify-center">
                                <span x-text="i" class="text-2xl"></span>
                            </button>
                        </div>
                    </template>
                </div>
            </div>
        </div>
        <div class="md:flex-1 p-4 bg-white rounded-xl">
            <h2 class="mb-2 leading-tight tracking-tight font-bold text-gray-800 text-2xl md:text-3xl">${product.sanPham.tenSanPham}
                - ${product.tenBienThe}</h2>
            <div class="flex items-center gap-5">
                <div class="flex items-center space-x-1">
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
                <span class="text-xs">Đã bán 100</span>
            </div>
            <div class="flex items-center space-x-4 my-4">
                <div>
                    <div class="rounded-lg bg-gray-100 flex py-2 px-3">
                                <span class="font-bold text-indigo-600 text-3xl">
                                    ${product.giaBan}
                                </span>
                        <span class="text-indigo-400 mr-1 mt-1">đ</span>
                    </div>
                </div>
                <div class="flex-1">
                    <p class="text-green-500 text-xl font-semibold">Save 12%</p>
                    <p class="text-gray-400 text-sm">Inclusive of all Taxes.</p>
                </div>
            </div>

            <p class="text-gray-500 mb-4">${product.sanPham.moTaNgan}</p>
            <div class="flex gap-2">
                <c:if test="${product.sanPham.bienTheList.size() > 1}">
                    <c:forEach var="bienThe" items="${product.sanPham.bienTheList}">
                        <a href="/product/${product.sanPham.url}?variant=${bienThe.id}">
                            <button class="text-sm border rounded-xl cursor-pointer px-4 py-1">
                                    ${bienThe.tenBienThe}</button>
                        </a>
                    </c:forEach>
                </c:if>
            </div>
            <div class="flex py-4 space-x-4">
                <div class="relative flex items-center">
                    <div class="absolute left-2 text-center block text-xs uppercase text-gray-400 tracking-wide font-semibold">
                        Qty:
                    </div>
                    <input class="p-2 w-20 text-end rounded-xl border" min="1" value="1" type="number"/>
                </div>

                <button type="button"
                        class="px-6 py-2 font-semibold rounded-xl bg-indigo-600 hover:bg-indigo-500 text-white">
                    Add to Cart
                </button>
            </div>
        </div>
        <div class="md:flex-1 p-2 bg-white rounded-xl">
        </div>
    </div>
</div>
</body>
</html>
