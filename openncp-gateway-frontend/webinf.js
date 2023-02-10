var fs = require('fs')
var args = process.argv.slice(2)
console.log(args)
fs.readFile('./dist/WEB-INF/web.xml', 'utf8', function (err, data) {
  if (err) {
    return console.log(err)
  }
  var result = data.replace(/\${project.version}/g, args[0])

  fs.writeFile('./dist/WEB-INF/web.xml', result, 'utf8', function (err) {
    if (err) return console.log(err)
  })
})
