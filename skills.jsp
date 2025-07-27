<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String currentPage = request.getRequestURI().substring(request.getContextPath().length());
    String homeActive = currentPage.contains("index.jsp") || currentPage.equals("/") ? "active" : "";
    String aboutActive = currentPage.contains("about.jsp") ? "active" : "";
    String skillsActive = currentPage.contains("skills.jsp") ? "active" : "";
    String portfolioActive = currentPage.contains("portfolio.jsp") ? "active" : "";
    String contactActive = currentPage.contains("contact.jsp") ? "active" : ""; // Updated

    String profileName = "Atharv Thonge";
    String profileTitle = "Full Stack Developer";
    String profilePicPath = request.getContextPath() + "/images/profile.jpg";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atharv Thonge - My Skills</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1a1a1a;
            color: #e0e0e0;
            min-height: 100vh;
            overflow: hidden; /* Prevent scrollbars during transition */
        }

        /* --- New styles for layout and transitions --- */
        .container-wrapper {
            display: flex;
            min-height: 100vh;
            width: 100%;
            position: relative;
        }

        .main-content {
            margin-left: 280px;
            flex-grow: 1;
            padding: 40px;
            box-sizing: border-box;
            background-color: #1a1a1a;

            position: relative;
            animation-duration: 0.7s;
            animation-fill-mode: forwards;
            animation-timing-function: ease-out;
        }

        @keyframes slideInFromTop {
            from { transform: translateY(-100%); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        .slide-in-top { animation-name: slideInFromTop; }

        @keyframes slideInFromBottom {
            from { transform: translateY(100%); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        .slide-in-bottom { animation-name: slideInFromBottom; }
        /* --- End New styles for layout and transitions --- */

        .nav-links a:hover {
            background-color: #ff004f !important; color: white !important;
        }
        .nav-links a.active {
            background-color: #ff004f !important; color: white !important; box-shadow: 0 4px 15px rgba(255, 0, 79, 0.4) !important;
        }
        .skill-item:hover {
            transform: translateY(-5px) !important;
        }
        h1.skills-title::after {
            content: ''; position: absolute; left: 0; bottom: 0; width: 80px; height: 3px; background-color: #ff004f;
        }
    </style>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #1a1a1a; color: #e0e0e0; min-height: 100vh; overflow: hidden;">
    <div class="container-wrapper">
        <div style="width: 280px; background-color: #242424; padding: 20px; box-sizing: border-box; display: flex; flex-direction: column; align-items: center; position: fixed; height: 100vh; left: 0; top: 0; z-index: 100;">
            <div style="text-align: center; margin-bottom: 40px; padding-top: 20px;">
                <img src="<%= profilePicPath %>" alt="Profile Picture" style="width: 120px; height: 120px; border-radius: 50%; border: 5px solid #ff004f; object-fit: cover; margin-bottom: 15px;">
                <div style="font-size: 24px; font-weight: bold; color: #e0e0e0; margin-bottom: 5px;"><%= profileName %></div>
                <div style="font-size: 16px; color: #b0b0b0;"><%= profileTitle %></div>
            </div>
            <nav>
                <ul class="nav-links" style="list-style: none; padding: 0; margin: 0; width: 100%;">
                    <li style="margin-bottom: 15px;">
                        <a href="<%= request.getContextPath() %>/index.jsp" class="<%= homeActive %>"
                           style="display: block; background-color: #333333; color: #e0e0e0; text-decoration: none; padding: 15px 20px; border-radius: 8px; font-size: 18px; text-align: center; transition: background-color 0.3s, color 0.3s;">
                           Home
                        </a>
                    </li>
                    <li style="margin-bottom: 15px;">
                        <a href="<%= request.getContextPath() %>/about.jsp" class="<%= aboutActive %>"
                           style="display: block; background-color: #333333; color: #e0e0e0; text-decoration: none; padding: 15px 20px; border-radius: 8px; font-size: 18px; text-align: center; transition: background-color 0.3s, color 0.3s;">
                           About
                        </a>
                    </li>
                    <li style="margin-bottom: 15px;">
                        <a href="<%= request.getContextPath() %>/skills.jsp" class="<%= skillsActive %>"
                           style="display: block; background-color: #333333; color: #e0e0e0; text-decoration: none; padding: 15px 20px; border-radius: 8px; font-size: 18px; text-align: center; transition: background-color 0.3s, color 0.3s;">
                           Skills
                        </a>
                    </li>
                    <li style="margin-bottom: 15px;">
                        <a href="<%= request.getContextPath() %>/portfolio.jsp" class="<%= portfolioActive %>"
                           style="display: block; background-color: #333333; color: #e0e0e0; text-decoration: none; padding: 15px 20px; border-radius: 8px; font-size: 18px; text-align: center; transition: background-color 0.3s, color 0.3s;">
                           Portfolio
                        </a>
                    </li>
                    <li style="margin-bottom: 15px;">
                        <a href="<%= request.getContextPath() %>/contact.jsp" class="<%= contactActive %>"
                           style="display: block; background-color: #333333; color: #e0e0e0; text-decoration: none; padding: 15px 20px; border-radius: 8px; font-size: 18px; text-align: center; transition: background-color 0.3s, color 0.3s;">
                           Contact
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="main-content" style="padding: 40px; box-sizing: border-box; background-color: #1a1a1a;">
            <h1 class="skills-title" style="font-size: 3em; color: #ff004f; margin-bottom: 20px; position: relative; padding-bottom: 10px;">
                My <span style="color: #e0e0e0;">Skills</span>
            </h1>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; margin-top: 40px;">
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">Core Java</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Advanced</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">Advance Java</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Intermediate</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">Spring</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Intermediate</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">REST API</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Intermidate</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">Spring Boot</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Intermidate</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">SQL</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Advanced</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">HTML</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Advanced</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">CSS</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Intermidate</p>
                    </div>
                </div>
                <div class="skill-item" style="background-color: #2e2e2e; padding: 25px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); display: flex; align-items: center; gap: 15px; transition: transform 0.3s;">
                    <i class="fa-solid fa-graduation-cap icon" style="font-size: 2.5em; color: #ff004f;"></i>
                    <div class="text">
                        <h3 style="font-size: 1.5em; color: #e0e0e0; margin: 0 0 5px 0;">Data Structure</h3>
                        <p style="font-size: 1em; color: #b0b0b0; margin: 0;">Beginner</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Define page order - ENSURE THIS IS IDENTICAL IN ALL YOUR JSPs
        const pageOrder = {
            '/index.jsp': 1,
            '/about.jsp': 2,
            '/skills.jsp': 3,
            '/portfolio.jsp': 4,
            '/contact.jsp': 5 // Added contact page
        };

        const currentPagePath = window.location.pathname.substring(window.location.pathname.lastIndexOf('/'));
        const currentPageOrder = pageOrder[currentPagePath] || 0;

        const lastPageOrder = parseInt(sessionStorage.getItem('lastPageOrder') || '0');
        const mainContent = document.querySelector('.main-content');

        if (currentPageOrder > lastPageOrder) {
            mainContent.classList.add('slide-in-bottom');
        } else if (currentPageOrder < lastPageOrder) {
            mainContent.classList.add('slide-in-top');
        }

        sessionStorage.setItem('lastPageOrder', currentPageOrder);

        document.querySelectorAll('.nav-links a').forEach(link => {
            link.addEventListener('click', (event) => {
                const destinationPath = event.currentTarget.getAttribute('href');
                const destinationPageName = destinationPath.substring(destinationPath.lastIndexOf('/'));
                const destinationPageOrder = pageOrder[destinationPageName] || 0;

                if (destinationPageOrder === currentPageOrder) {
                     return;
                }
                sessionStorage.setItem('lastPageOrder', currentPageOrder);
            });
        });

        window.addEventListener('load', () => {
            const initialLastPageOrder = parseInt(sessionStorage.getItem('lastPageOrderOnLoad') || '0');
            if (initialLastPageOrder === 0) {
                mainContent.classList.add('slide-in-bottom');
            }
            sessionStorage.setItem('lastPageOrderOnLoad', currentPageOrder);
        });
    </script>
</body>
</html>