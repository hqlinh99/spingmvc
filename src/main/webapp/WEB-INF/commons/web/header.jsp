<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="mb-4">
    <nav class="bg-white border-gray-200 px-4 lg:px-6 py-2.5 dark:bg-gray-800">
        <div class="grid grid-cols-[2fr_5fr_2fr] justify-between items-center mx-auto max-w-screen-xl">
            <a href="/trang-chu" class="flex items-center">
                <img src="https://i.pinimg.com/564x/72/e1/a5/72e1a5c18df81e70094985ef24f5d437.jpg"
                     class="mr-3 h-6 sm:h-9" alt="Flowbite Logo"/>
                <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">BBook</span>
            </a>
            <form class="m-0">
                <label for="default-search" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                        <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                             xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                        </svg>
                    </div>
                    <input type="search" id="default-search"
                           class="block w-full p-2 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                           placeholder="Nhập từ khoá muốn tìm kiếm..." required>
                    <button type="submit"
                            class="text-white absolute right-1 bottom-[3px] bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-1.5 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        Tìm kiếm
                    </button>
                </div>
            </form>

            <div class="flex items-center justify-end lg:order-2">
                <a href="../login"
                   class="text-gray-800 dark:text-white hover:bg-gray-50 focus:ring-1 focus:ring-gray-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">Đăng
                    nhập</a>
                <a href="../register"
                   class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Đăng
                    ký</a>
            </div>
        </div>
    </nav>
</header>