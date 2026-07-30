$pages = @(
    @{ file="about.html"; title="About Us | Atman NextGen"; meta="Learn about Atman NextGen LLP, a premier enterprise software and digital transformation company."; hero="Our Story"; subtitle="Engineering the future, one enterprise at a time."; content="<h2>Mission & Vision</h2><p>Our mission is to empower global enterprises with scalable, secure, and intelligent technology solutions. We envision a future where digital transformation is seamless and accessible to every forward-thinking organization.</p><h2>Our Core Values</h2><ul><li>Innovation First</li><li>Enterprise Quality</li><li>Agile Delivery</li><li>Client Success</li></ul>" },
    @{ file="mission-vision.html"; title="Mission & Vision | Atman NextGen"; meta="Our mission and vision for the future of technology."; hero="Mission & Vision"; subtitle="Driving innovation globally."; content="<h2>Our Mission</h2><p>To deliver world-class software engineering and AI solutions that solve complex enterprise challenges.</p><h2>Our Vision</h2><p>To be the most trusted technology partner for Fortune 500 companies and visionary startups alike.</p>" },
    @{ file="leadership.html"; title="Leadership | Atman NextGen"; meta="Meet the leadership team at Atman NextGen LLP."; hero="Our Leadership"; subtitle="Guided by experience and vision."; content="<h2>Executive Team</h2><p>Our leadership brings decades of experience from top-tier technology firms, driving our commitment to excellence and innovation.</p>" },
    @{ file="services.html"; title="Enterprise Services | Atman NextGen"; meta="Explore our comprehensive suite of enterprise technology services."; hero="Our Services"; subtitle="End-to-end digital transformation solutions."; content="<div class='grid grid-cols-2 gap-6'><div class='card card-glass'><h3>Custom Software Development</h3><p>Bespoke applications built on microservices for high performance.</p></div><div class='card card-glass'><h3>Cloud Infrastructure</h3><p>AWS, Azure, and Google Cloud migrations and serverless architectures.</p></div><div class='card card-glass'><h3>AI & Machine Learning</h3><p>Predictive analytics and generative AI integration.</p></div><div class='card card-glass'><h3>Cyber Security</h3><p>Enterprise-grade security audits and implementation.</p></div></div>" },
    @{ file="technologies.html"; title="Technologies | Atman NextGen"; meta="Discover the modern technologies we use to build scalable systems."; hero="Technology Stack"; subtitle="Powered by the latest innovations."; content="<div class='grid grid-cols-3 gap-6'><div class='card text-center'><h3>.NET & C#</h3></div><div class='card text-center'><h3>React & Next.js</h3></div><div class='card text-center'><h3>Node.js</h3></div><div class='card text-center'><h3>Python & AI</h3></div><div class='card text-center'><h3>Docker & K8s</h3></div><div class='card text-center'><h3>AWS & Azure</h3></div></div>" },
    @{ file="industries.html"; title="Industries | Atman NextGen"; meta="We serve a wide range of industries including Finance, Healthcare, and Retail."; hero="Industries We Serve"; subtitle="Tailored solutions for every sector."; content="<div class='grid grid-cols-2 gap-6'><div class='card'><h3>Finance & Fintech</h3><p>Secure banking solutions and blockchain integrations.</p></div><div class='card'><h3>Healthcare</h3><p>HIPAA-compliant platforms and telemedicine apps.</p></div><div class='card'><h3>Retail & E-Commerce</h3><p>Scalable online platforms with AI-driven recommendations.</p></div><div class='card'><h3>Education</h3><p>EdTech platforms and scalable learning management systems.</p></div></div>" },
    @{ file="portfolio.html"; title="Portfolio & Case Studies | Atman NextGen"; meta="View our successful enterprise projects and case studies."; hero="Our Portfolio"; subtitle="Delivering excellence across the globe."; content="<div class='grid grid-cols-2 gap-6'><div class='card card-glass'><h3>Enterprise ERP</h3><p>A global logistics company required a massive ERP overhaul. We delivered a .NET Core and React based solution that increased efficiency by 40%.</p></div><div class='card card-glass'><h3>AI Healthcare Platform</h3><p>Built a predictive analytics platform for a major hospital network using Python and TensorFlow.</p></div></div>" },
    @{ file="contact.html"; title="Contact Us | Atman NextGen"; meta="Get in touch with Atman NextGen LLP for your next technology project."; hero="Get in Touch"; subtitle="We're ready to transform your business."; content="<div class='grid grid-cols-2 gap-8'><div><h2>Contact Information</h2><p>Email: <a href='mailto:atmannexus@gmail.com' class='text-gradient'>atmannexus@gmail.com</a></p><p>WhatsApp: <a href='https://wa.me/919327917771' target='_blank' class='text-gradient'>+91 9327917771</a></p><p>Business Hours: Monday - Friday, 9:00 AM - 6:00 PM</p><div class='card' style='margin-top:2rem; padding: 2rem; text-align: center;'><p><strong>Our Office Location</strong></p><p>Our office location will be updated soon.</p></div></div><div><form class='card card-glass' id='contactForm'><div class='form-group'><label class='form-label'>Name</label><input type='text' id='contactName' class='form-control' placeholder='Your Name' required></div><div class='form-group'><label class='form-label'>Email</label><input type='email' id='contactEmail' class='form-control' placeholder='you@company.com' required></div><div class='form-group'><label class='form-label'>Message</label><textarea id='contactMessage' class='form-control' rows='4' placeholder='Tell us about your project' required></textarea></div><button type='button' onclick='sendWhatsApp()' class='btn w-100' style='background: #25D366; color: white; margin-bottom: 0.5rem;'>Send via WhatsApp</button><button type='button' onclick='sendEmail()' class='btn btn-secondary w-100'>Send via Email</button></form></div></div><script>function getFormData() { const name = document.getElementById('contactName').value; const email = document.getElementById('contactEmail').value; const message = document.getElementById('contactMessage').value; if(!name || !email || !message) { alert('Please fill in all fields before sending.'); return null; } return { name, email, message }; } function sendWhatsApp() { const data = getFormData(); if(!data) return; const text = \Hello Atman NextGen,%0A%0AMy name is \ (\).%0A%0A\\; window.open(\https://wa.me/919327917771?text=\\, '_blank'); } function sendEmail() { const data = getFormData(); if(!data) return; const subject = encodeURIComponent('New Inquiry from ' + data.name); const body = encodeURIComponent(\Name: \\nEmail: \\n\nMessage:\n\\); window.location.href = \mailto:atmannexus@gmail.com?subject=\&body=\\; }</script>" },
    @{ file="404.html"; title="Page Not Found | Atman NextGen"; meta="The page you are looking for does not exist."; hero="404 - Not Found"; subtitle="The page you are looking for has been moved or doesn't exist."; content="<div class='text-center'><a href='index.html' class='btn btn-primary'>Return Home</a></div>" },
    @{ file="privacy/index.html"; title="Privacy Policy | Atman NextGen"; meta="Privacy Policy of Atman NextGen LLP."; hero="Privacy Policy"; subtitle="Your data privacy is important to us."; content="<h2>Data Collection</h2><p>We respect your privacy and are committed to protecting your personal data. We only collect information that you voluntarily provide to us via email (atmannexus@gmail.com) or contact forms.</p>" },
    @{ file="terms/index.html"; title="Terms of Service | Atman NextGen"; meta="Terms of Service for Atman NextGen LLP."; hero="Terms of Service"; subtitle="Please read our terms carefully."; content="<h2>Usage Terms</h2><p>By accessing our website, you agree to be bound by these terms of service and comply with all applicable laws and regulations.</p>" }
)

$header = @"
<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{TITLE}}</title>
    <meta name="description" content="{{META}}">
    
    <!-- Open Graph / Twitter -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="{{TITLE}}">
    <meta property="og:description" content="{{META}}">
    <meta name="twitter:card" content="summary_large_image">
    
    
    <link rel="stylesheet" href="assets/css/variables.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/layout.css">
    <link rel="stylesheet" href="assets/css/components.css">
    <link rel="stylesheet" href="assets/css/animations.css">
</head>
<body>
    <header class="navbar">
        <div class="container">
            <a href="index.html" class="navbar-brand">
                <svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" stroke="currentColor" stroke-width="2" stroke-linejoin="round" fill="none"/></svg>
                Atman NextGen
            </a>
            <nav class="nav-links">
                <a href="about.html" class="nav-link">About</a>
                <a href="services.html" class="nav-link">Services</a>
                <a href="industries.html" class="nav-link">Industries</a>
                <a href="technologies.html" class="nav-link">Technologies</a>
                <a href="portfolio.html" class="nav-link">Portfolio</a>
                <a href="blog/index.html" class="nav-link">Insights</a>
            </nav>
            <div class="nav-actions">
                <button class="theme-toggle" aria-label="Toggle Dark Mode">
                    <svg fill="none" stroke="currentColor" viewBox="0 0 24 24" width="24" height="24"></svg>
                </button>
                <a href="contact.html" class="btn btn-primary btn-sm nav-links">Get in Touch</a>
                <button class="mobile-menu-btn" aria-label="Open Menu">
                    <svg fill="none" stroke="currentColor" viewBox="0 0 24 24" width="24" height="24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path></svg>
                </button>
            </div>
        </div>
    </header>

    <div class="mobile-menu">
        <nav class="mobile-nav-links">
            <a href="about.html" class="mobile-nav-link">About</a>
            <a href="services.html" class="mobile-nav-link">Services</a>
            <a href="industries.html" class="mobile-nav-link">Industries</a>
            <a href="technologies.html" class="mobile-nav-link">Technologies</a>
            <a href="portfolio.html" class="mobile-nav-link">Portfolio</a>
            <a href="blog/index.html" class="mobile-nav-link">Insights</a>
            <a href="contact.html" class="mobile-nav-link">Get in Touch</a>
        </nav>
    </div>

    <!-- Page Hero -->
    <section class="section section-bg-alt animate-fade-in" style="padding-top: calc(var(--spacing-24) + var(--header-height));">
        <div class="container text-center">
            <h1 class="animate-fade-up">{{HERO}}</h1>
            <p class="animate-fade-up delay-100" style="font-size: var(--text-xl);">{{SUBTITLE}}</p>
        </div>
    </section>

    <!-- Page Content -->
    <section class="section">
        <div class="container container-sm">
            {{CONTENT}}
        </div>
    </section>
"@

$footer = @"
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand">
                    <a href="index.html" class="navbar-brand">Atman NextGen</a>
                    <p class="footer-desc">Enterprise software engineering and digital transformation solutions for global businesses.</p>
                    <a href="mailto:atmannexus@gmail.com" class="text-gradient">atmannexus@gmail.com</a>
                </div>
                <div>
                    <h4 class="footer-heading">Services</h4>
                    <nav class="footer-links">
                        <a href="services.html" class="footer-link">Custom Software</a>
                        <a href="services.html" class="footer-link">Cloud Solutions</a>
                        <a href="services.html" class="footer-link">AI & ML</a>
                        <a href="services.html" class="footer-link">DevOps</a>
                    </nav>
                </div>
                <div>
                    <h4 class="footer-heading">Company</h4>
                    <nav class="footer-links">
                        <a href="about.html" class="footer-link">About Us</a>
                        <a href="blog/index.html" class="footer-link">Blog</a>
                        <a href="contact.html" class="footer-link">Contact</a>
                    </nav>
                </div>
                <div>
                    <h4 class="footer-heading">Legal</h4>
                    <nav class="footer-links">
                        <a href="privacy/index.html" class="footer-link">Privacy Policy</a>
                        <a href="terms/index.html" class="footer-link">Terms of Service</a>
                    </nav>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 Atman NextGen LLP. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="assets/js/main.js"></script>
</body>
</html>
"@

foreach ($p in $pages) {
    $content = $header -replace '\{\{TITLE\}\}', $p.title -replace '\{\{META\}\}', $p.meta -replace '\{\{HERO\}\}', $p.hero -replace '\{\{SUBTITLE\}\}', $p.subtitle -replace '\{\{CONTENT\}\}', $p.content
    $content += $footer
    
    $filePath = "D:\Projects\Naleen\AtmanNextGenWeb\" + $p.file
    # Ensure directory exists
    $dir = Split-Path $filePath
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
    
    Set-Content -Path $filePath -Value $content -Encoding UTF8
    Write-Host "Created $($p.file)"
}

Write-Host "Site generation complete!"




