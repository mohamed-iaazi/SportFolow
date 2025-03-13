
<%@page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>404</title>
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>

</head>
<body>
<section class="grid w-screen h-screen">
    <div class="m-auto">
        <div class="">
            <h1
                    class="block font-black text-center text-gray-800 text-7xl sm:text-9xl">
                404
            </h1>
            <p class="text-center">
               Click here to go back to the home page
            </p>
        </div>
        <div class="flex items-center justify-center gap-4 my-2">
            <button class="px-4 py-3 border rounded-md border-gray-950">
                Signale a problem
            </button>
            <a href="/SportFlow/" class="flex items-center gap-2 text-blue-600">
            <span class="inline-block w-4 h-4">
              <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="w-full h-full fill-current"
                      viewBox="0 0 512 512">
                <path
                        d="M9.4 233.4c-12.5 12.5-12.5 32.8 0 45.3l128 128c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.3 288 480 288c17.7 0 32-14.3 32-32s-14.3-32-32-32l-370.7 0 73.4-73.4c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-128 128z" />
              </svg>
            </span>
                <span>back</span>
            </a>
        </div>
    </div>
</section>
<div
        class="absolute text-xs text-center -translate-x-1/2 bottom-4 left-1/2">
    <ul class="flex items-center gap-3">
        <li>Conditions</li>
        <li>À-propos</li>
    </ul>
    <span> &copy; 2025 SportFolow </span>
</div>

</body>
</html>