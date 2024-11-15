<body class="bg-gradient-to-br from-purple-100 to-blue-200 min-h-screen">
    <div class="container mx-auto px-4 py-12 md:py-24">
        <div class="flex flex-col md:flex-row items-center justify-between">
            <div class="w-full md:w-1/2 mb-12 md:mb-0">
                <h1
                    class="text-4xl md:text-6xl font-bold leading-tight mb-6 text-transparent bg-clip-text bg-gradient-to-r from-purple-600 to-blue-600">
                    Discover Our <span id="changingText" class="inline-block">New Arrivals</span>
                </h1>
                <p class="text-lg mb-8 text-gray-700 max-w-lg">
                    Explore our latest products and find something special for yourself or your loved ones.
                    Our collection is constantly updated to bring you the best in fashion and style.
                </p>
                <a href="customer-login.php"
                    class="group relative inline-flex items-center justify-center overflow-hidden rounded-full p-4 px-6 py-3 font-medium text-indigo-600 shadow-xl transition duration-300 ease-out">
                    <span
                        class="absolute inset-0 h-full w-full bg-gradient-to-br from-blue-600 via-purple-600 to-pink-700"></span>
                    <span
                        class="ease absolute bottom-0 right-0 mb-32 mr-4 block h-64 w-64 origin-bottom-left translate-x-24 rotate-45 transform rounded-full bg-pink-500 opacity-30 transition duration-500 group-hover:rotate-90"></span>
                    <span class="relative text-white text-lg font-semibold">Shop Now</span>
                </a>
            </div>
            <div class="w-full md:w-1/2 relative">
                <div
                    class="absolute inset-0 bg-gradient-to-r from-purple-400 to-blue-500 rounded-2xl transform -rotate-6 scale-105 opacity-20">
                </div>
                <img src="./images/hero.png" alt="Hero Image" class="rounded-2xl w-5/6 mx-auto relative z-10 shadow-2xl"
                    id="heroImage">
                <div
                    class="absolute -bottom-4 -right-4 bg-yellow-400 w-24 h-24 rounded-full flex items-center justify-center text-white font-bold text-xl transform rotate-12 shadow-lg">
                    New!
                </div>
            </div>
        </div>
    </div>

    <script>
        gsap.registerPlugin(TextPlugin);

        // Animate the hero image
        gsap.from("#heroImage", {
            duration: 1.5,
            scale: 0.8,
            opacity: 0,
            rotation: -15,
            ease: "power3.out"
        });

        // Animate the "New!" badge
        gsap.from(".absolute.bg-yellow-400", {
            duration: 1,
            scale: 0,
            rotation: 180,
            ease: "elastic.out(1, 0.3)",
            delay: 0.5
        });

        // Continuous text animation
        const textOptions = ["New Arrivals", "Best Sellers", "Limited Edition", "Trending Now"];
        let currentIndex = 0;

        function animateText() {
            gsap.to("#changingText", {
                duration: 0.5,
                opacity: 0,
                y: 20,
                onComplete: () => {
                    currentIndex = (currentIndex + 1) % textOptions.length;
                    gsap.to("#changingText", {
                        duration: 0.5,
                        text: textOptions[currentIndex],
                        opacity: 1,
                        y: 0
                    });
                }
            });
        }

        // Initial text animation
        gsap.to("#changingText", {
            duration: 0.5,
            text: textOptions[0],
            opacity: 1,
            y: 0
        });

        // Repeat text animation every 3 seconds
        setInterval(animateText, 3000);

        // Animate the gradient background of the "Shop Now" button
        gsap.to(".group .absolute.inset-0", {
            backgroundPosition: "200% 0",
            repeat: -1,
            duration: 8,
            ease: "linear"
        });
    </script>
</body>