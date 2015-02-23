src  = "src"
dev  = "dev"
prod = "dist"

module.exports =
  browserSync:
    open: false
    server:
      baseDir: dev
  clean:
    dirs: [dev, prod]
  coffee:
    src: "#{src}/scripts/**/*.coffee"
    dest: "#{dev}/scripts"
    options:
      bare: true
  copyDev:
    dirs: ["#{src}/**", "!#{src}/{scripts,styles}{,/**}"]
    dest: dev
  copyJspmDev:
    src: ["jspm_packages{,/**}", "config.js"]
    dest: "#{dev}/scripts"
  copyProd:
    dirs: ["#{dev}/**", "!#{dev}/{scripts,styles,images}{,/**}", "!#{dev}/index.html"]
    dest: prod
  cssmin:
    src: "#{dev}/styles{,/**}"
    dest: prod
    options: {}
  dev:
    dev: dev
    src: src
  imagemin:
    src: "#{dev}/images{,/**}"
    dest: prod
    options:
      progressive: true
  indexProd:
    src: "#{dev}/index.html"
    dest: prod
    options:
      js: 'scripts/main.js'
  jsmin:
    src: "#{dev}/scripts/main"
    dest: "#{prod}/scripts/main.js"
  sass:
    src: "#{src}/styles/**/*.{sass,scss}"
    dest: "#{dev}/styles"
    autoprefixerOptions:
      browsers: ['> 1%', 'last 2 version']
    options:
      indentedSyntax: true
      imagePath: 'images'
  uglify:
    src: "#{prod}/scripts/main.js"
    dest: "#{prod}/scripts/main.js"
    options: {}