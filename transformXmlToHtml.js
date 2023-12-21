const libxslt = require('libxslt');
const libxmljs = libxslt.libxmljs;
const fs = require('fs');

module.exports = function transformXmlToHtml(xmlFile, xsltFile, outputHtmlFile) {
  // Read the XML and XSLT files
  const xmlString = fs.readFileSync(xmlFile, 'utf8');
  const xsltString = fs.readFileSync(xsltFile, 'utf8');

  // Parse the XML and XSLT
  const xmlDoc = libxmljs.parseXml(xmlString);
  const xsltDoc = libxmljs.parseXml(xsltString);

  // Perform the transformation
  libxslt.parse(xsltDoc, (err, stylesheet) => {
    if (err) {
      console.error('Error parsing XSLT:', err);
      return;
    }

    stylesheet.apply(xmlDoc, (err, result) => {
      if (err) {
        console.error('Error applying XSLT:', err);
        return;
      }

      // Handle multiple <html> tags
      const allHtmlElements = result.find('//html', 'http://www.w3.org/1999/xhtml');
      const combinedHtml = '<html>\n' + allHtmlElements.map(e => e.toString()).join('\n') + '\n</html>';

      // Write the result to an HTML file
      fs.writeFileSync(outputHtmlFile, combinedHtml, 'utf8');
      console.log('Transformation completed. Output written to', outputHtmlFile);
    });
  });
}