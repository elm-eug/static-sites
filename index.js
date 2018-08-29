
const elmStaticHtml = require('elm-static-html-lib').elmStaticHtml,
      fs = require('fs'),
      model = { name: "Nathan", age : 27 },
      options = { model : model, decoder: "Main.decodeModel" };

elmStaticHtml(process.cwd(), "Main.view", options)
.then((generatedHtml) => {
    fs.writeFileSync("static.html", generatedHtml);
});