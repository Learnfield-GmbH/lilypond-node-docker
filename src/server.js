const http = require('http');
const fs = require('fs');
const { execSync } = require("child_process");

let svg;
try {
    let stdout;
    const lilyCommand = 'lilypond -dbackend=svg -o 1224_score ./1224_score.ly 2>&1';
    try {
        stdout = execSync(lilyCommand, { encoding: "utf8" });
    } catch (err) {
        // exit with an error when lilypond failed to execute.
        console.error("Lilypond command could not be executed.");
        throw new Error(err);
    }
    // console.log(typeof(stdout));
    const regex = /[.]{3}/g;
    svg = fs.readFileSync('./1224_score.svg', 'utf8');

    const html = `
<html>
  <head></head>
  <body>
    <h1>DEMO</h1>
    <h2>Lilypond output</h2>
    <p>${stdout.replace(regex, '<br/>')}</p>
    <h2>Score SVG</h2>
    ${svg}
  </body>
</html>
`;
    //create a server object:
    http.createServer(function (req, res) {
	res.writeHead(200, {'Content-Type': 'text/html'});
	res.write(html);
	res.end(); //end the response
    }).listen(8080); //the server object listens on port 8080

    fs.unlinkSync('./1224_score.svg');
    
} catch (err) {
    console.error(err);
    return;
}


