require('./node_modules/harmonize')();

var Metalsmith = require('./node_modules/metalsmith'),
    layouts    = require('./node_modules/metalsmith-layouts'),
    markdown = require('metalsmith-markdown-remarkable');
    permalinks = require('metalsmith-permalinks');
    watch = require('metalsmith-watch');
    rootPath = require('metalsmith-rootpath');
    classy = require("remarkable-classy"),

Metalsmith(__dirname)
  .use(
    watch({
      paths: {
        "${source}/*md": true,
        "${source}/styles/*css": true,

      },
      livereload: true,
    })
  )
  .source('./src')
  .destination('./tester')
  .use(markdown('full', {
    breaks: true,
    typographer: true,
    quotes: '«»‘’',
    langPrefix:   'language-'
  }))
  .use(rootPath())
  .use(layouts({
    engine: 'handlebars',
    partials: './_includes'
  }))
  .build(function(err) {
    if (err) throw err;
  });




