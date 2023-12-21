const { runSqlServerQuery } = require("./db/db");
const transformXmlToHtml = require("./transformXmlToHtml");

// db den 1 kayıt oku
runSqlServerQuery("SELECT * FROM INKAERP802.dbo.IASEDIEINVOMSGQ where EINVONUMBER = 'KAF2023000000849'")
  .then(data => {
    console.log('data', data);
  }, (error) => {
    console.log('error', error);
  })

// xml e yaz files/01.xml

// xml içindeki xslt tutan tagi bul ve içini oku

// tag içeriğini base64 ile decode et

// xslt e yaz files/01.xslt

// transformXmlToHtml call et.

transformXmlToHtml('invoice.xml', 'invoice2.xslt', 'output2.html');

// html yi content library ye upload et.

// upload edilen url i dön.


