$blogs = @(
    "Latest AI Trends", "Cloud Computing", "Digital Transformation", "Cyber Security", 
    ".NET", "React", "Angular", "Business Automation", "Future of AI", 
    "Cloud Migration", "API Security", "Software Architecture", "Microservices", 
    "Mobile Development", "DevOps"
)

$header = @"
<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{TITLE}} | Insights | Atman NextGen</title>
    <meta name="description" content="Read our latest insights on {{TITLE}} and enterprise technology.">
    
    <link rel="stylesheet" href="../assets/css/variables.css">
    <link rel="stylesheet" href="../assets/css/base.css">
    <link rel="stylesheet" href="../assets/css/layout.css">
    <link rel="stylesheet" href="../assets/css/components.css">
    <link rel="stylesheet" href="../assets/css/animations.css">
</head>
<body>
    <header class="navbar">
        <div class="container">
            <a href="../index.html" class="navbar-brand">
                <svg viewBox="0 0 24 24"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" stroke="currentColor" stroke-width="2" stroke-linejoin="round" fill="none"/></svg>
                Atman NextGen
            </a>
            <nav class="nav-links">
                <a href="../about.html" class="nav-link">About</a>
                <a href="../services.html" class="nav-link">Services</a>
                <a href="../industries.html" class="nav-link">Industries</a>
                <a href="../technologies.html" class="nav-link">Technologies</a>
                <a href="../portfolio.html" class="nav-link">Portfolio</a>
                <a href="../blog/index.html" class="nav-link active">Insights</a>
            </nav>
            <div class="nav-actions">
                <button class="theme-toggle" aria-label="Toggle Dark Mode">
                    <svg fill="none" stroke="currentColor" viewBox="0 0 24 24" width="24" height="24"></svg>
                </button>
                <a href="../contact.html" class="btn btn-primary btn-sm nav-links">Get in Touch</a>
            </div>
        </div>
    </header>

    <section class="section section-bg-alt animate-fade-in" style="padding-top: calc(var(--spacing-24) + var(--header-height));">
        <div class="container container-sm text-center">
            <span class="badge badge-primary">Tech Insights</span>
            <h1 class="animate-fade-up" style="margin-top:var(--spacing-4);">{{TITLE}}</h1>
            <p class="animate-fade-up delay-100" style="color:var(--color-text-muted);">Published on July 29, 2026 â€¢ 5 min read</p>
        </div>
    </section>

    <section class="section">
        <div class="container container-sm" style="font-size: 1.125rem;">
            <p>Welcome to our comprehensive deep-dive into {{TITLE}}. In today's rapidly evolving digital landscape, enterprises must adapt to stay competitive.</p>
            <h2>Understanding the Landscape</h2>
            <p>The pace of technological innovation is accelerating. Companies that leverage modern architectures and proactive strategies surrounding {{TITLE}} will see exponential returns on their digital investments.</p>
            <h2>Enterprise Implementation</h2>
            <p>Atman NextGen LLP specializes in integrating these core concepts directly into your enterprise workflows. By focusing on robust architecture and scalable delivery, we ensure that your technology stack is future-proof.</p>
            <div class="card card-glass" style="margin-top: 2rem; border-left: 4px solid var(--color-primary);">
                <h3>Key Takeaway</h3>
                <p>Strategic adoption of {{TITLE}} paradigms is no longer optionalâ€”it is a critical imperative for sustained business growth.</p>
            </div>
        </div>
    </section>
"@

$footer = @"
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand">
                    <a href="../index.html" class="navbar-brand">Atman NextGen</a>
                    <p class="footer-desc">Enterprise software engineering and digital transformation solutions for global businesses.</p>
                    <a href="mailto:atmannexus@gmail.com" class="text-gradient">atmannexus@gmail.com</a>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 Atman NextGen LLP. All rights reserved.</p>
            </div>
        </div>
    </footer>
    <script src="../assets/js/main.js"></script>
</body>
</html>
"@

$blogIndexHtml = ""
foreach ($b in $blogs) {
    $slug = $b.ToLower() -replace " ", "-" -replace "\.", ""
    $content = $header -replace '\{\{TITLE\}\}', $b
    $content += $footer
    
    $filePath = "D:\Projects\Naleen\AtmanNextGenWeb\blog\$slug.html"
    Set-Content -Path $filePath -Value $content -Encoding UTF8
    
    $blogIndexHtml += "<a href='/blog/$slug.html' class='card card-glass'><h3>$b</h3><p>Read our latest insights on $b and how it impacts enterprise technology.</p><span class='text-gradient'>Read Article â†’</span></a>`n"
}

$blogIndexFull = $header -replace '\{\{TITLE\}\}', 'Blog & Insights' -replace '<span class="badge badge-primary">Tech Insights</span>', ''
$blogIndexFull = $blogIndexFull -replace '<p class="animate-fade-up delay-100" style="color:var(--color-text-muted);">Published on July 29, 2026 â€¢ 5 min read</p>', '<p>Explore our library of technology articles.</p>'
$blogIndexFull = $blogIndexFull -replace '(?s)<section class="section">.*?</section>', "<section class='section'><div class='container'><div class='grid grid-cols-3'>$blogIndexHtml</div></div></section>"
$blogIndexFull += $footer

Set-Content -Path "D:\Projects\Naleen\AtmanNextGenWeb\blog\index.html" -Value $blogIndexFull -Encoding UTF8

Write-Host "Blog generation complete!"


