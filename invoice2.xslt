<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xades="http://uri.etsi.org/01903/v1.3.2#" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi ext ds xades">
  <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN="" />
  <xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" />
  <xsl:param name="SV_OutputFormat" select="'HTML'" />
  <xsl:variable name="XML" select="/" />
  <xsl:template match="/"><html>
 <head><script type="text/javascript">
                   <![CDATA[var QRCode;!function(){function a(a){this.mode=c.MODE_8BIT_BYTE,this.data=a,this.parsedData=[];
				   for(var b=[],d=0,e=this.data.length;e>d;d++){var f=this.data.charCodeAt(d);f>65536?(b[0]=240|(1835008&f)>>>18,
				   b[1]=128|(258048&f)>>>12,b[2]=128|(4032&f)>>>6,b[3]=128|63&f):f>2048?(b[0]=224|(61440&f)>>>12,b[1]=128|(4032&f)>>>6,
				   b[2]=128|63&f):f>128?(b[0]=192|(1984&f)>>>6,
				   b[1]=128|63&f):b[0]=f,this.parsedData=this.parsedData.concat(b)}
				   this.parsedData.length!=this.data.length&&(this.parsedData.unshift(191),this.parsedData.unshift(187),
				   this.parsedData.unshift(239))}function b(a,b){this.typeNumber=a,this.errorCorrectLevel=b,this.modules=null,this.moduleCount=0,this.dataCache=null,
				   this.dataList=[]}function i(a,b){if(void 0==a.length)throw new Error(a.length+"/"+b);for(var c=0;c<a.length&&0==a[c];)c++;
				   this.num=new Array(a.length-c+b);for(var d=0;d<a.length-c;d++)this.num[d]=a[d+c]}function j(a,b){this.totalCount=a,this.dataCount=b}
				   function k(){this.buffer=[],this.length=0}function m(){return"undefined"!=typeof CanvasRenderingContext2D}function n(){var a=!1,b=navigator.userAgent;return/android/i.test(b)&&(a=!0,aMat=b.toString().match(/android ([0-9]\.[0-9])/i),aMat&&aMat[1]&&(a=parseFloat(aMat[1]))),a}function r(a,b){for(var c=1,e=s(a),f=0,g=l.length;g>=f;f++){var h=0;switch(b){case d.L:h=l[f][0];break;case d.M:h=l[f][1];break;case d.Q:h=l[f][2];break;case d.H:h=l[f][3]}if(h>=e)break;c++}if(c>l.length)throw new Error("Too long data");return c}function s(a){var b=encodeURI(a).toString().replace(/\%[0-9a-fA-F]{2}/g,"a");return b.length+(b.length!=a?3:0)}a.prototype={getLength:function(){return this.parsedData.length},write:function(a){for(var b=0,c=this.parsedData.length;c>b;b++)a.put(this.parsedData[b],8)}},b.prototype={addData:function(b){var c=new a(b);this.dataList.push(c),this.dataCache=null},isDark:function(a,b){if(0>a||this.moduleCount<=a||0>b||this.moduleCount<=b)throw new Error(a+","+b);return this.modules[a][b]},getModuleCount:function(){return this.moduleCount},make:function(){this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(a,c){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var d=0;d<this.moduleCount;d++){this.modules[d]=new Array(this.moduleCount);for(var e=0;e<this.moduleCount;e++)this.modules[d][e]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(a,c),this.typeNumber>=7&&this.setupTypeNumber(a),null==this.dataCache&&(this.dataCache=b.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,c)},setupPositionProbePattern:function(a,b){for(var c=-1;7>=c;c++)if(!(-1>=a+c||this.moduleCount<=a+c))for(var d=-1;7>=d;d++)-1>=b+d||this.moduleCount<=b+d||(this.modules[a+c][b+d]=c>=0&&6>=c&&(0==d||6==d)||d>=0&&6>=d&&(0==c||6==c)||c>=2&&4>=c&&d>=2&&4>=d?!0:!1)},getBestMaskPattern:function(){for(var a=0,b=0,c=0;8>c;c++){this.makeImpl(!0,c);var d=f.getLostPoint(this);(0==c||a>d)&&(a=d,b=c)}return b},createMovieClip:function(a,b,c){var d=a.createEmptyMovieClip(b,c),e=1;this.make();for(var f=0;f<this.modules.length;f++)for(var g=f*e,h=0;h<this.modules[f].length;h++){var i=h*e,j=this.modules[f][h];j&&(d.beginFill(0,100),d.moveTo(i,g),d.lineTo(i+e,g),d.lineTo(i+e,g+e),d.lineTo(i,g+e),d.endFill())}return d},setupTimingPattern:function(){for(var a=8;a<this.moduleCount-8;a++)null==this.modules[a][6]&&(this.modules[a][6]=0==a%2);for(var b=8;b<this.moduleCount-8;b++)null==this.modules[6][b]&&(this.modules[6][b]=0==b%2)},setupPositionAdjustPattern:function(){for(var a=f.getPatternPosition(this.typeNumber),b=0;b<a.length;b++)for(var c=0;c<a.length;c++){var d=a[b],e=a[c];if(null==this.modules[d][e])for(var g=-2;2>=g;g++)for(var h=-2;2>=h;h++)this.modules[d+g][e+h]=-2==g||2==g||-2==h||2==h||0==g&&0==h?!0:!1}},setupTypeNumber:function(a){for(var b=f.getBCHTypeNumber(this.typeNumber),c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[Math.floor(c/3)][c%3+this.moduleCount-8-3]=d}for(var c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[c%3+this.moduleCount-8-3][Math.floor(c/3)]=d}},setupTypeInfo:function(a,b){for(var c=this.errorCorrectLevel<<3|b,d=f.getBCHTypeInfo(c),e=0;15>e;e++){var g=!a&&1==(1&d>>e);6>e?this.modules[e][8]=g:8>e?this.modules[e+1][8]=g:this.modules[this.moduleCount-15+e][8]=g}for(var e=0;15>e;e++){var g=!a&&1==(1&d>>e);8>e?this.modules[8][this.moduleCount-e-1]=g:9>e?this.modules[8][15-e-1+1]=g:this.modules[8][15-e-1]=g}this.modules[this.moduleCount-8][8]=!a},mapData:function(a,b){for(var c=-1,d=this.moduleCount-1,e=7,g=0,h=this.moduleCount-1;h>0;h-=2)for(6==h&&h--;;){for(var i=0;2>i;i++)if(null==this.modules[d][h-i]){var j=!1;g<a.length&&(j=1==(1&a[g]>>>e));var k=f.getMask(b,d,h-i);k&&(j=!j),this.modules[d][h-i]=j,e--,-1==e&&(g++,e=7)}if(d+=c,0>d||this.moduleCount<=d){d-=c,c=-c;break}}}},b.PAD0=236,b.PAD1=17,b.createData=function(a,c,d){for(var e=j.getRSBlocks(a,c),g=new k,h=0;h<d.length;h++){var i=d[h];g.put(i.mode,4),g.put(i.getLength(),f.getLengthInBits(i.mode,a)),i.write(g)}for(var l=0,h=0;h<e.length;h++)l+=e[h].dataCount;if(g.getLengthInBits()>8*l)throw new Error("code length overflow. ("+g.getLengthInBits()+">"+8*l+")");for(g.getLengthInBits()+4<=8*l&&g.put(0,4);0!=g.getLengthInBits()%8;)g.putBit(!1);for(;;){if(g.getLengthInBits()>=8*l)break;if(g.put(b.PAD0,8),g.getLengthInBits()>=8*l)break;g.put(b.PAD1,8)}return b.createBytes(g,e)},b.createBytes=function(a,b){for(var c=0,d=0,e=0,g=new Array(b.length),h=new Array(b.length),j=0;j<b.length;j++){var k=b[j].dataCount,l=b[j].totalCount-k;d=Math.max(d,k),e=Math.max(e,l),g[j]=new Array(k);for(var m=0;m<g[j].length;m++)g[j][m]=255&a.buffer[m+c];c+=k;var n=f.getErrorCorrectPolynomial(l),o=new i(g[j],n.getLength()-1),p=o.mod(n);h[j]=new Array(n.getLength()-1);for(var m=0;m<h[j].length;m++){var q=m+p.getLength()-h[j].length;h[j][m]=q>=0?p.get(q):0}}for(var r=0,m=0;m<b.length;m++)r+=b[m].totalCount;for(var s=new Array(r),t=0,m=0;d>m;m++)for(var j=0;j<b.length;j++)m<g[j].length&&(s[t++]=g[j][m]);for(var m=0;e>m;m++)for(var j=0;j<b.length;j++)m<h[j].length&&(s[t++]=h[j][m]);return s};for(var c={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},d={L:1,M:0,Q:3,H:2},e={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},f={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(a){for(var b=a<<10;f.getBCHDigit(b)-f.getBCHDigit(f.G15)>=0;)b^=f.G15<<f.getBCHDigit(b)-f.getBCHDigit(f.G15);return(a<<10|b)^f.G15_MASK},getBCHTypeNumber:function(a){for(var b=a<<12;f.getBCHDigit(b)-f.getBCHDigit(f.G18)>=0;)b^=f.G18<<f.getBCHDigit(b)-f.getBCHDigit(f.G18);return a<<12|b},getBCHDigit:function(a){for(var b=0;0!=a;)b++,a>>>=1;return b},getPatternPosition:function(a){return f.PATTERN_POSITION_TABLE[a-1]},getMask:function(a,b,c){switch(a){case e.PATTERN000:return 0==(b+c)%2;case e.PATTERN001:return 0==b%2;case e.PATTERN010:return 0==c%3;case e.PATTERN011:return 0==(b+c)%3;case e.PATTERN100:return 0==(Math.floor(b/2)+Math.floor(c/3))%2;case e.PATTERN101:return 0==b*c%2+b*c%3;case e.PATTERN110:return 0==(b*c%2+b*c%3)%2;case e.PATTERN111:return 0==(b*c%3+(b+c)%2)%2;default:throw new Error("bad maskPattern:"+a)}},getErrorCorrectPolynomial:function(a){for(var b=new i([1],0),c=0;a>c;c++)b=b.multiply(new i([1,g.gexp(c)],0));return b},getLengthInBits:function(a,b){if(b>=1&&10>b)switch(a){case c.MODE_NUMBER:return 10;case c.MODE_ALPHA_NUM:return 9;case c.MODE_8BIT_BYTE:return 8;case c.MODE_KANJI:return 8;default:throw new Error("mode:"+a)}else if(27>b)switch(a){case c.MODE_NUMBER:return 12;case c.MODE_ALPHA_NUM:return 11;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 10;default:throw new Error("mode:"+a)}else{if(!(41>b))throw new Error("type:"+b);switch(a){case c.MODE_NUMBER:return 14;case c.MODE_ALPHA_NUM:return 13;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 12;default:throw new Error("mode:"+a)}}},getLostPoint:function(a){for(var b=a.getModuleCount(),c=0,d=0;b>d;d++)for(var e=0;b>e;e++){for(var f=0,g=a.isDark(d,e),h=-1;1>=h;h++)if(!(0>d+h||d+h>=b))for(var i=-1;1>=i;i++)0>e+i||e+i>=b||(0!=h||0!=i)&&g==a.isDark(d+h,e+i)&&f++;f>5&&(c+=3+f-5)}for(var d=0;b-1>d;d++)for(var e=0;b-1>e;e++){var j=0;a.isDark(d,e)&&j++,a.isDark(d+1,e)&&j++,a.isDark(d,e+1)&&j++,a.isDark(d+1,e+1)&&j++,(0==j||4==j)&&(c+=3)}for(var d=0;b>d;d++)for(var e=0;b-6>e;e++)a.isDark(d,e)&&!a.isDark(d,e+1)&&a.isDark(d,e+2)&&a.isDark(d,e+3)&&a.isDark(d,e+4)&&!a.isDark(d,e+5)&&a.isDark(d,e+6)&&(c+=40);for(var e=0;b>e;e++)for(var d=0;b-6>d;d++)a.isDark(d,e)&&!a.isDark(d+1,e)&&a.isDark(d+2,e)&&a.isDark(d+3,e)&&a.isDark(d+4,e)&&!a.isDark(d+5,e)&&a.isDark(d+6,e)&&(c+=40);for(var k=0,e=0;b>e;e++)for(var d=0;b>d;d++)a.isDark(d,e)&&k++;var l=Math.abs(100*k/b/b-50)/5;return c+=10*l}},g={glog:function(a){if(1>a)throw new Error("glog("+a+")");return g.LOG_TABLE[a]},gexp:function(a){for(;0>a;)a+=255;for(;a>=256;)a-=255;return g.EXP_TABLE[a]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},h=0;8>h;h++)g.EXP_TABLE[h]=1<<h;for(var h=8;256>h;h++)g.EXP_TABLE[h]=g.EXP_TABLE[h-4]^g.EXP_TABLE[h-5]^g.EXP_TABLE[h-6]^g.EXP_TABLE[h-8];for(var h=0;255>h;h++)g.LOG_TABLE[g.EXP_TABLE[h]]=h;i.prototype={get:function(a){return this.num[a]},getLength:function(){return this.num.length},multiply:function(a){for(var b=new Array(this.getLength()+a.getLength()-1),c=0;c<this.getLength();c++)for(var d=0;d<a.getLength();d++)b[c+d]^=g.gexp(g.glog(this.get(c))+g.glog(a.get(d)));return new i(b,0)},mod:function(a){if(this.getLength()-a.getLength()<0)return this;for(var b=g.glog(this.get(0))-g.glog(a.get(0)),c=new Array(this.getLength()),d=0;d<this.getLength();d++)c[d]=this.get(d);for(var d=0;d<a.getLength();d++)c[d]^=g.gexp(g.glog(a.get(d))+b);return new i(c,0).mod(a)}},j.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],j.getRSBlocks=function(a,b){var c=j.getRsBlockTable(a,b);if(void 0==c)throw new Error("bad rs block @ typeNumber:"+a+"/errorCorrectLevel:"+b);for(var d=c.length/3,e=[],f=0;d>f;f++)for(var g=c[3*f+0],h=c[3*f+1],i=c[3*f+2],k=0;g>k;k++)e.push(new j(h,i));return e},j.getRsBlockTable=function(a,b){switch(b){case d.L:return j.RS_BLOCK_TABLE[4*(a-1)+0];case d.M:return j.RS_BLOCK_TABLE[4*(a-1)+1];case d.Q:return j.RS_BLOCK_TABLE[4*(a-1)+2];case d.H:return j.RS_BLOCK_TABLE[4*(a-1)+3];default:return void 0}},k.prototype={get:function(a){var b=Math.floor(a/8);return 1==(1&this.buffer[b]>>>7-a%8)},put:function(a,b){for(var c=0;b>c;c++)this.putBit(1==(1&a>>>b-c-1))},getLengthInBits:function(){return this.length},putBit:function(a){var b=Math.floor(this.length/8);this.buffer.length<=b&&this.buffer.push(0),a&&(this.buffer[b]|=128>>>this.length%8),this.length++}};var l=[[17,14,11,7],[32,26,20,14],[53,42,32,24],[78,62,46,34],[106,84,60,44],[134,106,74,58],[154,122,86,64],[192,152,108,84],[230,180,130,98],[271,213,151,119],[321,251,177,137],[367,287,203,155],[425,331,241,177],[458,362,258,194],[520,412,292,220],[586,450,322,250],[644,504,364,280],[718,560,394,310],[792,624,442,338],[858,666,482,382],[929,711,509,403],[1003,779,565,439],[1091,857,611,461],[1171,911,661,511],[1273,997,715,535],[1367,1059,751,593],[1465,1125,805,625],[1528,1190,868,658],[1628,1264,908,698],[1732,1370,982,742],[1840,1452,1030,790],[1952,1538,1112,842],[2068,1628,1168,898],[2188,1722,1228,958],[2303,1809,1283,983],[2431,1911,1351,1051],[2563,1989,1423,1093],[2699,2099,1499,1139],[2809,2213,1579,1219],[2953,2331,1663,1273]],o=function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){function g(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg",a);for(var d in b)b.hasOwnProperty(d)&&c.setAttribute(d,b[d]);return c}var b=this._htOption,c=this._el,d=a.getModuleCount();Math.floor(b.width/d),Math.floor(b.height/d),this.clear();var h=g("svg",{viewBox:"0 0 "+String(d)+" "+String(d),width:"100%",height:"100%",fill:b.colorLight});h.setAttributeNS("http://www.w3.org/2000/xmlns/","xmlns:xlink","http://www.w3.org/1999/xlink"),c.appendChild(h),h.appendChild(g("rect",{fill:b.colorDark,width:"1",height:"1",id:"template"}));for(var i=0;d>i;i++)for(var j=0;d>j;j++)if(a.isDark(i,j)){var k=g("use",{x:String(i),y:String(j)});k.setAttributeNS("http://www.w3.org/1999/xlink","href","#template"),h.appendChild(k)}},a.prototype.clear=function(){for(;this._el.hasChildNodes();)this._el.removeChild(this._el.lastChild)},a}(),p="svg"===document.documentElement.tagName.toLowerCase(),q=p?o:m()?function(){function a(){this._elImage.src=this._elCanvas.toDataURL("image/png"),this._elImage.style.display="block",this._elCanvas.style.display="none"}function d(a,b){var c=this;if(c._fFail=b,c._fSuccess=a,null===c._bSupportDataURI){var d=document.createElement("img"),e=function(){c._bSupportDataURI=!1,c._fFail&&_fFail.call(c)},f=function(){c._bSupportDataURI=!0,c._fSuccess&&c._fSuccess.call(c)};return d.onabort=e,d.onerror=e,d.onload=f,d.src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==",void 0}c._bSupportDataURI===!0&&c._fSuccess?c._fSuccess.call(c):c._bSupportDataURI===!1&&c._fFail&&c._fFail.call(c)}if(this._android&&this._android<=2.1){var b=1/window.devicePixelRatio,c=CanvasRenderingContext2D.prototype.drawImage;CanvasRenderingContext2D.prototype.drawImage=function(a,d,e,f,g,h,i,j){if("nodeName"in a&&/img/i.test(a.nodeName))for(var l=arguments.length-1;l>=1;l--)arguments[l]=arguments[l]*b;else"undefined"==typeof j&&(arguments[1]*=b,arguments[2]*=b,arguments[3]*=b,arguments[4]*=b);c.apply(this,arguments)}}var e=function(a,b){this._bIsPainted=!1,this._android=n(),this._htOption=b,this._elCanvas=document.createElement("canvas"),this._elCanvas.width=b.width,this._elCanvas.height=b.height,a.appendChild(this._elCanvas),this._el=a,this._oContext=this._elCanvas.getContext("2d"),this._bIsPainted=!1,this._elImage=document.createElement("img"),this._elImage.style.display="none",this._el.appendChild(this._elImage),this._bSupportDataURI=null};return e.prototype.draw=function(a){var b=this._elImage,c=this._oContext,d=this._htOption,e=a.getModuleCount(),f=d.width/e,g=d.height/e,h=Math.round(f),i=Math.round(g);b.style.display="none",this.clear();for(var j=0;e>j;j++)for(var k=0;e>k;k++){var l=a.isDark(j,k),m=k*f,n=j*g;c.strokeStyle=l?d.colorDark:d.colorLight,c.lineWidth=1,c.fillStyle=l?d.colorDark:d.colorLight,c.fillRect(m,n,f,g),c.strokeRect(Math.floor(m)+.5,Math.floor(n)+.5,h,i),c.strokeRect(Math.ceil(m)-.5,Math.ceil(n)-.5,h,i)}this._bIsPainted=!0},e.prototype.makeImage=function(){this._bIsPainted&&d.call(this,a)},e.prototype.isPainted=function(){return this._bIsPainted},e.prototype.clear=function(){this._oContext.clearRect(0,0,this._elCanvas.width,this._elCanvas.height),this._bIsPainted=!1},e.prototype.round=function(a){return a?Math.floor(1e3*a)/1e3:a},e}():function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){for(var b=this._htOption,c=this._el,d=a.getModuleCount(),e=Math.floor(b.width/d),f=Math.floor(b.height/d),g=['<table style="border:0;border-collapse:collapse;">'],h=0;d>h;h++){g.push("<tr>");for(var i=0;d>i;i++)g.push('<td style="border:0;border-collapse:collapse;padding:0;margin:0;width:'+e+"px;height:"+f+"px;background-color:"+(a.isDark(h,i)?b.colorDark:b.colorLight)+';"></td>');g.push("</tr>")}g.push("</table>"),c.innerHTML=g.join("");var j=c.childNodes[0],k=(b.width-j.offsetWidth)/2,l=(b.height-j.offsetHeight)/2;k>0&&l>0&&(j.style.margin=l+"px "+k+"px")},a.prototype.clear=function(){this._el.innerHTML=""},a}();QRCode=function(a,b){if(this._htOption={width:256,height:256,typeNumber:4,colorDark:"#000000",colorLight:"#ffffff",correctLevel:d.H},"string"==typeof b&&(b={text:b}),b)for(var c in b)
				   this._htOption[c]=b[c];"string"==typeof a&&(a=document.getElementById(a)),
				   this._android=n(),this._el=a,
				   this._oQRCode=null,this._oDrawing=new q(this._el,this._htOption),this._htOption.text&&this.makeCode(this._htOption.text)},
				   QRCode.prototype.makeCode=function(a){this._oQRCode=new b(r(a,this._htOption.correctLevel),this._htOption.correctLevel),
				   this._oQRCode.addData(a),this._oQRCode.make(),this._el.title=a,this._oDrawing.draw(this._oQRCode),this.makeImage()},
				   QRCode.prototype.makeImage=function(){"function"==typeof this._oDrawing.makeImage&&(!this._android||this._android>=3)&&this._oDrawing.makeImage()},
				   QRCode.prototype.clear=function(){this._oDrawing.clear()},QRCode.CorrectLevel=d}();]]></script></head>
 <body>
   
  <table border="0" cellpadding="0" cellspacing="0" style="border-color: blue; width: 800px;" width="800"> 
   <tbody> 
    <tr> 
     <td rowspan="1" style="width: 205px;"><img alt="" src="data:image/jpeg;base64,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ZXN0SXRlbSMiCiAgICAgICAgICAgIHhtbG5zOmlsbHVzdHJhdG9yPSJodHRwOi8vbnMuYWRvYmUuY29tL2lsbHVzdHJhdG9yLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOnBkZj0iaHR0cDovL25zLmFkb2JlLmNvbS9wZGYvMS4zLyIKICAgICAgICAgICAgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIj4KICAgICAgICAgPGRjOmZvcm1hdD5hcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wPC9kYzpmb3JtYXQ+CiAgICAgICAgIDxkYzp0aXRsZT4KICAgICAgICAgICAgPHJkZjpBbHQ+CiAgICAgICAgICAgICAgIDxyZGY6bGkgeG1sOmxhbmc9IngtZGVmYXVsdCI+QmFza8SxPC9yZGY6bGk+CiAgICAgICAgICAgIDwvcmRmOkFsdD4KICAgICAgICAgPC9kYzp0aXRsZT4KICAgICAgICAgPHhtcDpNZXRhZGF0YURhdGU+MjAyMS0wMy0wOFQxMDowMjoxOSswMzowMDwveG1wOk1ldGFkYXRhRGF0ZT4KICAgICAgICAgPHhtcDpNb2RpZnlEYXRlPjIwMjEtMDMtMDhUMTA6MDI6MTkrMDM6MDA8L3htcDpNb2RpZnlEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyMS0wMy0wOFQxMDowMTozNyswMzowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx4bXA6Q3JlYXRvclRvb2w+QWRvYmUgSWxsdXN0cmF0b3IgQ0MgMjMuMCAoV2luZG93cyk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgICAgPHhtcE1NOkluc3RhbmNlSUQ+eG1wLmlpZDozNWU5NTk2Mi1jYjQ1LWVjNDctYmNjNi02ZjlmYTczNjM4NTI8L3htcE1NOkluc3RhbmNlSUQ+CiAgICAgICAgIDx4bXBNTTpEb2N1bWVudElEPmFkb2JlOmRvY2lkOnBob3Rvc2hvcDpmNzAzYWExNC01NmVjLTFkNDEtYjljOC0wZjY2NWMwMmFhNWM8L3htcE1NOkRvY3VtZW50SUQ+CiAgICAgICAgIDx4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ+dXVpZDo1RDIwODkyNDkzQkZEQjExOTE0QTg1OTBEMzE1MDhDODwveG1wTU06T3JpZ2luYWxEb2N1bWVudElEPgogICAgICAgICA8eG1wTU06UmVuZGl0aW9uQ2xhc3M+cHJvb2Y6cGRmPC94bXBNTTpSZW5kaXRpb25DbGFzcz4KICAgICAgICAgPHhtcE1NOkRlcml2ZWRGcm9tIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4KICAgICAgICAgICAgPHN0UmVmOmluc3RhbmNlSUQ+eG1wLmlpZDo2ZmVjMDA4OS02NDJiLTA1NDgtYTI4ZS1kOGY2ZmYzNWZhNTc8L3N0UmVmOmluc3RhbmNlSUQ+CiAgICAgICAgICAgIDxzdFJlZjpkb2N1bWVudElEPnhtcC5kaWQ6NmZlYzAwODktNjQyYi0wNTQ4LWEyOGUtZDhmNmZmMzVmYTU3PC9zdFJlZjpkb2N1bWVudElEPgogICAgICAgICAgICA8c3RSZWY6b3JpZ2luYWxEb2N1bWVudElEPnV1aWQ6NUQyMDg5MjQ5M0JGREIxMTkxNEE4NTkwRDMxNTA4Qzg8L3N0UmVmOm9yaWdpbmFsRG9jdW1lbnRJRD4KICAgICAgICAgICAgPHN0UmVmOnJlbmRpdGlvbkNsYXNzPnByb29mOnBkZjwvc3RSZWY6cmVuZGl0aW9uQ2xhc3M+CiAgICAgICAgIDwveG1wTU06RGVyaXZlZEZyb20+CiAgICAgICAgIDx4bXBNTTpIaXN0b3J5PgogICAgICAgICAgICA8cmRmOlNlcT4KICAgICAgICAgICAgICAgPHJkZjpsaSByZGY6cGFyc2VUeXBlPSJSZXNvdXJjZSI+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDphY3Rpb24+c2F2ZWQ8L3N0RXZ0OmFjdGlvbj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0Omluc3RhbmNlSUQ+eG1wLmlpZDowMDQwMjJjYi05MzAzLWYxNGMtYWI0Zi0zYTc5MmMwMWJmMjI8L3N0RXZ0Omluc3RhbmNlSUQ+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDp3aGVuPjIwMjEtMDMtMDhUMTA6MDA6MDQrMDM6MDA8L3N0RXZ0OndoZW4+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDpzb2Z0d2FyZUFnZW50PkFkb2JlIElsbHVzdHJhdG9yIENDIDIzLjAgKFdpbmRvd3MpPC9zdEV2dDpzb2Z0d2FyZUFnZW50PgogICAgICAgICAgICAgICAgICA8c3RFdnQ6Y2hhbmdlZD4vPC9zdEV2dDpjaGFuZ2VkPgogICAgICAgICAgICAgICA8L3JkZjpsaT4KICAgICAgICAgICAgICAgPHJkZjpsaSByZGY6cGFyc2VUeXBlPSJSZXNvdXJjZSI+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDphY3Rpb24+c2F2ZWQ8L3N0RXZ0OmFjdGlvbj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0Omluc3RhbmNlSUQ+eG1wLmlpZDo2ZmVjMDA4OS02NDJiLTA1NDgtYTI4ZS1kOGY2ZmYzNWZhNTc8L3N0RXZ0Omluc3RhbmNlSUQ+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDp3aGVuPjIwMjEtMDMtMDhUMTA6MDE6MzcrMDM6MDA8L3N0RXZ0OndoZW4+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDpzb2Z0d2FyZUFnZW50PkFkb2JlIElsbHVzdHJhdG9yIENDIDIzLjAgKFdpbmRvd3MpPC9zdEV2dDpzb2Z0d2FyZUFnZW50PgogICAgICAgICAgICAgICAgICA8c3RFdnQ6Y2hhbmdlZD4vPC9zdEV2dDpjaGFuZ2VkPgogICAgICAgICAgICAgICA8L3JkZjpsaT4KICAgICAgICAgICAgICAgPHJkZjpsaSByZGY6cGFyc2VUeXBlPSJSZXNvdXJjZSI+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDphY3Rpb24+Y29udmVydGVkPC9zdEV2dDphY3Rpb24+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDpwYXJhbWV0ZXJzPmZyb20gYXBwbGljYXRpb24veC1waG90b3Nob3AgdG8gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcDwvc3RFdnQ6cGFyYW1ldGVycz4KICAgICAgICAgICAgICAgPC9yZGY6bGk+CiAgICAgICAgICAgICAgIDxyZGY6bGkgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6YWN0aW9uPnNhdmVkPC9zdEV2dDphY3Rpb24+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDppbnN0YW5jZUlEPnhtcC5paWQ6ZjA0YzBlYmQtYmFlNS01NzQ2LWIyZWYtY2I0Yzc2MWRlNzRiPC9zdEV2dDppbnN0YW5jZUlEPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6d2hlbj4yMDIxLTAzLTA4VDEwOjAxOjQwKzAzOjAwPC9zdEV2dDp3aGVuPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6c29mdHdhcmVBZ2VudD5BZG9iZSBJbGx1c3RyYXRvciBDQyAyMy4wIChXaW5kb3dzKTwvc3RFdnQ6c29mdHdhcmVBZ2VudD4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OmNoYW5nZWQ+Lzwvc3RFdnQ6Y2hhbmdlZD4KICAgICAgICAgICAgICAgPC9yZGY6bGk+CiAgICAgICAgICAgICAgIDxyZGY6bGkgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6YWN0aW9uPmNvbnZlcnRlZDwvc3RFdnQ6YWN0aW9uPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6cGFyYW1ldGVycz5mcm9tIGFwcGxpY2F0aW9uL3gtcGhvdG9zaG9wIHRvIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3A8L3N0RXZ0OnBhcmFtZXRlcnM+CiAgICAgICAgICAgICAgIDwvcmRmOmxpPgogICAgICAgICAgICAgICA8cmRmOmxpIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OmFjdGlvbj5zYXZlZDwvc3RFdnQ6YWN0aW9uPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6aW5zdGFuY2VJRD54bXAuaWlkOjA5YzFiNzlkLTJlMTQtYjQ0NS05ODcxLTE5YmExZjllM2Q3Nzwvc3RFdnQ6aW5zdGFuY2VJRD4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OndoZW4+MjAyMS0wMy0wOFQxMDowMTo0MCswMzowMDwvc3RFdnQ6d2hlbj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OnNvZnR3YXJlQWdlbnQ+QWRvYmUgSWxsdXN0cmF0b3IgQ0MgMjMuMCAoV2luZG93cyk8L3N0RXZ0OnNvZnR3YXJlQWdlbnQ+CiAgICAgICAgICAgICAgICAgIDxzdEV2dDpjaGFuZ2VkPi88L3N0RXZ0OmNoYW5nZWQ+CiAgICAgICAgICAgICAgIDwvcmRmOmxpPgogICAgICAgICAgICAgICA8cmRmOmxpIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OmFjdGlvbj5zYXZlZDwvc3RFdnQ6YWN0aW9uPgogICAgICAgICAgICAgICAgICA8c3RFdnQ6aW5zdGFuY2VJRD54bXAuaWlkOjM1ZTk1OTYyLWNiNDUtZWM0Ny1iY2M2LTZmOWZhNzM2Mzg1Mjwvc3RFdnQ6aW5zdGFuY2VJRD4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OndoZW4+MjAyMS0wMy0wOFQxMDowMjoxOSswMzowMDwvc3RFdnQ6d2hlbj4KICAgICAgICAgICAgICAgICAgPHN0RXZ0OnNvZnR3YXJlQWdlbnQ+QWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpPC9zdEV2dDpzb2Z0d2FyZUFnZW50PgogICAgICAgICAgICAgICAgICA8c3RFdnQ6Y2hhbmdlZD4vPC9zdEV2dDpjaGFuZ2VkPgogICAgICAgICAgICAgICA8L3JkZjpsaT4KICAgICAgICAgICAgPC9yZGY6U2VxPgogICAgICAgICA8L3htcE1NOkhpc3Rvcnk+CiAgICAgICAgIDx4bXBNTTpNYW5pZmVzdD4KICAgICAgICAgICAgPHJkZjpTZXE+CiAgICAgICAgICAgICAgIDxyZGY6bGkgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPgogICAgICAgICAgICAgICAgICA8c3RNZnM6bGlua0Zvcm0+RW1iZWRCeVJlZmVyZW5jZTwvc3RNZnM6bGlua0Zvcm0+CiAgICAgICAgICAgICAgICAgIDxzdE1mczpyZWZlcmVuY2UgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPgogICAgICAgICAgICAgICAgICAgICA8c3RSZWY6ZmlsZVBhdGg+QzpcVXNlcnNcYWRtaW5cRGVza3RvcFxLYWFuIEVsZWt0cm9tZWthbmlrIMOHYXJrbGFyLVNvbiAoVGVrIGthdG1hbikudGlmPC9zdFJlZjpmaWxlUGF0aD4KICAgICAgICAgICAgICAgICAgPC9zdE1mczpyZWZlcmVuY2U+CiAgICAgICAgICAgICAgIDwvcmRmOmxpPgogICAgICAgICAgICA8L3JkZjpTZXE+CiAgICAgICAgIDwveG1wTU06TWFuaWZlc3Q+CiAgICAgICAgIDxpbGx1c3RyYXRvcjpTdGFydHVwUHJvZmlsZT5QcmludDwvaWxsdXN0cmF0b3I6U3RhcnR1cFByb2ZpbGU+CiAgICAgICAgIDxwZGY6UHJvZHVjZXI+QWRvYmUgUERGIGxpYnJhcnkgMTAuMDE8L3BkZjpQcm9kdWNlcj4KICAgICAgICAgPHBob3Rvc2hvcDpDb2xvck1vZGU+MzwvcGhvdG9zaG9wOkNvbG9yTW9kZT4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgCjw/eHBhY2tldCBlbmQ9InciPz44QklNBDoAAAAAAP8AAAAQAAAAAQAAAAAAC3ByaW50T3V0cHV0AAAABQAAAABQc3RTYm9vbAEAAAAASW50ZWVudW0AAAAASW50ZQAAAABDbHJtAAAAD3ByaW50U2l4dGVlbkJpdGJvb2wAAAAAC3ByaW50ZXJOYW1lVEVYVAAAAAEAAAAAAA9wcmludFByb29mU2V0dXBPYmpjAAAADABQAHIAbwB2AGEAIABBAHkAYQByATEAAAAAAApwcm9vZlNldHVwAAAAAwAAAABNZCAgdHlwZQAAAAEAAAAAAABDTVlNAAAAAEludGVlbnVtAAAAAEludGUAAAAASW1nIAAAAABNcEJsYm9vbAEAOEJJTQQ7AAAAAAItAAAAEAAAAAEAAAAAABJwcmludE91dHB1dE9wdGlvbnMAAAAXAAAAAENwdG5ib29sAAAAAABDbGJyYm9vbAAAAAAAUmdzTWJvb2wAAAAAAENybkNib29sAAAAAABDbnRDYm9vbAAAAAAATGJsc2Jvb2wAAAAAAE5ndHZib29sAAAAAABFbWxEYm9vbAAAAAAASW50cmJvb2wAAAAAAEJja2dPYmpjAAAAAQAAAAAAAFJHQkMAAAADAAAAAFJkICBkb3ViQG/gAAAAAAAAAAAAR3JuIGRvdWJAb+AAAAAAAAAAAABCbCAgZG91YkBv4AAAAAAAAAAAAEJyZFRVbnRGI1JsdAAAAAAAAAAAAAAAAEJsZCBVbnRGI1JsdAAAAAAAAAAAAAAAAFJzbHRVbnRGI1B4bEB/QAAAAAAAAAAACnZlY3RvckRhdGFib29sAQAAAABQZ1BzZW51bQAAAABQZ1BzAAAAAFBnUEMAAAAATGVmdFVudEYjUmx0AAAAAAAAAAAAAAAAVG9wIFVudEYjUmx0AAAAAAAAAAAAAAAAU2NsIFVudEYjUHJjQFkAAAAAAAAAAAAQY3JvcFdoZW5QcmludGluZ2Jvb2wAAAAADmNyb3BSZWN0Qm90dG9tbG9uZwAAAAAAAAAMY3JvcFJlY3RMZWZ0bG9uZwAAAAAAAAANY3JvcFJlY3RSaWdodGxvbmcAAAAAAAAAC2Nyb3BSZWN0VG9wbG9uZwAAAAAAOEJJTQPtAAAAAAAQAfQAAAABAAEB9AAAAAEAAThCSU0EJgAAAAAADgAAAAAAAAAAAAA/gAAAOEJJTQPuAAAAAAAODVRyYW5zcGFyYW5s/Ws4QklNBBUAAAAAACAAAAAOAFQAcgBhAG4AcwBwAGEAcgBhAG4AbAExAGsAADhCSU0ENQAAAAAAEQAAAAEAAP//AAAAAAAAAGQBADhCSU0EHQAAAAAABAAAAAA4QklNA/IAAAAAAAoAAP///////wAAOEJJTQQNAAAAAAAEAAAAWjhCSU0EGQAAAAAABAAAAB44QklNA/MAAAAAAAkAAAAAAAAAAAEAOEJJTScQAAAAAAAKAAEAAAAAAAAAAThCSU0D9QAAAAAASAAvZmYAAQBsZmYABgAAAAAAAQAvZmYAAQChmZoABgAAAAAAAQAyAAAAAQBaAAAABgAAAAAAAQA1AAAAAQAtAAAABgAAAAAAAThCSU0D+AAAAAAAcAAA/////////////////////////////wPoAAAAAP////////////////////////////8D6AAAAAD/////////////////////////////A+gAAAAA/////////////////////////////wPoAAA4QklNBAAAAAAAAAIAADhCSU0EAgAAAAAAAgAAOEJJTQQwAAAAAAABAQA4QklNBC0AAAAAAAYAAQAAAAI4QklNBAgAAAAAABAAAAABAAACQAAAAkAAAAAAOEJJTQQeAAAAAAAEAAAAADhCSU0EGgAAAAADNQAAAAYAAAAAAAAAAAAAAd8AAAGdAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAABnQAAAd8AAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAQAAAAAAAG51bGwAAAACAAAABmJvdW5kc09iamMAAAABAAAAAAAAUmN0MQAAAAQAAAAAVG9wIGxvbmcAAAAAAAAAAExlZnRsb25nAAAAAAAAAABCdG9tbG9uZwAAAd8AAAAAUmdodGxvbmcAAAGdAAAABnNsaWNlc1ZsTHMAAAABT2JqYwAAAAEAAAAAAAVzbGljZQAAABIAAAAHc2xpY2VJRGxvbmcAAAAAAAAAB2dyb3VwSURsb25nAAAAAAAAAAZvcmlnaW5lbnVtAAAADEVTbGljZU9yaWdpbgAAAA1hdXRvR2VuZXJhdGVkAAAAAFR5cGVlbnVtAAAACkVTbGljZVR5cGUAAAAASW1nIAAAAAZib3VuZHNP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QWx0Pg0KCQkJPC9kYzp0aXRsZT4NCgkJPC9yZGY6RGVzY3JpcHRpb24+DQoJCTxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOmlsbHVzdHJhdG9yPSJodHRwOi8vbnMuYWRvYmUuY29tL2lsbHVzdHJhdG9yLzEuMC8iPg0KCQkJPGlsbHVzdHJhdG9yOlN0YXJ0dXBQcm9maWxlPlByaW50PC9pbGx1c3RyYXRvcjpTdGFydHVwUHJvZmlsZT4NCgkJPC9yZGY6RGVzY3JpcHRpb24+DQoJCTxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnBkZj0iaHR0cDovL25zLmFkb2JlLmNvbS9wZGYvMS4zLyI+DQoJCQk8cGRmOlByb2R1Y2VyPkFkb2JlIFBERiBsaWJyYXJ5IDEwLjAxPC9wZGY6UHJvZHVjZXI+DQoJCTwvcmRmOkRlc2NyaXB0aW9uPg0KCQk8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iPg0KCQkJPHBob3Rvc2hvcDpDb2xvck1vZGU+MzwvcGhvdG9zaG9wOkNvbG9yTW9kZT4NCgkJPC9yZGY6RGVzY3JpcHRpb24+DQoJCTxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+DQoJCQk8eG1wOkNyZWF0ZURhdGU+MjAyMS0wMy0wOFQxMDowMTozNyswMzowMDwveG1wOkNyZWF0ZURhdGU+DQoJCQk8eG1wOkNyZWF0b3JUb29sPkFkb2JlIElsbHVzdHJhdG9yIENDIDIzLjAgKFdpbmRvd3MpPC94bXA6Q3JlYXRvclRvb2w+DQoJCQk8eG1wOk1ldGFkYXRhRGF0ZT4yMDIxLTAzLTA4VDEwOjAyOjE5KzAzOjAwPC94bXA6TWV0YWRhdGFEYXRlPg0KCQkJPHhtcDpNb2RpZnlEYXRlPjIwMjEtMDMtMDhUMTA6MDI6MTkrMDM6MDA8L3htcDpNb2RpZnlEYXRlPg0KCQk8L3JkZjpEZXNjcmlwdGlvbj4NCgkJPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1sbnM6c3RNZnM9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9NYW5pZmVzdEl0ZW0jIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iPg0KCQkJPHhtcE1NOkRlcml2ZWRGcm9tIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4NCgkJCQk8c3RSZWY6ZG9jdW1lbnRJRD54bXAuZGlkOjZmZWMwMDg5LTY0MmItMDU0OC1hMjhlLWQ4ZjZmZjM1ZmE1Nzwvc3RSZWY6ZG9jdW1lbnRJRD4NCgkJCQk8c3RSZWY6aW5zdGFuY2VJRD54bXAuaWlkOjZmZWMwMDg5LTY0MmItMDU0OC1hMjhlLWQ4ZjZmZjM1ZmE1Nzwvc3RSZWY6aW5zdGFuY2VJRD4NCgkJCQk8c3RSZWY6b3JpZ2luYWxEb2N1bWVudElEPnV1aWQ6NUQyMDg5MjQ5M0JGREIxMTkxNEE4NTkwRDMxNTA4Qzg8L3N0UmVmOm9yaWdpbmFsRG9jdW1lbnRJRD4NCgkJCQk8c3RSZWY6cmVuZGl0aW9uQ2xhc3M+cHJvb2Y6cGRmPC9zdFJlZjpyZW5kaXRpb25DbGFzcz4NCgkJCTwveG1wTU06RGVyaXZlZEZyb20+DQoJCQk8eG1wTU06RG9jdW1lbnRJRD5hZG9iZTpkb2NpZDpwaG90b3Nob3A6ZjcwM2FhMTQtNTZlYy0xZDQxLWI5YzgtMGY2NjVjMDJhYTVjPC94bXBNTTpEb2N1bWVudElEPg0KCQkJPHhtcE1NOkhpc3Rvcnk+DQoJCQkJPHJkZjpTZXE+DQoJCQkJCTxyZGY6bGkgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPg0KCQkJCQkJPHN0RXZ0OmFjdGlvbj5zYXZlZDwvc3RFdnQ6YWN0aW9uPg0KCQkJCQkJPHN0RXZ0OmNoYW5nZWQ+Lzwvc3RFdnQ6Y2hhbmdlZD4NCgkJCQkJCTxzdEV2dDppbnN0YW5jZUlEPnhtcC5paWQ6MDA0MDIyY2ItOTMwMy1mMTRjLWFiNGYtM2E3OTJjMDFiZjIyPC9zdEV2dDppbnN0YW5jZUlEPg0KCQkJCQkJPHN0RXZ0OnNvZnR3YXJlQWdlbnQ+QWRvYmUgSWxsdXN0cmF0b3IgQ0MgMjMuMCAoV2luZG93cyk8L3N0RXZ0OnNvZnR3YXJlQWdlbnQ+DQoJCQkJCQk8c3RFdnQ6d2hlbj4yMDIxLTAzLTA4VDEwOjAwOjA0KzAzOjAwPC9zdEV2dDp3aGVuPg0KCQkJCQk8L3JkZjpsaT4NCgkJCQkJPHJkZjpsaSByZGY6cGFyc2VUeXBlPSJSZXNvdXJjZSI+DQoJCQkJCQk8c3RFdnQ6YWN0aW9uPnNhdmVkPC9zdEV2dDphY3Rpb24+DQoJCQkJCQk8c3RFdnQ6Y2hhbmdlZD4vPC9zdEV2dDpjaGFuZ2VkPg0KCQkJCQkJPHN0RXZ0Omluc3RhbmNlSUQ+eG1wLmlpZDo2ZmVjMDA4OS02NDJiLTA1NDgtYTI4ZS1kOGY2ZmYzNWZhNTc8L3N0RXZ0Omluc3RhbmNlSUQ+DQoJCQkJCQk8c3RFdnQ6c29mdHdhcmVBZ2VudD5BZG9iZSBJbGx1c3RyYXRvciBDQyAyMy4wIChXaW5kb3dzKTwvc3RFdnQ6c29mdHdhcmVBZ2VudD4NCgkJCQkJCTxzdEV2dDp3aGVuPjIwMjEtMDMtMDhUMTA6MDE6MzcrMDM6MDA8L3N0RXZ0OndoZW4+DQoJCQkJCTwvcmRmOmxpPg0KCQkJCQk8cmRmOmxpIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4NCgkJCQkJCTxzdEV2dDphY3Rpb24+Y29udmVydGVkPC9zdEV2dDphY3Rpb24+DQoJCQkJCQk8c3RFdnQ6cGFyYW1ldGVycz5mcm9tIGFwcGxpY2F0aW9uL3gtcGhvdG9zaG9wIHRvIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3A8L3N0RXZ0OnBhcmFtZXRlcnM+DQoJCQkJCTwvcmRmOmxpPg0KCQkJCQk8cmRmOmxpIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4NCgkJCQkJCTxzdEV2dDphY3Rpb24+c2F2ZWQ8L3N0RXZ0OmFjdGlvbj4NCgkJCQkJCTxzdEV2dDpjaGFuZ2VkPi88L3N0RXZ0OmNoYW5nZWQ+DQoJCQkJCQk8c3RFdnQ6aW5zdGFuY2VJRD54bXAuaWlkOmYwNGMwZWJkLWJhZTUtNTc0Ni1iMmVmLWNiNGM3NjFkZTc0Yjwvc3RFdnQ6aW5zdGFuY2VJRD4NCgkJCQkJCTxzdEV2dDpzb2Z0d2FyZUFnZW50PkFkb2JlIElsbHVzdHJhdG9yIENDIDIzLjAgKFdpbmRvd3MpPC9zdEV2dDpzb2Z0d2FyZUFnZW50Pg0KCQkJCQkJPHN0RXZ0OndoZW4+MjAyMS0wMy0wOFQxMDowMTo0MCswMzowMDwvc3RFdnQ6d2hlbj4NCgkJCQkJPC9yZGY6bGk+DQoJCQkJCTxyZGY6bGkgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPg0KCQkJCQkJPHN0RXZ0OmFjdGlvbj5jb252ZXJ0ZWQ8L3N0RXZ0OmFjdGlvbj4NCgkJCQkJCTxzdEV2dDpwYXJhbWV0ZXJzPmZyb20gYXBwbGljYXRpb24veC1waG90b3Nob3AgdG8gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcDwvc3RFdnQ6cGFyYW1ldGVycz4NCgkJCQkJPC9yZGY6bGk+DQoJCQkJCTxyZGY6bGkgcmRmOnBhcnNlVHlwZT0iUmVzb3VyY2UiPg0KCQkJCQkJPHN0RXZ0OmFjdGlvbj5zYXZlZDwvc3RFdnQ6YWN0aW9uPg0KCQkJCQkJPHN0RXZ0OmNoYW5nZWQ+Lzwvc3RFdnQ6Y2hhbmdlZD4NCgkJCQkJCTxzdEV2dDppbnN0YW5jZUlEPnhtcC5paWQ6MDljMWI3OWQtMmUxNC1iNDQ1LTk4NzEtMTliYTFmOWUzZDc3PC9zdEV2dDppbnN0YW5jZUlEPg0KCQkJCQkJPHN0RXZ0OnNvZnR3YXJlQWdlbnQ+QWRvYmUgSWxsdXN0cmF0b3IgQ0MgMjMuMCAoV2luZG93cyk8L3N0RXZ0OnNvZnR3YXJlQWdlbnQ+DQoJCQkJCQk8c3RFdnQ6d2hlbj4yMDIxLTAzLTA4VDEwOjAxOjQwKzAzOjAwPC9zdEV2dDp3aGVuPg0KCQkJCQk8L3JkZjpsaT4NCgkJCQkJPHJkZjpsaSByZGY6cGFyc2VUeXBlPSJSZXNvdXJjZSI+DQoJCQkJCQk8c3RFdnQ6YWN0aW9uPnNhdmVkPC9zdEV2dDphY3Rpb24+DQoJCQkJCQk8c3RFdnQ6Y2hhbmdlZD4vPC9zdEV2dDpjaGFuZ2VkPg0KCQkJCQkJPHN0RXZ0Omluc3RhbmNlSUQ+eG1wLmlpZDozNWU5NTk2Mi1jYjQ1LWVjNDctYmNjNi02ZjlmYTczNjM4NTI8L3N0RXZ0Omluc3RhbmNlSUQ+DQoJCQkJCQk8c3RFdnQ6c29mdHdhcmVBZ2VudD5BZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoV2luZG93cyk8L3N0RXZ0OnNvZnR3YXJlQWdlbnQ+DQoJCQkJCQk8c3RFdnQ6d2hlbj4yMDIxLTAzLTA4VDEwOjAyOjE5KzAzOjAwPC9zdEV2dDp3aGVuPg0KCQkJCQk8L3JkZjpsaT4NCgkJCQk8L3JkZjpTZXE+DQoJCQk8L3htcE1NOkhpc3Rvcnk+DQoJCQk8eG1wTU06SW5zdGFuY2VJRD54bXAuaWlkOjM1ZTk1OTYyLWNiNDUtZWM0Ny1iY2M2LTZmOWZhNzM2Mzg1MjwveG1wTU06SW5zdGFuY2VJRD4NCgkJCTx4bXBNTTpNYW5pZmVzdD4NCgkJCQk8cmRmOkJhZz4NCgkJCQkJPHJkZjpsaSByZGY6cGFyc2VUeXBlPSJSZXNvdXJjZSI+DQoJCQkJCQk8c3RNZnM6bGlua0Zvcm0+RW1iZWRCeVJlZmVyZW5jZTwvc3RNZnM6bGlua0Zvcm0+DQoJCQkJCQk8c3RNZnM6cmVmZXJlbmNlIHJkZjpwYXJzZVR5cGU9IlJlc291cmNlIj4NCgkJCQkJCQk8c3RSZWY6ZmlsZVBhdGg+QzpcVXNlcnNcYWRtaW5cRGVza3RvcFxLYWFuIEVsZWt0cm9tZWthbmlrIMOHYXJrbGFyLVNvbiAoVGVrIGthdG1hbikudGlmPC9zdFJlZjpmaWxlUGF0aD4NCgkJCQkJCTwvc3RNZnM6cmVmZXJlbmNlPg0KCQkJCQk8L3JkZjpsaT4NCgkJCQk8L3JkZjpCYWc+DQoJCQk8L3htcE1NOk1hbmlmZXN0Pg0KCQkJPHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD51dWlkOjVEMjA4OTI0OTNCRkRCMTE5MTRBODU5MEQzMTUwOEM4PC94bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ+DQoJCQk8eG1wTU06UmVuZGl0aW9uQ2xhc3M+cHJvb2Y6cGRmPC94bXBNTTpSZW5kaXRpb25DbGFzcz4NCgkJPC9yZGY6RGVzY3JpcHRpb24+DQoJPC9yZGY6UkRGPg0KPC94OnhtcG1ldGE+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPD94cGFja2V0IGVuZD0ndyc/Pv/bAEMAAgEBAgEBAgICAgICAgIDBQMDAwMDBgQEAwUHBgcHBwYHBwgJCwkICAoIBwcKDQoKCwwMDAwHCQ4PDQwOCwwMDP/bAEMBAgICAwMDBgMDBgwIBwgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/AABEIAOcAyAMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AP38ooooAKKKKACiiigAoozTWkwemaAB22jj1r4N/ay/4OD/AIKfsu/Fy48JW+n+LPHkui6i+meIr7QbVPsuizoWV4A8zRrcTK67WWIlVOQXDApX3gZM4+vrX8yv7ZfhJfEH7RHx302ONWuIfiH4lW3YgFlkXU5mXH44H419Zwlk+FzDEThir2ir2Wm+n4B6H7xfst/8FWvgD+2A8Nr4J+JGhya5KoJ0TVC2l6op7r9nuAjvgnG6PepPRjX54/8ABdv9q/xNr37b+n+A/C/jDxZ4Z0z4b6BG+oLoWsT6ebrUNQZZiJTCy+Z5dvDAQr52+e2MbzX5I2OmXPihFEej6hdFRvA+zEhT6gnofcHjFew/Dq1vNE8NrcaxJeS3l5KZZbm4ma4+UAJGhmywO2NEUAngAAYAxX3uD4Kw2Axf1mE3JJNcrSdm+t+ul+gR1Z6P+y1/wW9/aK/ZF12SG38ZSfEDw+t04k0bxk8mooV3nPlXO4XETdcHeyAkZRsYr9Uv2N/+Dj74G/tDtZ6T47kuvg/4ouNkYTW5PN0e4kPBEd+oCJz/AM91izkAbjkD+fnVo2stYu45kaGQzyMA4IyCxwR6j3FT+G/DN14z1uHT7Xbvm5kkK5WGP+Jz7eg7nivXzXg/LcauaUOSX80dPw2f5+ZHMz+tDwF+098Ofih471Twt4a8eeD/ABB4k0QRtf6Zp2rwXN3arJGJELxoxYBkZWBxjBFd35gz1r+Tn4haLp3ww8GaXNo3naZrWnzpHpeo2UzWt9byZ3vKssZDg8E5B4JXGOK+rP2M/wDg43+N/wCzUtrpXj2OH4yeGYRs3alcfZNbhXttuwjCUjr++RmboXGcj4PHeHmJjD2mCnz+T0fy6fe0VzW3P6HBRXzH+xD/AMFdPgj+3vFDZ+D/ABRHpvixk3SeF9b22OrjAyxjjYkTqvdoWcDjOMivpoPkV8DiMLWw83SrxcZLo1YY6igUViAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQA2Q4Q96/LX/g4g/aX+J/grxT8N/hz4M1jWvB+h+ILK78QXOs6Leta31/c2rxxx2ocFSkcfmrMwDZk+UcBDn9SGlUHbkZavzx/4OPNB0ZP2T/Aviie7hh8SeGvGtomj233ptUS6ilgu7ZB7QsZyTwPs3XnB9zhdwWaUVUjzJu1mr6taO3kw6H5r/CL/AILS/tXfBfVLfQ4fiNN4m1C0cK+l+MNJt9Rg24/1r3KCK58sjkEzFs8DPIrzXxBq2t+MPF+veI9Y1KG817xVq13rmqSparDBLd3MrSytGin5E3McDJIAHJrSm8UabejbdW8wXp++tSw/PBqutp4cvXHlT29uxPHlzmFvyOP5V+1U8Jhac3OjSjFta2S1+5FRjYybpZpzm4tYbrb/ABI3zD6A/wCNQR3Lafcebb3F1ZTN/wA9AcH1y3OR/vbvpXpPwM+DGn/F34xaH4Vl8TXGjQ+IBNBbXhgjvFW6WMyxxsuU+Vwjrw2d231r6q+D3/BJ/TdA8WSXnjnxBH4o0u1ZWtNNsrd7OG6I5zdFmZmXp8iEA85Yjg54rMqGHf716727lHxd4m+EGu6h8P8ASfEGu+AbzVPD2vQiey1OygLxzqSwHMYZVb5TwwU8HjvXe/sz/wDBM7xR8TvC66/4T1TwjpWgalMUmN5fzXV3EyYzGyLDwVyflLjnv3H6nabaQ6NYw2tjDDY2tvGscMFugijiQcBVVQAqgdAMCpHZmbczFmx1Jr52pxJWcOWmrfl93cVj8H/20/CV18Lv2hNZ8E3Oq6brMng11tZbmxDrC88kccrjDDIZQyIw5AYMMnFeVr7V+qn/AAVf/wCCecfxh024+KXg7R/tni/S4Auu6bbxbpNetI1AE0YXk3UKgcDJljXb95Fz+Ytx4e027SFrC+nka6TfBFCv2lpQem1AN3P1r7TJ8wpYjDxlF6rR+T6/eYSi2zEF42j3MGoQyz2t1p8q3Vvc28hjnt5EO5XjdcMrg8gjkGv6sP8AgnV4e+IXhb9iT4b2fxW12+8RfEH+xo59YvLxFW4DyEyJDJtUbnijdImdhucxlmJYkn+ZD4b+BPE3w78S6R40/srRby48Jahba5baTq0T3EOpPaypOkU8SOpMbFBuTepYZXIzX6zfs6f8HTOk6la28PxW+F2o6WzKDJq3hK8F/byZ53fZZvLlj+geQ9ea+T46y7F4+lTjg6fOo3batfyS626u3X0HFNbn66DpRXgP7MH/AAU8+A/7YV5b2PgP4meG9T1y4AK6JdStp+rk7ckC0uAkzY7sqsvBwTXviOHPBr8crUKtGfJWi4vs00/xLHUUUVkAUUUUAFFFFABRRRQAUUUUAFFFFAH5i/8ABdT/AIKI/Fj9mX45/DnwL8J/FFx4LvLvRL3xDqt6+i2+pQ6mvnRwQW6iaNuIyszyFCrAPFk4r80vjv8AtnfGD9rrxHot98YvEltr/wDwiMU0WjRWlpDZW6PNt82do1VQZCiqgJXIBYDgmv27/wCCwH7Mvh74+/sYeKtd1K4bRfEHwr0688YaBrcUW+XTri1tpJJI2HV4J40aKSMfeVgfvKpH4p6J+0Hfato9ndXGhLDJdQJM8a3uQhZQxHK9s45z9a/WODZYWpg4yp0l7SDacrK+uqae+2lug4pPc4NPE9u46yenBU/1zWhollceKjMunabquqfZ1DTC1sJbnyVJwC2xTtBxjJwM12M3xfhuj++8MxzfW4ib/wBCWucg/bB174W+Lm1H4cSTeDdWSGSwvr6DypVuYmxmLyypjYq4DB2BKMuBySR7WeZ9hspwcsXi3yxXnu+iS3bfY+o4T4RzPiPMI5ZlNPnqS17KKW8pPZJd/ktbH0J/wTZ/ZRm+JXxZTxxqml3Vrofgm4V7RZbZ4Df6jjcgwQCUgBWRv9ooD3B/Q3ymUfcfpnp1r8LvEnxe8Y+NdW/tDWPGPi7Ur4/8vFxrV00mfY7+Pwxiuo+GH7SnxL0XxPbw2Pijx1rkb5L6bFrV20siDkmNlYsjAA8kMvqO9fjkfFDLMyxihW5qaeibV0vWzuvxP3XPPoscT4HAyxdCtSrSiruC5k/+3XJJN+vLfproftRvxRvz6fnX5h+Gv22ta1PSorzT/HHxWt4JM4jk8S6dK0Td1dJUJBHBwf5EV0Fl/wAFAPHGjyLLD8QPEF0VIxDqdjot5C/s3lmN8epDA+9fo8ckqzip0pJp6p62a6O6vpY/mqtRqUakqVWLjKLaaas01o010a7H6OIxWRWVirqcgjgg14f4z/4JyfBvxdqd9qEfg6HQdU1KV57m80S5lsZJ5GJZmKK3lZLEnhBya5H9lT/gpJpPxm8S2vhbxZa2Xh3xFfP5VhdW0obT9UfPEYG92gkOeEdmDHgPnAPsX7Umr+JvD/7Nfj7UPBlwtl4s07QLu70uZ4hJ5c0cZfhTxv2qwUnIDFSQcEVzxpYnDVlSu4ttLy16+hi+5+bf/BRrwn4B/ZA1qHw14N8Xa5rnjSbbJdaddLBPDokDDIaeVVVvOYEFIiCSDubAK7vi2C4uIP8AV3Ey5JLcghieTwRipLia9168uNRub2S+u9Ska7uLm4LPNcyOdzSOxOWYk5JOSaimtbmONmUQyFVJABIyev6/1r9SwWF9jSUJS5n1ff8A4Bzyk2dL8J7vxpqvxb8KQ+BLW+1Hx9Hq1tP4aTTIGe+W/jkEkLRBc8qy5YnChVbcQoav60PhHf8AiLVfhj4duvF2m2mj+K7jTLeTWbG0uPtFvZ3hjUzRxyYAdVk3AMOCBXxf/wAEL/8AgnV8Nf2af2XvCnxO0aRfFXjj4laHa6rd+IrmELJZwTxrJ9htk58mJCcPyXkcEscBFT7xjjVG4r8T40z6jmGJVKjCyp3V+r7+iXRfkXFND6KKK+LKCiiigAooooAKKKKACiiigApG5FLTXGPm9qAPyO/4KXf8FuvBv7RH7MvxM+E3gLwf4+n1PxGtx4bfWby3trWwiRbnybluZjIylElUYTkt2r84kvZkwsenzKqgBRvXgDgfpX2Z/wAFKf8AgkvdfsFNq3xK03Vrjxt8KdU1kfatPluvsWteHri/uztKsq+VdW5mlwSfLkTeOHAJHyu2peGY8qng++k97nX5ev0Tiv2/h2ngaeEvgNYt3eut7K6d+q9PQqJxfi7xDd6ToUzratDNNiCJzIDsduN2B1wMn8K5LQPDN3rG6Gwt5JFtY98sjOI4reMfxyysQka+ruygeorq/jHqFjdWelw2nh/T9IJuXkMkN3PcSOBGw2nzDjHzZyBnj0rgviM+34JTIchZvElmWHZtlpfEZH/AzX5Jx9hZ59xTg+HpScIct3bXV31t3srfM/srwXx0OEvD3MeMqVJVK3PypN20jypK61teV33OlXwvZaRFa6peapY6h4fXTn1a6udPlZl8tLqW08hHKjdJJcQ+UhTKkyKwJUMQnhP4g64nga51KV4dHh8QrJZ6bpemqbeBLcbo7i5lPMkzNzBGZGfA+0EbSFz5z4q+KP8Abfwj8J+E7O2ntY9EhmOoyuw/0+4a8u54tuBlY447pgAeS8khIKqmPQvF97b69NZatpq7NB1K1QaXCP8AmH28YEYsjz9+3wI2OSXwJMnzNx8/izhWHCOR1ZYanzTr1HH2jSbp07aJPo563ato7HseHnHlbxI4rw1PNKyhSwtJT9irxjWq31bjd80YXTSbfwp9WR+CtebQPEMS+ZKltflYJVWRlUP/AAPhT6/L0PDD0rvZTO25tuocf3TcY/8AQK8p1BGayl2Eq+0lT6MOR+RA/KvSba/h1GzhmRrVftESShQYcjcARxHEx7+ua+q8GM7qYvKZ4Oq23RlZf4Xql8nf5H5/9KjhWhl3EdHNMMrLFRbl/jg7N/NNX8xmout1A0U8k21+CJLva34BgOR1HvX6i/sBftASftG/s9W93rrrqGt6BctomtGRg5vCsaOsr+vmwyDJ7ssnvX5a+IdX/wCEc0aa8kWaRVAjjUJMqyueFXJKdT3wcYPFZXwZ+NvjT9n/AMUtrvhDxLf6Jq9wwa7eIiW2v/8AYngk3RypjIG4FlGNrKea+h484oy7KoUaWLvzTelt0lu35bban5b4e+EudcZU8RVyvliqKWsm0pSe0U7PWyb7LS+5x/7Qfw0/4UR8fvHHgq4dY28L63c2MXmHaXt95e3f6NC8TD2auRF5G7DaxkPHCKW/lX6IfDn9tb4E/tN6ksPx8+Ffg+x8SXaLHJ4mXTPOsr3ChAZZF/0i2YKqgEs8ahR+8TGK98P/AASm+Anj3Sobvwrpep6XDqERls7rw34qvJLWbI+R4w8s0bKTjpx1r6PK+OMBjKEatJ8y01VmvPzXzVz4viLhXNsixTwWbUJUprpJb+aezXmm0XP+CH3/AAV1+E3wA/Yk034c/FrxfJ4P1nwrqt5b6WL/AEu9aG40+RxPE4mSFo1CvLJHtZgf3ecYINfob8Kv+CjPwB+OOs2Ol+EfjR8L9e1jU3EVrplr4ltG1C4c9FW3MglLH025r+VbVvFt95TjVNYvMRsyv512VTIbae+K+lP+CY/7IXxW+Jv7XHwo8WeGvhn4y1Dw7ofi3TdTu9bfSZbfT4raO6QyyC4lCo+1QxOwseCOtebn3BeBkquOdVwbvK11a+9lonr6s+fjK+h/T4G4pwqNDnP14qQV+PdSgooopgFFFFABRRRQAUUUUAFBbAopsi7loA+Jf+C/Pj3wzoX/AATe8ZaBq2sWNn4i8US2cfhvTmfN3qt5DeQTbIY1BZsKjFmwFUckqDX4xz2UyuzNGsK7jjzZFTA/E19sf8FY/wBi/wCKniT/AIKKeMvGGl/DP4jfE7Qdc0zTX0a905DdwaKFhMVxZxbpB5SGSMSlUADNMxNfIvh9dQ1qGVrHwvDpslrcTWU8d+gjuLaeGRo5Y5FbDK6urAgjORX7FwrRpUMBGNOopc3vPVaNpaW30t16lRR5r8VtOb+ybG43xsIbradmWxvRh1xjrgdfSuB+Jh8r4QWn/TfxCGH/AGztXH/tUV9J+JfhZrnjfw7d6de6pZ2sd0nyrHFuCOpDIc8dGVT+FeDeJvAV14t+HdhYyX2j6NNpeuXov1vrxUktmMFsoAhXM0nzLIMohGV5Ir5XOsLTwvF+CzrESUKSjKMpPRJxjJq7807Luz+jOC86q5j4aZnwthIOpiPaU5whFXlKM5wUrJauzWvZNNmE3wl0+9+ENo1jHcSeKhY/28zeYdl5asCXtY06boYUEwb7zkXIycRLR+zkmoeKGv8AQ/ss1xoN8wla/YbbXRLxVwk0kp+WONxiOUE5KFXIJiXHQ3OpLol9o/8AZN5cSf2FaW1tDdmEQmSSIcuqEthd2cBuSOqjJFR614lvvESwpdzFre1GLe1ijSC1tV67YoIwsUQz2RVBPOK+FzjxehXwmOyvF0vrEKk5ezk3ZKDemlr6WTi1bz2P2Thz6OOKw2OyvPcDiHg506cHVjZyn7VfElry2knaSbfWyd9MuacLYNKy7VWMuQR0GM816f4b0qe38PafDLd3KtHaRKY49sYB2AEEgZ9s5rzmw0hvEGp2unov/H022THO2Mcu34LkfUj1ruviR4nbQ9IW3t38u+1INHCw6wIPvyj3UEAf7TL716ng3Tjl+U4vNsU+WnJrV9oJ3f3yt6nzn0oq0864ky3hvL1z14p6L+arKKSfyjd9Enc47xjqUOteI2WFme008tFG7OX86Xo78k8Lyg/4H2Oapn3/ABpsEC28Kxou1UG1R6CiedLaB5JWWOONSzMeigdSfpX4rxTxBXzzNJ4yafvO0V2j0S/XzbfU/q3w94NwnCeQUcqo29xXnL+abV5Sb7duySWyM/xRrP8AZOmsUbFxNlIj3B7t+HX64re1j9tf4sav4H03wzB431XQfDWkWqWdppehBdLt4YkGAP3IV2J5JZmJYsSSSTXC/EOx1DQfGd9p+rW0tjfWLJC1pMMSwFkV9jL1EnzjcvVWyp6VPoXw01fXirtD/Z9u3/LS5UhseydfzxX9aeGfBlHI8oi8VFe2qWlK+ttNF8k/vbP86vHbxIlxbxFJ4aX+zULwp+evvT/7ea0/upH68/8ABrX+y74W8UfB34kfEbXvDeiaxq6eLItK0i81CwiuZrBLezileSB3UtGzyXTBipBJiX0r9gdm49/zr8Dv+CTf/BVW/wD+CbGjDwH4i0JvFXwt1LUZNQuLvTogmtaHcS7RJMI+RdwnaMxjbIo+6ZMBD+4fwM+Png39pT4caf4u8B+JNK8VeG9TB8i+sJxLGGHDRuPvRyocq8bgOjAhgCCK+S40weLjmE8TWT5JP3XurbJeTstmfjCVkdeqKg49adRRXyABRQTihW3DigAooooAKKKKACm7qVm2qT6V8Cft2f8ABwB8Nv2Nvizf+C9N8L+JfiFrPhm8Sz8TtYlbG30R2Ct5ayTgfaJtrodsYKAMMyA5A7MFl+JxlT2WFg5PyA+/CcU0y4P3TXyD+zL/AMFzv2b/ANp27tdOtfHkPg7xFcAf8SjxZbtpMu4nAVJ5P9GmY54WKVmx1Ar4m/4OG/2g5PiV+1P4D+Hek6teR6P4O8OHxHfS6ZqUkCz3d/K0VuhaJhnZDbvIM5BE6H6+jl/D2Kr4xYOrF03Zttp7Ly0v2+Yb7H7JMGzu289BkV+Hf/BTzwdp/wCzX/wUi+ImlaeFvNO8dWdl42js7Mhm0u5nDW11HLk/IZZLYzjPXzTgYHPyH+zr/wAFS/jt+xB8Q9SXwX481TUdFh1GQSaB4jlk1bS51V/uhJH8yHOOTDJGTnOc1P4z/a8h+Lut+KPip4316B/GPjzVJb2/0/T4We4Qx7YYbePeSI7eOBIlQuT8vctkV9/knCOLy7FyqSkpQlG2nVu1rrpbuClqehXfjfUplZo7eysI+fmmcysP5D9a8x+KHgOTxlPca1Y3BvtVCg3QWAJDcRoMZ3Ku1XUDGScEYBPAI7n4a6B/wtPwxY65ps2n2+n3q5SSbN9dow4ZCp2xRsp4I2sM+vWu1i+Fmk26CbUGutV8n5t2oTZhQ9sRjbEPyr1s1y3B43DywWMgpRlo1/Wz7W6n0HDnEmY5Hj6eZ5ZUcKsHo1t5prZprdPc+Qbi+ispPLnkW3YHG2VgnPX6Hr2JrpvhV8J/FHx28QrpXgzQdT8S3xYK4sYt8MGe8sxxFEOOsjKOPrj6K8QfGXw7o9kbG0VNYCDb9ltIla3Qc8FiBGPwz16V9S/8EtPiTrfif4KeJrHUpI4PDPhXU0ttGjkm3fYIGi8ySEyHAMcZKBMgbQSMkBcfjeK8G8DQbxCrTdO691pJ+nN/wPuP6YqfS4zyWC9lDBU1Wtbn5pNX78n6cx4p8Ff+CRGreDdEu9e+JXjbQ/DNvFA1xff2UpvGsbeNd7bp5VWNQoDFiqvnjngAfF/j3WtK8T+PNW1LQ7fUrbQ7iYppkeozeddpaLxGZTwokfl2VQFDMVHCgn7o/wCCvX7XVrP4YsfhX4Z1K2u11yGLVfEV1aTCRPsZO63tQ6nafOYCRwCTsRAeJOfgMnmvmfEPiJ0MLDh/B+7CKXNFaJJfDH9XfV6H3f0c+DcXmWLrcfZ+3OtVbVNy3fSc/L+WNtEr26Aa+hv+Ca37KQ/aY+Pceoava/aPBfgiSK/1VHB2X9zy1tZ59CyiWQA/6tAp4lrwPQ/D2peLtesNI0Wwl1TWNWuY7Kws42CtdTyNtRNx4XJPLHhQCTgA199ftFftCaf/AMEgP2cPCPwz8FrpOvfETWEfVb+a6RjF852T6jIikEl5I/KhVjwtuNwZUwfN8MeFamY436443jB+75y7+kVr9x9F9JbxMWSZQsgwMrV8SnzW3jS2b8nPWK8rtHM/8FKv2CLH4ZeJ9c+MnhnULDzPEd+93rOh6ncgXl3dStmSTTHc7pHLEs1sSevyEYC18m6ZqkGsW/mW7M3zsjqylHjcfeVlOCrA8EEAjBr0zwN+254V+IXiJte8YXfiFfE06+XJrGsIb2OP1SFoV2wR9flSNV9e+cD42fDW+/a/+P8A4X8G/BzRk8X+NPFFk8142kXSKl1AGCKbmTcIkSMKS0khBVSoOcqp/rDBqrQh7PFPSK+J6JJLq+y7n+dd0tUeTeNfjDa6GHh09o7q4HytKTuhiboAMffbOOBxyOc8V+5X/Bud+xn4i/Zu/ZN1zxl400/VNH8XfFbVf7Sm0+/ia3ntbK3BhtTJCQBG8g3y4wG2SRg4I2h3/BLD/ggv4I/Yjl03xt48ksvH3xWgZJ4Z2izpXhuQcgWUTDLSqf8Al4k+bIBQR85/QhFwc96/OuLeLKOLp/UcEvcuryf2rdEu3n1JV3qx1FFFfnwxHXctU9C0htEtZo2vby+8y4lnD3LKzRh3ZxGu0D5EztUHJCgAknmrtFABRRRQAE4FJuyaH+7X5mf8HHXxr+Ifg3wR8LfA/hm+vtA8KePr6/Otarpt29rfSXFnHDNbWSzLgxLJumlJBy/2bb8q5Dd+WZfLG4qGFi0nLq+llf8AQD9Mifz9K/nC/wCCjWiR+I/2+P2jbGZflufGM8eSPuk2Fngj3Bwfwrmvhx/wUv8A2oP2db6DRNH+Lvjb7bHt8i31prfWdPnhzw5a7jlMa8YYI4YHgdaw/FnibxD8T/H/AIh8YeI9aXVPFHi7UH1XVrqK1jht5rh1VcRxKMIioiKBknC5JJJJ/UeHOGcRlWInUqTUlJWTV77p9V5AtT57ttB1TVC1nJot9My5R1kiCo5HBxvwDn2616p8JPDFx4S8OTfareTzrife5jbzhbxqoVI22kldoBOCMDce1dFLHcSJ+8itblfrtP6giqzMLWdZI/tllIo4bBZV/wCBKcgewIHrX21Stzq1ioxseG+OY5LLxhqrTRzRR3F9NJE7KQsqs5IIPQ54qDw7oFx4p1uGxsVUzXHJfGViUdXYjsP1OB3r6uT4KeNfFfwp0/xZL4Jl8WeF9UeWOO9softE2Y5GjbesX7xfmQ4LJgjoe1dh+zZ/wTK174taJca94d1DQ/CFpJN9mvLTUob/AO3QOoB2GKS3RcYIOUdlJ75zU1M2o06Tc2lbTvqT7PU8W+HWs33wM1+20jw/PG1nrVtI9xFdKZEWaHbi5UAjDtv2sOhAX+6MbfiDW7rXm87WNQuL5VOQszhYV/3YxhR+RNN/aa8H6X+zN+1zqHhHV/FVreJomiiRr6LT5F2vKPPEPllj+9ZFjAOdmWAyK8Z+Hv7Q2ueBvHr68tva6pHM3z2d/GrRquflEbYzE4AA3Lwecg5pU6PtoqrDW6vfvcOZLc998J/DTXfGKqbOw+x2na5vQYY8eqpje34AD3ru9f0ux+B/wjvG1zVtU13TbeZruHR5Lgw2N7fOAqgW4O12YqozJv2qCawbD9q2X4j+HY7zw3psmniUmKWbUSsjwyDG5VRSQ2MjBYgcj5a8N+JHim48ceMJJrm9uNQXTy8Mc077jLLnEjAD5VUY2qFAH3j3zXxnF2f/ANjZbUxuItdaRj/NJ7fLv5H6F4acD1+LM/o5TRvyt805fywXxP1ey82jILSXFxNPN5P2i6laebyYxHGXbk7VHAUdAOwAFL2FBFRX0ck1nIsLLHIylQxzxng/1r+MalaeNxTq4mfvVJXlJ9Lvd9f+Af6u4fB0sqy5YfA0vcowtGEbaqK0ir2V3a3rufQv/BN/4q+CfgV8WdQ8deNtJ1i+Sysp7TQbqBI2t4J/LcysA3zNNIE+zxsAVTzJCSN2R88fFb4i61+0x8VNY8feLZ1m1LxDP532SJi0VlEvyx2yk87IlG0DgHBJ5Jr1z9lrxJoPiDWY7HxHCtv4jtAI9MjnYfYHiXAVbfoPMHdW55yvcjnv2sfhsPht8QJNat49mjeI987/APTveqC0in0DqA4/2g/tn+3ODcvy3AYSnQy6SlHlSUk7qXVteber+4/yY8Rs2zfM+IcRjc8pyp1pSd4STTilpGKT6JJJd9+p5yiCJAqBVVRhQvAWvpD/AIJJ/AT4sfF39t3wjrXwds1sb7wPqUV9rXiC4R10rTbVgVnt7l0/1jzwF0WBfmbcGO1QXHzfr2m3XhbS9Fv9Th8yy1C4hNzFaT+VcGEje6I7qwjkKAqGKsFJzg4xX7Vf8Eyv+C1X7I3gj4SaH8NdL028+A8engpHZa7F5tjdzNkvM2oxl1kkfALSXPlux4wRivQ4mxmKo4KSwtF1OZNPqkura3f3W79n8PzH6eRD5enenVi6F8QdD8UeF7fXNL1rSdR0S6AaHULW8jmtZQW2jbKpKHJOBg9eOtbAl56V+BOLTs0A6imq+6nA5pAFFGeaKACiiigBG5HNfD3/AAcI6FoV5/wTp1DVNTu4rTWPDviHStQ8OgrukvNQ+0CIWydwZYZJ0J6BSxPAJrhv+C+37ZvxM/Zzj+Enhf4Z+Ide8F6l4uvdQvrnWtPsYrnzVtIE2WYEqOpZ2m8wpjJSBj2Nfll8af2tPjx+01Po1n8ZPG2peNdI8JyyXmjwPpcGnItzInlmeRIbeIO6R7lUvv2+Y+04Y5+64Y4axFWdHMFNKKle2vNo+1ra2tvsGpXfxjayllmtL1UyeGiEi/jgmqkk3hm9PItbdz/0ye3P54A/nWKPFEKL80ci/Qr/AFIrX8H6VqfxFvpbPQdH1jXLqGIzywWFm9y8cYIBcqmTtywGfcV+pcqSu9PmaJdjovhZ8PvD/jv4q+GtFvvEF9pel65fLp0l3bSx3D28kqlYG2yA5UzeWpBI4bquM19gfDP/AIJOaD4a8arfeKvFFz4t0e2+aDTRYf2ety/P/HwRI5ZRwdilcnqcDafIf2DP2L9W+Jnxpi1rxV4Z1bS/Dvg+SO7MepaZLayale53QRKJFUsiEeY5GQSqrzuOP0We3ljb5kkDHk5U818xnGZThU9lQn012/4f1Ar6Vp1voGn29pp9vb2NnaRrDb29tGsMNuigAIiKAqqB0AGBU8jtIfmZm47mlKkdVYfhTRXy2t7sD5V/4Kb/ALAVv+1X4KXxT4b0+1b4i+GbZhbxlVQeILUZY2cjcfvB8xhc/dYlSQrfL+Sd54b06WRY4hqFtebmj+xpE7XCSKcMjRYLKysCpBxggjiv6Fm5GfyPrXlvxB/Yo+E/xO8QX2rax4F0VtY1SQy3eo2XmWF5dSEAF5JYGRnY4HLZz719NlHEDw1P2VZNpbd1/wAAlxufjr8Kjc+CvBvibTdQjuba7s914sSDMwSSDhgELAY8vJOTtOM4rg/DPjLMEdvcRE+VGo8yFchQP7y/4V9ef8FTfg78Gf2a7ldD8L6l4suPiRqFsqyWaaistvplk/P+lybRIRIpbZDkkg7jtXG74ktlayX9zNLEe5VyM/UdK9bOOGcs4lwPLjoO28Xs07brf8dGfZcD+IWc8IY/67k9RJyVpRavGavezW/zTTPQ4blLpBJG6yI3Qqcg1J2rH8HWMkNkbiclprrDDgLhR0yBgZ759x6VsV/EvEWX4bAZlWwmDq+0hBtKVrXtv9z0v17H+rXBmcY7Nckw2ZZjR9jVqRUnC97X1W6urqztur2eqGTwR3UJjkjSSNvvKwyG/Crfi3xzr3ibwbbeFbzVrjU9NuruLybW5IlnaQHCBZmBfavJIJ6ZG4AkVTnuPKeNFVpZpm2RRq2GkPpnsPUngV1fhzwBDp7rdSf2dqWodfNKBxCP7sYYEAdcHAY5JyO36l4P5LnFTFrHUKsqWHi/e7Ta+yk9PWXTpqfzz9JjinhfD5d/ZeMw8a+Okvc6Okn9tyTTXlG9pdVbfO/aDhA8GWTKNqx3yYwOxRwK8lPzDnp6eor37V7HSdTsGtdZ02aO2Y7iY3O0EdG2OSuR/ssPpXMSfs26f4w1CK18KapqE+o3TbbewSyluZZjgnCIgZm4BPGeASehr+rKFeEI2l/wD/PeUWYnwM0rVtS0zWNNj1bW7HwbqBRNW0m2v5oNP1yRWV0Se3VhHMI2VHy6thguOenuXwY/4Kv/AB2/YS8a/wBjeB/H+qa54X00RD/hHvFUj6zp8WQH8mJpG86FACoAikQLk1v+Cf2I/ihovw6vL0+A7zR9F0Cye8mk1C4is5HijUvK+2RgxYKGZs44BxXxrdas2vX899Id0l9K1wc8H5jkcfQgfh7Vy+xwuOlONSMZx6rR69/Xz3Jloj9wf2Uv+Dpf4d+No7XT/jD4O1f4c6gwCzatpZfWdJduMuVRBcxg8naI5NuQNzda/R74F/tHeBf2mfBVv4j+H/izw/4w0OcL/pWl3iTiIkZ2yKDujcd0cKwPBANfyPcE4r6k/wCCKPgfxl45/wCClfw40vwT4g13wuragNU8RXGlXj24utLtB500E6j5ZI5cRw7XBA83I5ANfF59wHgIUJ4rDTdPlTdnrHT11X3v0JjO+h/TopzS1HAf61JX5CaBRRRQB4b/AMFC/wBmHwv+1Z+yb4q8OeKppdPh0+1fWtN1e3x9q0K+tUaWG8iJ43IwOQeHRnQ8Ma/AvwR+0TrWueDtLvLnS7Nri8tY5pSl00auxUHdt2nbnrjJAzjPFfol/wAFFv8AgubZap4S+M3wa8IfDjxdJrwh1fwWPEFxf2lvZ2t1sktmuEQO0rorHdjCscY4r8v9OFxpmm29rDYbY7WJYUHnL0UBR0HoBX65wbl2JoYWX1pWTacVddVq99L6FR7noR+N13IP3uiQv6/6ZuB/NK5XWv2qta8KeLrW+8GK3hfXdJd0bVrWRWkVXXa8IXbscEdd4YAgYG4ZHO+J/EV9ouiT3C28cUgASMmYNh2O1TjHOCc/hXG6D4fu9ZuY7PTbS7vrjGVjijaSQgDLMQAT7kn3JNfLeKPFlXKcPDA4D+NWvtq1HbRdW3ovRvsf0j9HzwvwPEmLrZvnf+6Ya2jdlKb1tJ/yxWr1V7pbXLnjDxxr3xB1ZtQ1/Xtc1y+c5M99qE1w+fYsxwPYYArS8IfGjxZ4C1CGSy8S+JGtY2G+xOt3kUE46YzHKrIfRkIIPUMPlrA1bUvDvhAldV1qO/uo87rDQ2S8kz/da4z9nT3ZGmKnjYxDKKmk+KvF/jywuJPBujQ+FNKUGOTWUm8t7XIP3tTm2mNyuRtg8tnBZVQ7ip/N+GeEeLqk1mVau8NTWrnVlZNf4W9fmkux+88feIPhpToPIsNgoY6q7xjToU1o9v4kVo1/dbfc+qvB37WmpaxbNJa6t8RNMntXMVxaHxlcvLaOP4WWVW+oJ7ehyB0EH7anjLRGZrPxl8QkdTlftGoadex/ik0PzD2Jr5b8SeKo4Piddasl19shvZUW8n+bbOXVfNl+dSx2zFmDFdxXdwN1dZd272wbzLVlIPIkBXH1zCK/b+D84wud4F1rJzhJwlba66rykrNeu7P488TeA63C2axw0k1TqwjUp33UZK7jLT4oO8Xte17an3B+zT/wU/TXvEdvoHxIhsdPkvZVt7PX7UJHbyu3AW6hR38ncePMU7ASMhBzX1Z8QLLXNR8Ba5b+GbmOz8TTadcR6TcPGkixXhiIhba4Kt+829cjkcEV+Mt4sM4dWWz2kHcBInOeuckfyr9Hv+CXv7QN18U/glJoeqXcl1rngWaO0FxI+6W5s3Ba3Zj1JXa0e4k5Eak85rqzjLI0YrEUVot0fnR+ML3t94tmk1fUL66vtS1Rjd3k95mS4nmfl2kZjksTnJPPFXPD/h+TU9TVZNskMIDy4GM/3V/HB/CvVf27/hVD8CP2xviF4ZijWO3/ALVbU9PhA25trsC5jCj+6PMKgj07YIrlND0v+yrFYzgyt88rDux/oOgrzfFDjaOUZMqeFlatXVod4xtrL5LReb8j90+j74Z/6z8QLFYuN8Lhmpz7Sl9iHzau/JW63LgPr+JoRJLm7htreJ7i6uW2Qwp96Vvx6DuSeAASelNkkbciRxyTTzMEiiT70reg/Uk8ADknAJruPBPhabwkWuftSf2hcJtkdYgyRL/zzTPIHTJ4LEAnoAP578P+Aa+fYj6xiLxw8Xq9uZ/yr9X09bH9jeM3jJhODsH9Twlp42a9yO6gv55W2t9lX1fkmS+E/h5feF4mmuLH7Vf3C4lljmRlVc/6tAxHy8c92PJ7AdT4d+Euv+OtKutQ0vwh4g1Wzsbn7Jcz2mnPcCCbYr7GMYJB2srf8Cqmuu6mP+Xu3k9mt+v5NX1t/wAEkYPE15438capujXwubW3s7lkVlSbUFJZAgyRvSF/nP8AdkjHpX9WSjSy7BKGHioxgkkunp/W5/mpmmZYrMcXUx2Om51ajblJu7bf9fIw/wBh7/gnzrXiPxfovjjxbDe+HdF0e9h1HTdMlyt5qk0MgkRpY3yIoN6DKsu+QZGApyfrTXv2OPhX4o1eS/vvAHhmS7lYO0kVqISWzndhCoBz3AFelH5m9c07NfI4rMq9ap7S9vTQ4DM8WeE9P8ceFNS0LWLWO/0fWrOXT761kJ23NvKhjkjJBzhkYjg556ivxw/bp/4J43H7G3j5fLa/vvAOu3Jj0HWDJl4ZCC32G6HIEygHY+AJVXPDblH7QHmsP4kfDbQfi94H1Lwz4n0u11rQdXi8m6s7hcpIM5Ug9VZWwyspDKwBBBrfKc1qYOpfeL3X6rzJlG5/P+/gi4ur/wCx6bNJqN5wPs6xZZR23OCFUe7Yr3r9jv8AaZ+Jn/BL/wAezfEDwbB4L1DUtcsxoupw6xYS3kdvbGRZQqvHLG6bpEUMynGUjyGwCP0Mb/gk58IbS0+zaLa+JvD6Mc7LLVSyk56kSK2SemTzX5vft46v4N8HfE2+8E/DrxJrHibSdNdrfWdRuzA0E1yrc29u8SjeiFSHkJIdhheAS32lDMsPmd8Ny80XumtLeev3ESilqfpF8FP+DpyJRDD8Svg7fW/QS3nhXVY7oY7kQXPlH8PMP1NfdP7E/wDwVg+Cv7fevXWi+AfEOo/8JNY2f2+50PVtKn0+8ih3BS6l18qUKzAHypHxkZwCCf5do99v/q5riPuNshFfY/8AwRD/AGXvi5+0N+2/4X8UfD3Urrw7pPw31GG/1/xJJFvtobdv9bp+AVE0lzFvjMWcKreY2Nq5+cz7gvK6WFqYmm/ZuKvveN+l73eu2hKnfQ/pUU7hRTYuIxRX42Wfj7/wV5/4JOw/s/R+Ov2hfC+qSa74Wmvn13xX4V1S8mt57Z7i4US3FhcxDkb5AzQTjAUOVkHCn4WfV9BVh5Pgiyzjrdazcy544ziv27/4LU/Fjwf4F/4Jv/FTQ/E2vWelal448OX+heHrRgZLrVtRlhYQQwwqC7nzCm4gbUXLOVUFh+GcFpcLbxtMsVvIyKXEsyAqcZPGc1+wcH4yvicDfENvldk9rqy6re3cqJz/AMYdXt7vQ9Pt4fD+h6WGvg5ltPNaZtsUhC7nP3c4P1UelcL4rkZfg54njV3WOeawSVFYhZV8xzhh3GQDg8ZAPau7+KmkufDEV0riQWd1GzbI32hXDRE7iAOsgrhfEa7/AITeJ/8AZNk35Tgf+zV+fcRRlDxAy6c/haVr/wDbyf4n9ccA1KdTwYzmnT+KMm399Nr8Dnvghd+GtKvNaufEL6XFLbWUb6Y9/YSaggl8+PeI7cAxSymLftWceV1JKYDDtPDnxnh+IfxT8P6Xp+haj4lmnu44jNrRN1PHblh5zRWkLGKFRGGJLGVUUFsgqHXivgZ4L03xtr2tf2lbx3i6TpRvoLabUl0+2ncXVvEfOmLIViVJnc7ZIz8gO9QDXY6/8XPD3hrQ7jS475tUspCGm0vw3ANM0yZgQwEs8ke6UqQGyYZRlflfJ3D7XjLC4fE5k6UMFUxdZxVk3ajC97PX3b9Xo3+B+Z+HuOxWDyj29TM6OAw6m+ZxipYmpazcUo++4q6teUY6vVlG+tlElxb5WSPLRgg5Djkde4I/Su48MXi33h+wmElqsjW8e8IcPuAAJxFDkZOf4s1y+pX0Wt+GvDmrQ6ZZ6OuqWUjtBamZom2XMyBwZXdySqrklsEjgKPlHZeCNNkbwbpqyXV4FaBXEaybFXdyBwM9/WvgfB7B4jA4/MMBXteDinbVcyclo+v/AAD9a+k5mmCzfJcmznC3tVU3Hm0k4tQeq9UvS5YeKRBuK3mPUq4X85ZR/wCg19O/8EiNVkj/AGj/ABZZK6vBd+FJLiRFdX+eK+tFQnaOuJpB1PWvmxdCs433Nbo7f3n+c/rmvXvgP8Z5P2SPg54++JVn5C+ItaWLwX4SjkTcsl2f9KuZ9neO3VIWYnguI0yC4B/Y88xFOlgas6rtFLV9EfyPl+AxGOxNPB4SLlUqSUYpbtt2SI/+Cuvx90n4pfHm18I6PaafJD4FzHqeqC2j+0XeoEYMAlxv8q3RipBIBlkk4/dgn5Sggmur22tbeGS4vLyVYba3jAMk8h6KoPGevXsCTgcipe38ei2LTXE00rZLNJK/mTXEjEkkn+J2Ylie5JJrj7zXL/U79Xjnkt5JZY1iWJseWRICmD1yGCtkEZIHpX87ZFwxjON82ljq14YSm7J+S2jHze8n0v6H95Z1xZlfg/wpSyHA8tTMKicmltzy3qT/ALq2gn8SSWiufSnhb9l3WtG3XUupaX/aEy7XaNpGWBePkU7OR6t/EeegGNofAPX8f8haz/8AIn/xNYdze3kszbtS1duT1vpT/wCzVm+IL0aTpNzeTy3ky26FtrXMhLnoqjnqSQB9a/o7C4WlgcMqFC0KcFoktEl/Wr+bP4VzLMcdnGOlisXN1a1WWre7b/qyS22Wh3FhF8O/hXomrWfxGk8cX/iXCXGjQeHp7dLa8jb5Ss7TJmDawJLkNuUnarMNp0vhb/wU98YfAzwXa+HPB3hbwfpui2ssk5S9Fxe3V1LI2XllmDxhnbCjKooARQAAK+bFDvLJJM2+4mbfK5P3j6euAOAOwA/FwPSv5h4s8VMxxeLnDL5clGL00Tcrdde+9uh/fnh/9Gfh7CZbCrxFTdfETV5K8oxg3ryrlau1s23q+x9w+FP+C1XifUr+Gz1Twj4M0tZhtOoS3t59ljb1kVVZkX3G4DuQOa76X/gp1ryPjzvg6NwyCmrX8mc9MbYu9fnnp/g/VNUsVu4bORbPPF1My29uMdSZZCqADuSwxg56V0XhLxDqXhOTT9LfWlutJ1OBptOex1E3lvEVkkjaJXQsm3dDIAEDDIOCQwJ+08PeKqmYyWFzWhbm0jUUWoye6i+nM/stb7WPxbxs8FsmyWMsdw1Xi3BN1KDmpTjFWvOKvzcquua6dt72ufeFt/wU68QWUqy3Gk/D/WLfq0OnX+oxTsP9hntmTP1x9a95/Z1/a/8ACP7SyPbaSdS0nXreIzXGi6tCLe8jjBwZEwSsseSPmQnAI3BDwPyuv/35K3HnS89ZHBB/7+RpUehajeeD9esdW0e5bSdT0yZbq0vLcAyWso6MpQ7fYhsggkEHNfsFfIcPODUNH+HzR/LB+kH/AAVT8ReMvB/7DXjLVPBOpSaVd2Ztv7UngT/Sl02SZYbjyW/gb513N1EQlIIPNfipDpLQRqkciqsYAAEfQdu9fuz8AfitpP7bP7Mb3WpW9vENetLnQfENnGDst5zH5c4UHkKyyLIoOcK6gnINfiL4/wDBt18IPiD4g8I6syx6p4U1K50i6VmG5nt5WjLe4baGBHBDAjrXRwrUcI1MLJWlF/8AA/r1Mqhgm3WzZZbyS5azjdXuRaovnmIEGTy93G/bnbnjOM8V/WL+xf8ABb4dfAb9mbwfoPwpsbe08Ctp0N9pssbeY+oJPGsgupZD80ssoYOztyc+mAP5TrHTb7Vtps9PvrpT3it2I/PgfrX6s/8ABOL/AIL26T+xh+yB4T+G/wASvAvi/UbzwfHJYWmoabdWDI1iJGNujLLcIwaOMhMAYwi4rh47ynF43D0/qt5OL1iut1vbytb5kxP2rB4or4J/Zs/4OJPgb+1F8cvCvw90XRPiVpeu+ML0adYzalpVqtmsxVmVXkjuXIB2EAhSM+3NFfjmMwGIws1TxMHF72ZZ4f8A8FlP2DPit8Wv26rPx94K+G/iL4naFf8Ag+008eRqlso0S9gurnzY41uZkEccsUkDFYxgurseWr4VtdK8RWXiDWtGm8LW/hnWPDeozaVqlje+X59jcx43xtsJVuoYMpKsGBBIOT/SY8SqOBX4w/8ABZvw1pnwV/4KQXGoaay303xL8LW2r6pY2xXzbC7tHNqs8gPCrNDsUHubY8cZP3nCefVaso5fUirRj7rV76dHrbYqPY+WtX+Fuq+L9HuLHUtajt7e6jMUiW9v5mAeh/h6Hn8K8A1jwnqz+DfGGhrp95da3G9rbfZLWFp5ppBdxjEaqCzhsgrgchlPevoa98b6pKm5I7Cwj/vOTMwH6D+dcD8QvCV140S61LT9QvZdUa3NrPKn7u1u4Of3MrKAoX0JzjOCCOB38SZHWxNShmWHipV8NLmitlJdYt9L6NN9V5n6l4d8YUcupYzIcwm4YTHRUJyS5nTad4zUdL21TXZ31sjwqw+Akts27xJrFjoO0/Nawoup36H0MSOsSt6rJMjDoQCCK6XSbbQfCZ3aP4ft2uEIK3msFNTuEIP3lRkWBD3GIiVPIbI3VTnddOi3XEb2kcZClpF2xgkZA3/c6dgf5Guj+Fnwn8UfHLW4tO8G+HtW8SXUjBQbGAvDH7vMcRRgDklmGBX4jxNxxxpmdeWDlCdFXtyQi4t+snq/W6R/YHBfhf4XZFg45tPEUsTZc3tKs4OK9IXsn5NOXmZN9c6h411iOO4vLq8vr9xCZ7iVppFXoWLMScKoJ/CvUfMg0u0VSywwwqEXc2AoAAAr6W+AH/BGjWtMYah488X6fYXU6ANZ6DGbp7dD1j+0Sqqbum5ljYEgAEgDP1T8Kf2JPhf8HHin03wta32oxc/2jrDHULrPqGk+VPoiqK/S+AcBSyDLWsQ+avVfNO2ttNI3e9ur11bP5a8cvEbD8V53FZarYXDpwp6WvreUrdE9ElpokfA3wF/Ze8WftGX6SabbSaL4Zjy974m1CBo7G1iUEu8Rbb57hQSAnyjqzKOa8j+N/jmP44/FTTNA8A6bqV94X0cf2B4L0qBTNd6ihctJdEADdPeTbp3b+FTGCcR5r7m/4K1/tMX2keFtJ+DfhYXmo+LviKqw3trZrvuVsGcotsgHIe5ZWTA6RRTElVINdh/wT7/YAsv2UdAHiDxFHaal8SNUtzDdTRN5lvosDYJtLZj3OB5kuAXIwPkAzHFVbE501l+sKKac2t2ukF5vdvord7PLw9zbB8I4aXFGJiqmKknHDU3sntKtLyj8Me75rbXX5Q/tVfCDUf2ffjdf+DdY1C11DVNHtrT7ULX5oLeeaCOZ4UOT5mwyBN4A3bcgAECofh18LbPXdM0/VJtWuDL5ok+ywQAmN0fhW5Jz8ucYHXpX6I/8FNv2GdBgv9U+MWg67pOg+J70KNQ03WJ9tv4kkQKo+yMQzxXRUBQigxuQu4Rkl6+EP+EouvBqaprWgXGq+G9e03H9owRk283BBaO5hOQ3y5wWB7kGv1TIfq9PLqeGwMeSMFa23r/w/wB5+T5xm2MzXG1MxzGo6lWo7yk92/ySWyS0XQ7uy8Ca1rP+p03xRdK3dbSSNT+JAH61g/FvwDqnhLQ7CS/066skursKrT3CsxKozY2hj6Dn2rqtT1rUtYdmvNZ1i8VjwZbx9rfgCB0riPidpUNvY2VxHEqyfadjvjLNuRsZPXtXj8XVKsckxbhv7Of/AKS7/gfVeGMKM+LctjX+H21P7+ZW/Gxzmt+IbPwP4NsdRk0mPVrrULye2VZrqSKKBYo4WB2R4ZyfN/vgfL9aZ4X8bj4ieDdYe40/R7C80OaK7T7BbeSHtpMxOrklmfbL5JDMTjzWHcCs34tqf+FV6F/s6vfrx/1wsyP55rop30D4R/GrwPrs9mbfwX4u8O2bapBbx+ci7rdIrsBCcF0njiu/LyP9ZCeNwNfmfDfBuV5jwXCNOjFYqtGfLO3vOUJNpX6bbLpc/f8AjvxOz3I/E6pVq4ipLB4apDmppvlUJRSfu7dXr3t1OR+OulXmp+ONUtYLea4sfAtjZ6fdv1W0k+RJifTdezTKMcgFR/Ca2tPLS/CXwc6YMkVldlecjcupXbKDn3IODn8adp15Pefs1fEHWLhpHv8AxlrlvdTu3LvHb3IbOeuHmvHLckFrde6cnhA+b8F/D0v/ADw1LUrT6Bfss3/tevc8RKkcHwpTpYbT6rVpRVu8EvxPmvBSnUzHxAqVMwV1jqNeTT6qpf8ADc9IsZzqmmwXUKTQ29xEsq+UjpGoYAjJHkp3+n1qEKkso8sQzSjuuJnH/fKOR/33VXwJpslz4S01vLs1CxbVkkBmcgMQMBjgcDoOK3P7K81cXFxcTAfwb9kY/wCArgV+m4et7SjGo/tJP71c/njMMOqGKq0I/YlKP3No+tf+CP8A4ouLTxV4+8Os032e4tbTVlRwQVkVngZsbm5KsgJOCQgGOBX1n41/Zq+GvxK1C4vfEvw5+H3iK8uiGnudU8NWV7PMQMAtJJEzEgYAJOQAB2FfKP8AwSL8F7fFvj3XooFjtLa0s9J3KMBpndp2HuVUIfbcvrWh/wAFSv8Agox4y/Y98Z+H/C3gvTfD7X2uaS2pS6lqUT3LWv754gqQhlUn5N2XJHONpr5bG4erXzF0sO7SdutumpxO3U9o1T/gm38AdYjb7R8KfBemx4w9zaQGw8gYxu3RsoUDrzxX4rfDj4KeLPiz44k8MeD/AAvr3jbxFDLJC1toenS6jM4RyhkbywQsZI++5CDOSR1rX+NH7TXxE/aMunk8c+M9e8RRO277JNP5NjGecBLaMLEv0C1+qX/BpX4cktbL9oDV/l+y3Vx4f06MAY+eCPUJW9vu3MfH/wBavXxFTE5Hl9TF1Je0lpZNuy1tvv18r2Mr8zsjzr/gm/8A8G/Xx80j46+AfiR40vPD/wAMbLwfrlnrgsJ5f7U1W68iUSGHy4GWKISKChYzErvzsbpRX7powxRX5Fm2f4rMqqrYi2iskkrJfO7+9l7A5+Xn8a/nd/b08V+JLP8A4KD/ABkh8eLq118Q77xGbbTtA0Oxe9vLvSURf7L+zBQT5BtmQltv+teYEbgVH9ETDd+NUI/DGmwa/Lq0enWK6tcRLBJerAouJI1yVRpMbioycAnAyfWqyHOlltWdXk5uZW3t1T3107/IPQ/nE8D+DdQ8Wx3S3ti/hPUtLuXsNS03VbSSXV9MuUwWimjmCLE+1lYDYcqwNdfD8MdFsV+06h52qNBz52pzeakf0XiNfwGK+uf+DhL4eaN8G/iv8N/iR4b26Z428fSXHh/W0EIa31e0tLczRXMigj/SICVjV+rRybGJCIB+cPiDV7jWj5+sahcX20/L9ofEaf7qDCj8Bmv1fK8Z/aGGjiY+6n06prR/IuMmesat8edF8PD7PpjS6nLD8qrZALBHjt5nCfgua+hf+CVvxL1zXtF+IFnfTx2fg/RJbe6tLV5i8OlzT+YZQkjYCxsEDlcABySMZNfHnhX4Y694wjWS1sfsFmw+W6vcxIR/sx/eb8gD616Jpnw60b4Z+E7hNe1i5vNNuLhbqeC6maLT55woRW+zBtsjhcBdwYjtWuNw9KpSdFPV283uWrn6XeGPFWl+NNHj1HRdS0/V9PkYot1ZXKXELMDggOhIyCDx7Gm+MPETeEfCmpasmm6prMmm2slwmn6dCZru+ZVysMSjq7thR2GcnAFflpN+0BqXgHXJNa+HP27wrfQqWmvI28mLU1UZEUlp/q5FOB80g3DjAGAa+zNc/wCCjuiSaTpv/CJ+H7vxtfTWsM97Kt2NM020dow0kYuHjkMjqxKlUjKjBywxXzuIyWrTmnBcyf8AVmSaf7JH7JN94C8Za58VPiI1nqnxd8bSNcXZhbzLTwvbuMLp1oe4jjCRNLnLCMAHbkvgf8FMP2+m/Yr+HmmWfh+LTdQ8feJnP9n214hkgsLVAfMu5VBBbDbY0TI3MSTkRsDz+if8FcNJTxHBDrvgSfS9F8/ybrVrLxCuox25wfur9mjMuCADsJwCTg4wfzV+P/xY1r9qz43a9488Ulo7rU7gwwaYGOzSreIlIrUeyKOcY3MXY8sc+llWSzq4nnxUbRWtls/LT53Kr1qlR3m7vRfJbL5HrvgT9u7SPGfiBtc8bWfiS68RMPKl1ueT+0xGp6rHtVTDHyfkiTAzzk81i/tYa9ofx/u/DVn4LksdZ1KZJXvtTtNwktLTCqIJsAMAzMW2OMjyxwN3PkIRYUCqqqq8AKOntivYv2D/ANkv4pftjfHVtB+FMMVvc2cKx69rl1Fu03QbaVhhp2wcytsYxwrmRyrYwoZl+nrU8NhU8S3yKKvq9P68jPpZm1o/gK6t7C3jeG4YQxLGZbh1tw+BjJUbmqj488K2d/4UvrU31it40e+2jgiMpMqHcgZiTgFgATxwTXuv7V37C2sfsZ/tM/8ACA+LPFF54ys9W0SLXtC1lbQaet+gcw3cLRBnAeGTY2AxGyeM8HNYFn4a0fwxC0qWlnaqnJmfGR7725rypVqGLoe6+aE196ej/VNHVgsVUw1aGJou0oNST7NO6/E+T/F/hPVvG/wp0NdG0nUtUmXWr4vHa2zTNGDb2eN20HHORz6H0rZ8b+FYvEnw80Tw5qGpafo2paDZ2M4NwXmWOQ2whuoD5CyYk/dwHaccx4LLiul+PHhe3j1q71fQWmudOvGM2owQI3lW0o6zDjDK3JYDoSW6FseexBfLXZtKY+UjoR7V/PnEHEWb8LQwuVUaSUcPOU4VHd86lzaNaLaVmr367M/uzgjgvh3xEnjeI8TiXKeLhGFWjFJSpSjyNtN3bu4Xi7Ws7as2kfQrLwXH4YuF1PVdNTTVtZJrOVLB5J/tv2ouPMjlwhAVOV3HGeO2fqGp2eneGbXTdN01dP0/TZZ7qNGuHubieWZYVcu7YUkiCMAIiLx90kkmuT/kf/rr0L9nD9mnxp+0f4iSTwv4b1DWNKspf3l5gQ2BlXopuHwmEIyQCTkAY618nk2OzviXGf2dVqv2M5+0qaJRWt3J/lFX30P0TirK+EPD/K3n0aSWIpUvZUW23OVotRite7vJ22u2aHh3TTomg2Nm337a3jiY+rBQG/XNb/gnwXrXxR8Y23h3wzps2s65eEeXbRn5Yl7ySv0iiXPzO3HYZJAr63+EH/BKKJWjvPiF4la8OQzaToW6CAeqvcv+8fPH3ETHOCetfU3wz+EPhf4N6F/ZvhXw/pfh+zbHmLaQBWmPXMjnLyN7uSa/qHEZ5Qox9nh9bK3kf5l1qkqtR1Z7ttv1erMP9mf4CWP7Nvwe0/wvZ3H264jZrvULzbt+23cmDLIB/d4VFB5CIor80f8Agunqiz/tk6TBu/48/CtqhB9Xnnb8eMV+tgGP/wBdfKP/AAUP/YA8N/HJ7j4mQ+JNN8F+LdDsVhm1DWW8zR72CPJSOcE7oGyxCyxZbnBR815uR46NLHe2rvdNfNmMldH5M+HPhjqXiACSZf7NtW5Eky/vWH+ymenucV9Kfsb/ALVfxJ/4J++I5NR+FviWS0t7yVZtU0TVlN3pGuMoABmiBVo5No2iWJkYDAO4ACvN49RmttQjsdSsrnS9Smj86KG4Uqt1HniWFyAJEPqBn1ArlvHnxYi0TzLTTSk10uUefG6O3bpgD+J88YHGfXpX3uJprFwdGqk4vdPb1ItGKP6Df+CbX/BY7wX+314j/wCELu9J1DwT8UrPTn1O60GYm8tLq3jZEluLW7RQjxq8kYKyCOQeYPlYZIK8E/4N1P8Agml4x/Zj07xR8X/iVpr6P4m8fadBp+j6dehv7SsNP8wzSvcAgeU87rAfK+8qwJuwcqCvwDiCjhKOOnSwLvBed1frZ9k9OvqOOp+ooGKawp1GK8cD8s/+DkH4Q+KtTuPhj8Rmt5m+Gfgi31G11/ULSE3U2hzXRgEdzJAuGMLCLy/MUkIzjcApzXw3+wz/AMEqf2oP2m/HK+ONF0G18B+GpN0lrfeOkaGG8h6xxx2qoZ2LDH70LGoySrEjbX9FjwCTO7aytwQRwaJIsj1r63L+MMTg8CsHShG6ulJ9nrt3u3r6aAfzp/FH4meL/h3498ReCNY0C18OeMvCF7/ZmtiS6F9BDP5aShrcrt8yN43R1ZgOGwVzkDzuxgvfHXiRktTceINZXhnkmDG3BPO5uFjGeyjPsa+lf+C0/gtfhx/wVP8AHF4sM0n/AAnGgaP4kEUcbO0zQ27WMrADssdlFk9ACM9a/P39mf8AZW+IP7a/xGTw38OvCV/4s1y7cy3ckSbLPTlfLmW6uGxHAnXmRgWOFUMxCn9VyypSq4GOMqNQTim30V1rr6hKo1ofSr+BNK8FXEa+JJJNc1qRQ0Oj2qHYPdlOCR/tSYX2rzv4x/tPRrLNpuI9QmtyYv7Ks2K2FqRxtnm4MzDH3FGwdDzyfbvid+wb4w/4JneN9B8C+NNQ03WF8ZaSdb03U9PgkS1+0xMEu7BXfmRoQ8LhjtJWUnavSvjP406WPD3xd8TWp2qi3n2gZIACyosoP/j9dOXexxTVSEuaLV01s+nyBy00PWP2Zvi3ofizxwtt4wjj/t6aRV0iZuLEekKp0STP3c8NwBg9b37YvwzPh3xZD4utY9tnrMi2mqY/5ZXQG2KY+gdVKE/3lX1GfVP+CWn/AARG8bf8FBbux8VeKRqHgb4QeartqMkOzUPEsYIJSwRhhYz0+1MCnJ2LIQcfeHg//ggFrGs/G2+8O+PPHkfiD4D6fItxY28QePxF4hjJ3JYX8/3EihIAaWLEk4Cf6o7q8rMOI8twmKkvaXcVqld/JPa/l94XZ+ff/BM//glZ42/4KR+LlvbaSfwx8LdLujBrHilkXzLh0+/a2CMMSz9mkOY4s87mAjP9An7Mn7MPgn9kP4P6b4F+H+h2+g+HdMXIiTLzXcxA33E8h+aWZ8AtI5JJ9sCuu8F+CNJ+HXhTT9D0HTNP0XRdJt1tbKwsbdYLa0iUYVI0UBVUDoAK1dvFflWf8R4jM6nve7TW0f1fd/0gPy2/4OL/AIhaLJr3wY8J2flw+OLO+vPELairANpukiFreWNgRhhPK8QAPGYCRyK/O2fy7uJrxllvkjyTd3cm2BP+Bvhf++Qa/Tz/AIKx/wDBKv4gftLftPaF8TPhZ/wjepatq2kJ4b1238TXrxWmkRwSPLbXsICuzAebMrwoBuZkcEHcT8lftQ/8EsfHn/BO/wAOaR4/8Z+JbX4s+F9QdYfEOqR6U8A8DXLMBFKsbO4axbOx5cJ5bKpKgOdv2/DeZYCngqOGVVc7vpre7b07JdtdehUXY8C0ix1HxMVbT4bq+j7Swf6Jar7+e43MP+uac+tLa/skaPqjtJqM81tNIzsI9HxAi7iPvGRX8zGOCVB5PsB0/if45aPo7NHYs2t3SnkWrgwKfeXlfT7u7uK878T/ABF1rxaki3l4LOzbObWzJjjx/tP95vxwPavosTgaeMp+yxFOMoPpJKX4M9LLc2x2XVlicvrSpTX2oScX96aZ6x+xf8APhDP+0YPCfizTbvxpfagGn0Z7m/MlraSRIXeC7t4lRHJClldtynG0oOp/SyztYdM0+3s7eKK2s7RBFBbxIscUCDoqKuFUD0AAr8pf2UfEWt/DT4pWPivw9oFnqK6ba3UEE187W9ikk0fliQlRulCZJKpjd03L1r23Vf2vfiL8LLx9e1Dx5Y6hNcHLaRqOlp9huf8ApnbxQ7Z4/wDeV39W4zXz9fh2jRl7PAwjCNtkkk36JaG2bZ5mWa1fbZlXnWkus5OT9E5XsfeSjA/SgjmvGPgp+2t4b+Iv7PkvxA8RG18F21jeSadfW91eCfy7hFVhHEQqtKzq6FUVd5yBg9aw9e/4KZfDfw/HG1xY+PlE7bId/hySLz26gIHZSx78CvM+o4hycVB6HknpX7Snx60n9mT4G+JPHOt5az0G3DRwKf3l7cOwjggT/aeVkXP8I3MeFbH5Yaj/AMFLbj46+MY9Q+JGk6pfzWspmsLLTGSXTNIXsYrZipaTGQZXZnPbHSum/wCCt/7X9v8AtQ+P/DXg3wnqSy+C9BsodaubhTzfX1xHwNuf+XeM+WQfuyvMD90E/LOn6bFpsHlwrsXPJP3mPqT619rkeT06eH9pWXvy+Vl0+fcnVvQ91/an/aa8EfEP4Daha6fdLqGrXE8K21vd2bw3FkS2XnXzFG0qgYb1bqw5Nfp9/wAEbf8Agg/pP7Lcei/FT4rR6X4i+JJSO80bTYZEutN8KFhuWRWGUnuxkfvQWRD/AKsn/WH8a/hz8NPEXxs+IekeDfB+g3vijxR4il+z2Gl2qbpLg4yzMTwkSLlnkbCooLE4Ff0r/wDBNv8AZp8VfshfsYeB/h94z8WN4v1vw7ZiF7lU2w2MZ5jsoWPzPDbqREjv8xVBwowq+DxvjZYPBxwuHqW527r7TXr0Wln3+8mSu7s91RML0570U4dKK/IQCiiigAoIzRRQB4/+1f8AsF/Cf9trQ4bP4k+DdN1+a1ieK01JWe01PT1YEMIbuFkmjU5OUDbW/iBHFdN+z9+zZ4F/ZX+HNr4R+HvhfSfCfh2y5S0sYtplbvJK5y8shxzJIzO3cmu6xRWzxNZ0/YuT5e13b7gPm/8A4KdfsLf8N4/s8RaDpV/p+ieNPDmpw634Z1W9iaSGyukzHIkoT5zFLA8sTKv94Hqor5N/ZS/4NvPD3hD40J46+N3jDT/itcW6xyW+g2mkSafpLzpwr3IeaRrhU4Cx/JGcDcrDg/qFijFehhc8x2GwzwtGpyxd9rX17PdfJgVtN06DTrCG3t4o7e3t0WKGKJQkcSKMKqqOAABgAdhU4jANOoryQCiiigBnlA9q8G/4Kma4vhX/AIJo/tA3jbdyfDrXkj3DKmR9PnRAfbcy175XM/GX4R+H/j38LPEHgvxZpsWseGfFFjLpup2UjMq3EEilWXcpDKcHhgQQcEHIrXDSjTrRnPZNN/Jgfy7+IfHtj8OvDumxvHNcmRVt41gXIXYo3tnodvGQOckV7N8FfDXgfxj4fbXk17TvE6WXNxl/Kt7BuuJIWwwI9ZevYV+iHwv/AODaXwEvxnm1n4meOPEXxE8G6CRa+GfDjxpYotmPmVNQmiAa4dWYgmLyg4RS+7JWq3/BfL9iLwB8O/2TPCPxC8I+BfDXh66+Huv6bpl1PpenRWu3Sbp2tBE+wDdGtxPAwBzhsnjJNfr/APrbga+Ip4Wg5Xm7OWyV9lrq+z2+ZSbR8FeLfjx5qfZfDUMbKo2C/mTEKDoPKTjf7E4X2IrhdI0jU/HeuzNZ+dq2ocLcX10/7qD2Z+g4/gQfhXm/x0+IOpeD9R0210+SGNbiN5Zt8W/eFYBV6g468D863PhR8ZfiR8RvDeqXEOgtJ8PvB6RyeJtT0HSngj0OCR1jRpJgzKgLyIWCjeU3twoZh9R9W9lT51Zebf8AWr7Bz62PTprnR/hPbXLRzw6tq1ixmub+7fy9P0lyFVmIzhXICjauZGwoJxXkV7+0Xpfibx5FHeX2pRabcnybzXmh/eBf7scQ/wBVCehKjOOTkVc/a88Jx2fhDw7PaxiOz0+8eFoY/wDVDzEyr4/vApjJyfnPNeLeH/D+o+LvEen6Po+n3+saxq1wlpYafYwNcXV7O3CxRxrksxPQD+Wa6sLh4ODqzfz2t6/1YmUn0Prb4zfs+aZ4z+Ftq/haC1GpaSn2zTJo3DDUUYKXjaQZ3eYoyp6BgpGBXhPwX+FPij9o74kaH4L8C6Hd+IPFXiSQx2Wnx/JtC/6ySZmwIoo+S7tgKB3OAf0S+Fn/AAQm/aK+AP7N2jato+oeFvEHizUrjfqvgO8vRBb6KkpQI8F8CUaSIlnnQfI6qwiZnVTJ+jX/AATg/wCCaXhX9gLwjqV5H9n174keMXF34q8Sm3WJr2ZjvaC3T/ljaI5YrHksfvOzvzXxuO4ywuEoSWHmqsrtR9erfl279PIMf/glj/wSp8K/8E6Phy08j2viT4n69CF8Q+JTERuGQ32O0DcxWqEDjhpGG9+dqp9ZEYFOAxRivyPF4uriqrr15c0n1f8AWwBRRRXOAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAGK8r/bY/Zmtf2x/wBlfxx8MbzUv7GTxhpjWcOo/ZvtP9nXAZZILjyt6eZ5cyRvt3rnbjcOtFFVTqSpzVSm7NNNPzTA/K3wB/wbL+OPHn7QVi3xU8a+HIvAOjwRie88NtN/aHiQ+azGNY5l22Q24DMGkwMBMk71/V74afskfDn4O/AVvhh4b8IaLpXgGazmsbjR4oP3N5HMpSbzifmleQE73clmJySTRRXr5nn2OxzisRPSOyWiv3suvmCPxB/aO/4JOfG7TviL4r+C/gnwjJ4y0nRbyOTQtfuNasLcPpzFZbJZhLMsgljXMMjBDnyywB34H6Sf8Ekf+CMfhf8A4J5aHD4p8QyWfiz4w6hbNHeax5X+jaLFJ960sVbJVcbVeY/PKQThEIjBRXrZzxHja+GhhW7RcU3beTaW+v4KyDzPuBY8Ljr70oWiivkAFFFFFABRRRQB/9k=" style="width: 200px; height: 231px; float: right;" /></td> 
     <td rowspan="1" style="width: 173px; text-align: center;" /> 
     <td colspan="2" style="width: 269px" align="right"><div id="qrcode" /><div id="qrvalue" style="visibility: hidden; height: 30px;width: 30px; display:none">{"vkntckn":"<xsl:value-of select="n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN' or @schemeID = 'VKN']" />","avkntckn":"<xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN' or @schemeID = 'VKN']" />","senaryo":"<xsl:value-of select="n1:Invoice/cbc:ProfileID" />","tip":"<xsl:value-of select="n1:Invoice/cbc:InvoiceTypeCode" />","tarih":"<xsl:value-of select="n1:Invoice/cbc:IssueDate" />","no":"<xsl:value-of select="n1:Invoice/cbc:ID" />","ettn":"<xsl:value-of select="n1:Invoice/cbc:UUID" />","parabirimi":"<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode" />","malhizmettoplam":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount" />",<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015']"><xsl:text>"kdvmatrah</xsl:text>(<xsl:value-of select="cbc:Percent" />)":"<xsl:value-of select="cbc:TaxableAmount" />",</xsl:for-each><xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '0015']"><xsl:text>"hesaplanankdv</xsl:text>(<xsl:value-of select="cbc:Percent" />)":"<xsl:value-of select="cbc:TaxAmount" />",</xsl:for-each>"vergidahil":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount" />","odenecek":"<xsl:value-of select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount" />"}</div><script type="text/javascript">
					  var qrcode = new QRCode(document.getElementById("qrcode"), {
					  width : 140,
					  height : 140,
					  correctLevel: QRCode.CorrectLevel.L,
					  });
					  qrcode.makeCode(document.getElementById("qrvalue").innerHTML)
				  </script></td> 
    </tr> 
    <tr> 
      
      
      
    </tr> 
    <tr> 
     <td style="width: 205px;"><table align="left" border="0" cellpadding="0" cellspacing="0" style="border-top: 3px solid rgb(0, 0, 0); border-bottom: 3px solid rgb(0, 0, 0); font-size: 9px; width: 349px;" width="350"> 
       <tbody> 
        <tr align="left"> 
         <td align="left" style="width: 345px;"> <p><strong><span style="font-size: 13px;">KAAN ELEKTROMEKANİK MOTOR ELEKTRİK </span></strong></p> <p><strong><span style="font-size: 13px;">MAKİNE İNŞ.</span></strong><strong><span style="font-size: 13px;">SAN. VE TİC. LTD. ŞTİ.</span></strong></p> </td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;">Gaziler Mah. 1799/1 Sk. No.5/2</span></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;">GEBZE / KOCAELİ</span></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;">Tel: 0 262 646 81 82</span></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;"><span style="color: rgb(105, 105, 105);"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;">Web Sitesi: </span></font>
             <xsl:value-of select="n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI" /></span></span></span></td> 
        </tr> 
        <tr align="left"> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;"><span style="color: rgb(105, 105, 105);"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;">E-posta: </span></font>
             <xsl:value-of select="n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;"><span style="color: rgb(105, 105, 105);"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;">Vergi Dairesi: </span></font>
             <xsl:value-of select="n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name" /><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> </span></font></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;"><span style="color: rgb(105, 105, 105);"> 
             <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification"> 
              <xsl:variable name="schemeID" select="cbc:ID/@schemeID"></xsl:variable> 
              <xsl:if test="$schemeID ='TCKN' or $schemeID ='VKN'"> 
               <xsl:value-of select="$schemeID"></xsl:value-of> : 
               <xsl:value-of select="cbc:ID"></xsl:value-of> 
              </xsl:if> 
             </xsl:for-each> </span></span></span></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 13px;">Mersis No: </span><font face="verdana, geneva, sans-serif"><span style="font-size: 12px;">0484066220200015</span></font></td> 
        </tr> 
        <tr> 
         <td style="width: 345px; height: 9px;"><span style="font-size: 13px;">Ticaret Sicil No: </span><span style="font-size: 12px;">9527</span></td> 
        </tr> 
       </tbody> 
      </table></td> 
     <td style="width: 173px;;text-align: center;"><img align="middle" alt="GIB Logo" src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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" style="width: 70px;" /><br /><br /><font align="center">e-FATURA</font></td> 
     <td colspan="2" style="width: 269px;"> 
      <table align="right" style="border-collapse: collapse; width: 286px;"> 
       <tbody> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">Özelleştirme No:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="n1:Invoice/cbc:CustomizationID" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">Senaryo:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="n1:Invoice/cbc:ProfileID" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">Fatura Tipi:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="n1:Invoice/cbc:InvoiceTypeCode" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">Fatura No:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="n1:Invoice/cbc:ID" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">Fatura Tarihi:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice"> 
              <xsl:for-each select="cbc:IssueDate"> 
               <xsl:value-of select="substring(.,9,2)" />-
               <xsl:value-of select="substring(.,6,2)" />-
               <xsl:value-of select="substring(.,1,4)" /> 
              </xsl:for-each> 
             </xsl:for-each><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> </span></font>
             <xsl:value-of select="n1:Invoice/cbc:IssueTime" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">İrsaliye No:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference"> 
              <xsl:value-of select="cbc:ID" /> 
              <br /> 
             </xsl:for-each> </span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;">İrsaliye Tarihi:</td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference"> 
              <xsl:variable name="ddt" select="cbc:IssueDate" /> 
              <xsl:value-of select="concat(substring($ddt, 9, 2), '-', substring($ddt, 6, 2), '-', substring($ddt, 1, 4))" /> 
              <br /> 
             </xsl:for-each> </span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;"><span style="color: rgb(0, 0, 0); font-family: verdana, geneva, sans-serif; font-size: 11px; font-size: 13px;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS">Sipariş No:</font></span></td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="n1:Invoice/cac:OrderReference/cbc:ID" /></span></span></span></td> 
        </tr> 
        <tr> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;"><span style="color: rgb(0, 0, 0); font-family: verdana, geneva, sans-serif; font-size: 11px; font-size: 13px;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS">Sipariş Tarihi:</font></span></td> 
         <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:variable name="spdt" select="n1:Invoice/cac:OrderReference/cbc:IssueDate" /> 
             <xsl:value-of select="concat(substring($spdt, 9, 2), '-', substring($spdt, 6, 2), '-', substring($spdt, 1, 4))" /></span></span></span></td> 
        </tr> 
        <xsl:if test="//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA'">
         <tr> 
          <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;"><span style="color: rgb(0, 0, 0); font-family: verdana, geneva, sans-serif; font-size: 11px; font-size: 13px;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS">Aracı Kurum VKN:</font></span></td> 
          <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:value-of select="n1:Invoice/cac:TaxRepresentativeParty/cac:PartyIdentification/cbc:ID[@schemeID = 'ARACIKURUMVKN']" /></span></span></span></td> 
         </tr>
        </xsl:if> 
        <xsl:if test="//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA'">
         <tr> 
          <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 134px;"><span style="color: rgb(0, 0, 0); font-family: verdana, geneva, sans-serif; font-size: 11px; font-size: 13px;"><font color="#333333" face="sans-serif, Arial, Verdana, Trebuchet MS">Aracı Kurum Ünvan:</font></span></td> 
          <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 145px;"><span style="color:#000000;"><span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:for-each select="//n1:Invoice/cac:TaxRepresentativeParty"> 
               <xsl:value-of select="cac:PartyName/cbc:Name" /> 
               <br /> 
              </xsl:for-each></span></span></span></td> 
         </tr>
        </xsl:if> 
       </tbody> 
      </table> </td> 
    </tr> 
    <tr> 
     <td style="width: 205px;"><table align="left" border="0" cellpadding="0" cellspacing="0" id="customerPartyTable" style="border-top: 3px solid rgb(0, 0, 0); border-bottom: 3px solid rgb(0, 0, 0);" width="350"> 
       <tbody> 
        <tr> 
         <td align="left" style="width: 469px;">SAYIN</td> 
        </tr> 
        <tr> 
         <td align="left" style="width: 469px;"><span style="font-size: 14px;"><span style="font-family: verdana, geneva, sans-serif;">
            <xsl:choose> 
             <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
              <xsl:for-each select="//n1:Invoice"> 
               <xsl:for-each select="cac:AccountingCustomerParty"> 
                <xsl:for-each select="cac:Party">  
                 <xsl:if test="cac:PartyName"> 
                  <xsl:value-of select="cac:PartyName/cbc:Name"></xsl:value-of> 
                  <br /> 
                 </xsl:if> 
                 <xsl:for-each select="cac:Person"> 
                  <xsl:for-each select="cbc:Title"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:FirstName"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:MiddleName"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:FamilyName"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:NameSuffix"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                  </xsl:for-each> 
                 </xsl:for-each>  
                </xsl:for-each> 
               </xsl:for-each> 
              </xsl:for-each> 
             </xsl:when> 
             <xsl:otherwise> 
              <xsl:for-each select="//n1:Invoice"> 
               <xsl:for-each select="cac:BuyerCustomerParty"> 
                <xsl:for-each select="cac:Party">  
                 <xsl:if test="cac:PartyName"> 
                  <xsl:value-of select="cac:PartyName/cbc:Name"></xsl:value-of> 
                  <br /> 
                 </xsl:if> 
                 <xsl:for-each select="cac:Person"> 
                  <xsl:for-each select="cbc:Title"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:FirstName"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:MiddleName"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:FamilyName"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                   <span> 
                    <xsl:text> 
                    </xsl:text> </span> 
                  </xsl:for-each> 
                  <xsl:for-each select="cbc:NameSuffix"> 
                   <xsl:apply-templates></xsl:apply-templates> 
                  </xsl:for-each> 
                 </xsl:for-each>  
                </xsl:for-each> 
               </xsl:for-each> 
              </xsl:for-each> 
             </xsl:otherwise> 
            </xsl:choose></span></span></td> 
        </tr> 
        <tr align="left"> 
         <td align="left" style="width: 469px;"><span style="font-size: 11px;"><span style="font-family: verdana, geneva, sans-serif;"><span style="font-size: 12px;">
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName" /> 
              </xsl:otherwise> 
             </xsl:choose></span><font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> </span></font><br /> <span style="font-size: 12px;">
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingName" /> 
              </xsl:otherwise> 
             </xsl:choose> <font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> Bina No:</span></font>
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:BuildingNumber" /> 
              </xsl:otherwise> 
             </xsl:choose><font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> Kapı No:</span></font>
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Room" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:PostalAddress/cac:Party/cac:PostalAddress/cbc:Room" /> 
              </xsl:otherwise> 
             </xsl:choose><font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;">  </span></font>
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:Region" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:Region" /> 
              </xsl:otherwise> 
             </xsl:choose><br /> 
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone" /> 
              </xsl:otherwise> 
             </xsl:choose><font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> </span></font>
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CitySubdivisionName" /> 
              </xsl:otherwise> 
             </xsl:choose> <font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;">/</span></font>
             <xsl:choose> 
              <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName" /> 
              </xsl:when> 
              <xsl:otherwise> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName" /> 
              </xsl:otherwise> 
             </xsl:choose> </span></span></span></td> 
        </tr> 
        <tr> 
         <td align="left" style="width: 469px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
            <xsl:choose> 
             <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
              <xsl:if test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail !=''"> 
               <xsl:text>
                 E-Posta: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail" /> 
              </xsl:if> 
             </xsl:when> 
             <xsl:otherwise> 
              <xsl:if test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail != ''"> 
               <xsl:text>
                 E-Posta: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail" /> 
              </xsl:if> 
             </xsl:otherwise> 
            </xsl:choose></span></span></td> 
        </tr> 
        <tr> 
         <td align="left" style="width: 469px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
            <xsl:choose> 
             <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
              <xsl:if test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone !=''"> 
               <xsl:text>
                 Tel: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telephone" /> 
              </xsl:if> 
             </xsl:when> 
             <xsl:otherwise> 
              <xsl:if test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:Contact/cbc:Telephone != ''"> 
               <xsl:text>
                 Tel: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:Contact/cbc:Telephone" /> 
              </xsl:if> 
             </xsl:otherwise> 
            </xsl:choose><font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;"> </span></font>
            <xsl:choose> 
             <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
              <xsl:if test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telefax !=''"> 
               <xsl:text>
                 Faks: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:Telefax" /> 
              </xsl:if> 
             </xsl:when> 
             <xsl:otherwise> 
              <xsl:if test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:Contact/cbc:Telefax != ''"> 
               <xsl:text>
                 Faks: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:Contact/cbc:Telefax" /> 
              </xsl:if> 
             </xsl:otherwise> 
            </xsl:choose></span></span></td> 
        </tr> 
        <tr> 
         <td align="left" style="width: 469px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
            <xsl:choose> 
             <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
              <xsl:if test="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name !=''"> 
               <xsl:text>
                 Vergi Dairesi: 
               </xsl:text> 
               <xsl:value-of select="n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name" /> 
              </xsl:if> 
             </xsl:when> 
            </xsl:choose></span></span></td> 
        </tr> 
        <tr> 
         <td align="left" style="width: 469px;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
            <xsl:choose> 
             <xsl:when test="not(//n1:Invoice/cbc:ProfileID = 'YOLCUBERABERFATURA' or //n1:Invoice/cbc:ProfileID = 'IHRACAT')"> 
              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification"> 
               <xsl:variable name="schemeID" select="cbc:ID/@schemeID"></xsl:variable> 
               <xsl:if test="$schemeID ='TCKN' or $schemeID ='VKN'"> 
                <xsl:value-of select="$schemeID"></xsl:value-of> : 
                <xsl:value-of select="cbc:ID"></xsl:value-of> 
               </xsl:if> 
              </xsl:for-each> 
             </xsl:when> 
            </xsl:choose></span></span></td> 
        </tr> 
       </tbody> 
      </table></td> 
     <td style="width: 173px;;text-align: center;"> </td> 
     <td colspan="2" style="width: 269px;" align="left"> <span style="font-size:11px;"><span style="font-family: verdana,geneva,sans-serif;"><font face="sans-serif, Arial, Verdana, Trebuchet MS"><span style="font-size: 13px;">ETTN: </span></font>
        <xsl:value-of select="n1:Invoice/cbc:UUID" /></span></span></td> 
    </tr> 
    <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode = 'SGK'">
     <tr> 
      <td style="width: 205px;"> </td> 
      <td style="width: 173px;"> </td> 
      <td colspan="2" style="width: 269px;"> </td> 
     </tr>
    </xsl:if> 
   </tbody> 
  </table> 
  <table border="2" cellpadding="0" cellspacing="1" height="247" style="border-collapse:collapse;border-color:rgb(0, 0, 0);border-style:solid;border-width:0px;font-family:sans-serif,arial,verdana,trebuchet ms;height:0px;width:800px;" width="793"> 
   <tbody> 
    <tr> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 22px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">S.No</span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 74px; text-align: center;"><strong style="color: rgb(0, 0, 0); font-family: sans-serif, arial, verdana, &quot;trebuchet ms&quot;; font-size: 11px; text-align: center;"><span style="font-family: verdana, geneva, sans-serif;">Kodu</span></strong></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 241px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">Malzeme veya Hizmet Açıklaması</span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 92px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">Miktar</span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 100px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">Birim Fiyat</span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 54px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">İsk. Or. </span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 62px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">KDV (%)</span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 47px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">Diğ.Ver. </span></strong></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 124px; text-align: center;"><span style="color:#000000;"><span style="font-size:11px;"><strong><span style="font-family: verdana, geneva, sans-serif;">Tutarı</span></strong></span></span></td> 
    </tr> 
    <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
     <tr> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 22px; text-align: center;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
          <xsl:value-of select="./cbc:ID" /></span></span></span></td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 74px;"> <p><span style="color:#000000;"><span style="font-size:12px;"><span style="font-family:verdana,geneva,sans-serif;">
           <xsl:choose> 
            <xsl:when test="./cac:Item/cac:SellersItemIdentification/cbc:ID != ''"> 
             <xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"></xsl:value-of> 
            </xsl:when> 
            <xsl:when test="./cac:Item/cbc:Name != ''"> 
             <xsl:value-of select="./cac:Item/cbc:Name"></xsl:value-of> 
            </xsl:when> 
           </xsl:choose></span></span></span></p> </td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 241px;"> <p><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
           <xsl:value-of select="./cac:Item/cbc:Description" /></span></span></span></p> </td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 92px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
          <xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,####', 'european')"></xsl:value-of>  
          <xsl:if test="./cbc:InvoicedQuantity/@unitCode"> 
           <xsl:for-each select="./cbc:InvoicedQuantity"> 
            <xsl:text> 
            </xsl:text> 
            <xsl:choose> 
             <xsl:when test="@unitCode  = 'SA'"> 
              <span> 
               <xsl:text>
                ÇUVAL
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = '26'"> 
              <span> 
               <xsl:text>
                Ton
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BX'"> 
              <span> 
               <xsl:text>
                Kutu
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'LTR'"> 
              <span> 
               <xsl:text>
                LT
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'EA'"> 
              <span> 
               <xsl:text>
                Adet
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'NIU'"> 
              <span> 
               <xsl:text>
                Adet
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'C62'"> 
              <span> 
               <xsl:text>
                Adet
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KGM'"> 
              <span> 
               <xsl:text>
                KG
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KJO'"> 
              <span> 
               <xsl:text>
                kJ
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'GRM'"> 
              <span> 
               <xsl:text>
                GR
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MGM'"> 
              <span> 
               <xsl:text>
                MG
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'NT'"> 
              <span> 
               <xsl:text>
                Net Ton
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'GT'"> 
              <span> 
               <xsl:text>
                Gross Ton
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MTR'"> 
              <span> 
               <xsl:text>
                M
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MMT'"> 
              <span> 
               <xsl:text>
                MM
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KTM'"> 
              <span> 
               <xsl:text>
                KM
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MLT'"> 
              <span> 
               <xsl:text>
                ML
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MMQ'"> 
              <span> 
               <xsl:text>
                MM³
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CLT'"> 
              <span> 
               <xsl:text>
                CL
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CMK'"> 
              <span> 
               <xsl:text>
                CM²
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CMQ'"> 
              <span> 
               <xsl:text>
                CM³
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CMT'"> 
              <span> 
               <xsl:text>
                CM
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MTK'"> 
              <span> 
               <xsl:text>
                M²
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MTQ'"> 
              <span> 
               <xsl:text>
                M³
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'DAY'"> 
              <span> 
               <xsl:text>
                Gün
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MON'"> 
              <span> 
               <xsl:text>
                Ay
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'PA'"> 
              <span> 
               <xsl:text>
                Paket
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KWH'"> 
              <span> 
               <xsl:text>
                KWH
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'INH'"> 
              <span> 
               <xsl:text>
                IN
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'FOT'"> 
              <span> 
               <xsl:text>
                FT
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MMK'"> 
              <span> 
               <xsl:text>
                MM²
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'INK'"> 
              <span> 
               <xsl:text>
                IN²
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'FTK'"> 
              <span> 
               <xsl:text>
                FT²
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'INQ'"> 
              <span> 
               <xsl:text>
                IN³
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'FTQ'"> 
              <span> 
               <xsl:text>
                FT³
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'ONZ'"> 
              <span> 
               <xsl:text>
                OZ
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'LBR'"> 
              <span> 
               <xsl:text>
                LB
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'PR'"> 
              <span> 
               <xsl:text>
                Çift
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BE'"> 
              <span> 
               <xsl:text>
                Deste
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'PK'"> 
              <span> 
               <xsl:text>
                Koli
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'SW'"> 
              <span> 
               <xsl:text>
                Top
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'QB'"> 
              <span> 
               <xsl:text>
                Cilt
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'SEC'"> 
              <span> 
               <xsl:text>
                Saniye
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = '5C'"> 
              <span> 
               <xsl:text>
                Teneke
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'MIN'"> 
              <span> 
               <xsl:text>
                Dakika
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'DZN'"> 
              <span> 
               <xsl:text>
                Düzine
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'DPC'"> 
              <span> 
               <xsl:text>
                Düzine
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = '5B'"> 
              <span> 
               <xsl:text>
                Takım
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'DMQ'"> 
              <span> 
               <xsl:text>
                Desimetreküp
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'WEE'"> 
              <span> 
               <xsl:text>
                Hafta
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'HUR'"> 
              <span> 
               <xsl:text>
                Saat
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'ANN'"> 
              <span> 
               <xsl:text>
                Yıl
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'RO'"> 
              <span> 
               <xsl:text>
                Rulo
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CTM'"> 
              <span> 
               <xsl:text>
                Karat
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'PTN'"> 
              <span> 
               <xsl:text>
                Parça,Kısım
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'B4'"> 
              <span> 
               <xsl:text>
                Varil
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = '28'"> 
              <span> 
               <xsl:text>
                KG
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BG'"> 
              <span> 
               <xsl:text>
                Çuval
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BJ'"> 
              <span> 
               <xsl:text>
                Kova
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BK'"> 
              <span> 
               <xsl:text>
                Sepet
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BL'"> 
              <span> 
               <xsl:text>
                Balya
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'BO'"> 
              <span> 
               <xsl:text>
                Şişe
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CO'"> 
              <span> 
               <xsl:text>
                Damacana
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CQ'"> 
              <span> 
               <xsl:text>
                Kartuş
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CS'"> 
              <span> 
               <xsl:text>
                Kasa
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CT'"> 
              <span> 
               <xsl:text>
                Karton
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = '11'"> 
              <span> 
               <xsl:text>
                Takım
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = '2W'"> 
              <span> 
               <xsl:text>
                Sepet
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'B32'"> 
              <span> 
               <xsl:text>
                KG-METRE KARE
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'CCT'"> 
              <span> 
               <xsl:text>
                TON BAŞINA TAŞIMA KAPASİTESİ
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'D30'"> 
              <span> 
               <xsl:text>
                BRÜT KALORİ DEĞERİ
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'D40'"> 
              <span> 
               <xsl:text>
                BİN LİTRE
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'GFI'"> 
              <span> 
               <xsl:text>
                FISSILE İZOTOP GRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'H62'"> 
              <span> 
               <xsl:text>
                YÜZ ADET
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'K20'"> 
              <span> 
               <xsl:text>
                KİLOGRAM POTASYUM OKSİT
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'K58'"> 
              <span> 
               <xsl:text>
                KURUTULMUŞ NET AĞIRLIKLI KİLOGRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'K62'"> 
              <span> 
               <xsl:text>
                KİLOGRAM-ADET
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KMA'"> 
              <span> 
               <xsl:text>
                METİL AMİNLERİN KİLOGRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KNI'"> 
              <span> 
               <xsl:text>
                AZOTUN KİLOGRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KPH'"> 
              <span> 
               <xsl:text>
                Kg POTASYUM OKSİD
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KSD'"> 
              <span> 
               <xsl:text>
                %90 KURU ÜRÜN KİLOGRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KSH'"> 
              <span> 
               <xsl:text>
                SODYUM HİDROKSİT KİLOGRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KUR'"> 
              <span> 
               <xsl:text>
                URANYUM KİLOGRAMI
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KWT'"> 
              <span> 
               <xsl:text>
                KİLOWATT
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'KWT'"> 
              <span> 
               <xsl:text>
                KİLOWATT
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'LPA'"> 
              <span> 
               <xsl:text>
                SAF ALKOL LİTRESİ
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'NCL'"> 
              <span> 
               <xsl:text>
                HÜCRE ADEDİ
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'R9'"> 
              <span> 
               <xsl:text>
                BİN METRE KÜP
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'SET'"> 
              <span> 
               <xsl:text>
                SET
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'T3'"> 
              <span> 
               <xsl:text>
                BİN ADET
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'D61'"> 
              <span> 
               <xsl:text>
                Dakika
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:when test="@unitCode  = 'D62'"> 
              <span> 
               <xsl:text>
                Saniye
               </xsl:text> </span> 
             </xsl:when> 
             <xsl:otherwise> 
              <span> 
               <xsl:value-of select="@unitCode"></xsl:value-of> </span> 
             </xsl:otherwise> 
            </xsl:choose> 
           </xsl:for-each> 
          </xsl:if></span></span></span></td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 100px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
          <xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,0000', 'european')" /> 
          <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID"> 
           <xsl:text> 
           </xsl:text> 
           <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = 'TRY' "> 
            <xsl:text>
             TL
            </xsl:text> 
           </xsl:if> 
           <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != 'TRY'"> 
            <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID" /> 
           </xsl:if> 
          </xsl:if> </span></span></span></td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 54px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;"> 
          <xsl:for-each select="./cac:AllowanceCharge"> 
           <xsl:text> 
           </xsl:text> 
           <table id="allowanceChargeRateTable" border="0" cellpadding="0" cellspacing="0" align="right" tagid="allowanceChargeRate" style="clear:both" width="100%"> 
            <tbody> 
             <tr id="budgetContainerTr" align="right"> 
              <td align="right"> 
               <xsl:text>
                 % 
               </xsl:text> 
               <xsl:value-of select="format-number(cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')" /> </td> 
             </tr> 
            </tbody> 
           </table> 
          </xsl:for-each></span></span></span></td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 62px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
          <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme"> 
           <xsl:if test="cbc:TaxTypeCode='0015' "> 
            <xsl:if test="../../cbc:Percent"> 
             <xsl:text>
               %
             </xsl:text> 
             <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')" /> 
            </xsl:if> 
           </xsl:if> 
          </xsl:for-each> </span></span></span></td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 47px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
          <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme"> 
           <xsl:if test="cbc:TaxTypeCode!='0015' "> 
            <xsl:text> 
            </xsl:text> 
            <xsl:value-of select="cbc:Name" /> 
            <xsl:if test="../../cbc:Percent"> 
             <xsl:text>
               (%
             </xsl:text> 
             <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')" /> 
             <xsl:text>
              )=
             </xsl:text> 
            </xsl:if> 
            <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')" /> 
            <xsl:if test="../../cbc:TaxAmount/@currencyID"> 
             <xsl:text> 
             </xsl:text> 
             <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'"> 
              <xsl:text>
               TL
              </xsl:text> 
             </xsl:if> 
             <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'"> 
              <xsl:value-of select="../../cbc:TaxAmount/@currencyID" /> 
             </xsl:if> 
            </xsl:if> 
           </xsl:if> 
          </xsl:for-each>
          <xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal">
           <xsl:if test="not(cbc:TaxAmount = 0)">
            <xsl:choose>
             <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
              <xsl:text>
               Diğer Vergiler Toplamı 
              </xsl:text>
             </xsl:when>
             <xsl:otherwise>
              <xsl:text>
               Tevkifat (
              </xsl:text>
              <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode" />
              <xsl:text>
               -
              </xsl:text>
              <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name" />
              <xsl:text>
               )
              </xsl:text>
             </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="cbc:Percent !=''">
             <xsl:text>
              (%
             </xsl:text>
             <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')" />
             <xsl:text>
              )= 
             </xsl:text>
            </xsl:if>
            <xsl:value-of select="format-number(../cbc:TaxAmount, '###.##0,00', 'european')" />
            <xsl:if test="../cbc:TaxAmount/@currencyID">
             <xsl:if test="../cbc:TaxAmount/@currencyID = 'TRY'">
              <xsl:text>
               TL
              </xsl:text>
             </xsl:if>
             <xsl:if test="../cbc:TaxAmount/@currencyID != 'TRY'">
              <xsl:value-of select="../cbc:TaxAmount/@currencyID" />
             </xsl:if>
            </xsl:if>
           </xsl:if>
          </xsl:for-each> </span></span></span></td> 
      <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 124px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
          <xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')" /> 
          <xsl:if test="./cbc:LineExtensionAmount/@currencyID"> 
           <xsl:text> 
           </xsl:text> 
           <xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRY' "> 
            <xsl:text>
             TL
            </xsl:text> 
           </xsl:if> 
           <xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRY' "> 
            <xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"> 
            </xsl:value-of>
           </xsl:if> 
          </xsl:if> </span></span></span></td> 
     </tr>
    </xsl:for-each> 
    <tr> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 22px; text-align: center;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 74px;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 241px;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 92px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 100px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 54px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 62px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 47px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 124px; text-align: right;"> </td> 
    </tr> 
    <tr> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 22px;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 74px;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 241px;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
         <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
          <xsl:text> 
          </xsl:text>
          <xsl:value-of select="./cbc:AllowanceChargeReason"></xsl:value-of>
         </xsl:for-each></span></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 92px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 100px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 54px; text-align: right;"><span style="color:#000000;"><span style="font-size: 12px;"><span style="font-family: verdana, geneva, sans-serif;">
         <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
          <xsl:text></xsl:text>
          <xsl:text>
           %
          </xsl:text>
          <xsl:value-of select="format-number(cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')" />
         </xsl:for-each></span></span></span></td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 62px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 47px; text-align: right;"> </td> 
     <td style="border-width: 0.05em; border-style: solid; border-color: rgb(132, 132, 132); width: 124px;"> </td> 
    </tr> 
   </tbody> 
  </table> 
  <table border="0" cellpadding="0" cellspacing="0" style="width: 800px;"> 
   <tbody> 
    <tr> 
     <td align="right"> 
      <table border="1" bordercolor="#a4a4a4" cellpadding="0" cellspacing="0" id="budgetContainerTable" style="width: 371px;" width="500"> 
       <tbody> 
        <tr align="right" id="budgetContainerTr"> 
         <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Mal / Hizmet Toplam Tutarı</span></span></span></span></td> 
         <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')" /> 
             <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"> 
              <xsl:text> 
              </xsl:text> 
              <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRY'"> 
               <xsl:text>
                TL
               </xsl:text> 
              </xsl:if> 
              <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'"> 
               <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID" /> 
              </xsl:if> 
             </xsl:if> </span></span></span></td> 
        </tr> 
        <xsl:if test="//n1:Invoice/cbc:ProfileID = 'IHRACAT' and //n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true' and //n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason = 'Navlun'">
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Navlun</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:choose> 
               <xsl:when test="//n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true'"> 
                <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge"> 
                 <xsl:if test="cbc:AllowanceChargeReason = 'Navlun'"> 
                  <xsl:value-of select="format-number(cbc:Amount, '###.##0,00', 'european')"></xsl:value-of> 
                  <xsl:if test="cbc:Amount/@currencyID"> 
                   <xsl:text> 
                   </xsl:text> 
                   <xsl:if test="cbc:Amount/@currencyID = 'TRY'"> 
                    <xsl:text>
                       TL 
                    </xsl:text> 
                   </xsl:if> 
                   <xsl:if test="cbc:Amount/@currencyID != 'TRY'">   
                    <xsl:value-of select="cbc:Amount/@currencyID"></xsl:value-of> 
                   </xsl:if> 
                  </xsl:if> 
                 </xsl:if> 
                </xsl:for-each> 
               </xsl:when> 
              </xsl:choose></span></span></span></td> 
         </tr>
        </xsl:if> 
        <xsl:if test="//n1:Invoice/cbc:ProfileID = 'IHRACAT' and //n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true' and //n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason = 'Sigorta'">
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Sigorta</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:choose> 
               <xsl:when test="//n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true'"> 
                <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge"> 
                 <xsl:if test="cbc:AllowanceChargeReason = 'Sigorta'"> 
                  <xsl:value-of select="format-number(cbc:Amount, '###.##0,00', 'european')"></xsl:value-of> 
                  <xsl:if test="cbc:Amount/@currencyID"> 
                   <xsl:text></xsl:text> 
                   <xsl:if test="cbc:Amount/@currencyID = 'TRY'"> 
                    <xsl:text>
                       TL 
                    </xsl:text> 
                   </xsl:if> 
                   <xsl:if test="cbc:Amount/@currencyID != 'TRY'">   
                    <xsl:value-of select="cbc:Amount/@currencyID"></xsl:value-of> 
                   </xsl:if> 
                  </xsl:if> 
                 </xsl:if> 
                </xsl:for-each> 
               </xsl:when> 
              </xsl:choose></span></span></span></td> 
         </tr>
        </xsl:if> 
        <tr align="right" id="budgetContainerTr"> 
         <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><strong><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:text>
               Toplam İskonto
              </xsl:text> 
              <xsl:if test="//n1:Invoice/cac:AllowanceCharge/cbc:MultiplierFactorNumeric"> 
               <xsl:text>
                (%
               </xsl:text> 
               <xsl:value-of select="format-number((//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount*100) div //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')" />
               <xsl:text>
                )
               </xsl:text> 
              </xsl:if></span></strong></span></span></td> 
         <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')" /> 
             <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"> 
              <xsl:text> 
              </xsl:text> 
              <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID = 'TRY'"> 
               <xsl:text>
                TL
               </xsl:text> 
              </xsl:if> 
              <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID != 'TRY'"> 
               <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID" /> 
              </xsl:if> 
             </xsl:if> </span></span></span></td> 
        </tr> 
        <xsl:if test="//n1:Invoice/cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><strong><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Toplam Masraf</span></span></strong></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount, '###.##0,00', 'european')"></xsl:value-of> 
              <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID"> 
               <xsl:text></xsl:text> 
               <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID = 'TRY'"> 
                <xsl:text>
                 TL
                </xsl:text> 
               </xsl:if> 
               <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID != 'TRY'"> 
                <xsl:text> 
                </xsl:text> 
                <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount/@currencyID"></xsl:value-of> 
               </xsl:if> 
              </xsl:if> </span></span></span></td> 
         </tr>
        </xsl:if> 
        <tr align="right" id="budgetContainerTr"> 
         <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><strong><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal"> 
               <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%" tagid="taxtable"> 
                <tbody>
                 <tr align="right" style="width: 319px;"> 
                  <td width="100%" align="right"> <span style="font-weight:bold; "> 
                    <xsl:choose> 
                     <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''"> 
                      <xsl:text>
                        Diğer Vergiler Toplamı 
                      </xsl:text> 
                     </xsl:when> 
                     <xsl:otherwise> 
                      <xsl:text>
                        Hesaplanan 
                      </xsl:text> 
                      <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"></xsl:value-of> 
                     </xsl:otherwise> 
                    </xsl:choose> 
                    <xsl:text>
                      (% 
                    </xsl:text> 
                    <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"></xsl:value-of> 
                    <xsl:text>
                      ) 
                    </xsl:text> </span> </td> 
                 </tr> 
                </tbody>
               </table> 
              </xsl:for-each></span></strong></span></span></td> 
         <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal"> 
              <table id="taxSubtotalsTable" cellpadding="0" cellspacing="0" align="right" tagid="taxtable" style="clear:both" width="100%"> 
               <tbody>
                <tr id="budgetContainerTr" align="right"> 
                 <td align="right"> 
                  <xsl:for-each select="cac:TaxCategory/cac:TaxScheme"> 
                   <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"></xsl:value-of> 
                   <xsl:if test="../../cbc:TaxAmount/@currencyID"> 
                    <xsl:text> 
                    </xsl:text> 
                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'"> 
                     <xsl:text>
                       TL 
                     </xsl:text> 
                    </xsl:if> 
                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'"> 
                     <xsl:value-of select="../../cbc:TaxAmount/@currencyID"></xsl:value-of> 
                    </xsl:if> 
                   </xsl:if> 
                  </xsl:for-each> </td> 
                </tr> 
               </tbody>
              </table> 
             </xsl:for-each> </span></span></span></td> 
        </tr> 
        <tr align="right" id="budgetContainerTr"> 
         <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><strong><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal"> 
               <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)"> 
                <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%"> 
                 <tbody>
                  <tr align="right" style="width: 319px;" height="80"> 
                   <td width="100%" align="right" style="border-bottom: 1px solid #a4a4a4;"> <span style="font-weight:bold; "> 
                     <xsl:choose> 
                      <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''"> 
                       <xsl:text>
                        Diğer Vergiler Toplamı 
                       </xsl:text> 
                      </xsl:when> 
                      <xsl:otherwise> 
                       <xsl:text>
                        Tevkifat 
                       </xsl:text> 
                       <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name" /> 
                      </xsl:otherwise> 
                     </xsl:choose> 
                     <xsl:text>
                      (%
                     </xsl:text> 
                     <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')" /> 
                     <xsl:text>
                      )
                     </xsl:text> </span> </td> 
                  </tr>   
                 </tbody>
                </table>
               </xsl:if>
              </xsl:for-each></span></strong></span></span></td> 
         <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal"> 
              <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)"> 
               <table id="taxSubtotalsTable" cellpadding="0" cellspacing="0" align="right" style="clear:both" width="100%"> 
                <tbody>
                 <tr id="budgetContainerTr" align="right" height="80"> 
                  <td align="right" style="border-bottom: 1px solid #a4a4a4;"> 
                   <xsl:for-each select="cac:TaxCategory/cac:TaxScheme"> 
                    <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')" /> 
                    <xsl:if test="../../cbc:TaxAmount/@currencyID"> 
                     <xsl:text> 
                     </xsl:text> 
                     <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'"> 
                      <xsl:text>
                       TL
                      </xsl:text> 
                     </xsl:if> 
                     <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'"> 
                      <xsl:value-of select="../../cbc:TaxAmount/@currencyID" /> 
                     </xsl:if> 
                    </xsl:if> 
                   </xsl:for-each> </td> 
                 </tr>   
                </tbody>
               </table>
              </xsl:if>
             </xsl:for-each></span></span></span></td> 
        </tr> 
        <tr align="right" id="budgetContainerTr"> 
         <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Vergiler Dahil Toplam Tutar</span></span></span></span></td> 
         <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice"> 
              <xsl:for-each select="cac:LegalMonetaryTotal"> 
               <xsl:for-each select="cbc:TaxInclusiveAmount"> 
                <xsl:value-of select="format-number(., '###.##0,00', 'european')" /> 
                <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"> 
                 <xsl:text> 
                 </xsl:text> 
                 <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRY'"> 
                  <xsl:text>
                   TL
                  </xsl:text> 
                 </xsl:if> 
                 <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID != 'TRY'"> 
                  <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"> 
                  </xsl:value-of>
                 </xsl:if> 
                </xsl:if> 
               </xsl:for-each> 
              </xsl:for-each> 
             </xsl:for-each> </span></span></span></td> 
        </tr> 
        <tr align="right" id="budgetContainerTr"> 
         <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Ödenecek Tutar</span></span></span></span></td> 
         <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
             <xsl:for-each select="//n1:Invoice"> 
              <xsl:for-each select="cac:LegalMonetaryTotal"> 
               <xsl:for-each select="cbc:PayableAmount"> 
                <xsl:value-of select="format-number(., '###.##0,00', 'european')" /> 
                <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"> 
                 <xsl:text> 
                 </xsl:text> 
                 <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID = 'TRY'"> 
                  <xsl:text>
                   TL
                  </xsl:text> 
                 </xsl:if> 
                 <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID != 'TRY'"> 
                  <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID" /> 
                 </xsl:if> 
                </xsl:if> 
               </xsl:for-each> 
              </xsl:for-each> 
             </xsl:for-each> </span></span></span></td> 
        </tr> 
       </tbody> 
      </table> </td> 
    </tr> 
    <tr> 
     <td align="right">  
      <xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
       <table border="1" bordercolor="#a4a4a4" cellpadding="0" cellspacing="0" id="budgetContainerTable" style="width: 371px;" width="500"> 
        <tbody> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Döviz Kuru (</span><strong>
               <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode" /></strong><span style="font-weight: bold;">)</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;">
              <xsl:value-of select="format-number(//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,0000', 'european')" /> 
              <xsl:text> 
              </xsl:text> 
              <xsl:text>
               TL
              </xsl:text></span></span></span></td> 
         </tr> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Mal / Hizmet Toplam Tutarı</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference"> 
               <xsl:if test="cbc:DocumentType = 'LINEEXTENSIONAMOUNT'"> 
                <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
               </xsl:if> 
              </xsl:for-each> 
              <xsl:text> 
              </xsl:text> 
              <xsl:text>
               TL
              </xsl:text></span></span></span></td> 
         </tr> 
         <xsl:if test="//n1:Invoice/cbc:ProfileID = 'IHRACAT' and //n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true' and //n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason = 'Navlun'">
          <tr align="right" id="budgetContainerTr"> 
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Navlun</span></span></span></span></td> 
           <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
               <xsl:choose> 
                <xsl:when test="//n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true'"> 
                 <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge"> 
                  <xsl:if test="cbc:AllowanceChargeReason = 'Navlun'"> 
                   <xsl:value-of select="format-number(cbc:Amount * ../cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"></xsl:value-of> 
                   <xsl:text>
                      TL 
                   </xsl:text> 
                  </xsl:if> 
                 </xsl:for-each> 
                </xsl:when> 
               </xsl:choose></span></span></span></td> 
          </tr>
         </xsl:if> 
         <xsl:if test="//n1:Invoice/cbc:ProfileID = 'IHRACAT' and //n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true' and //n1:Invoice/cac:AllowanceCharge/cbc:AllowanceChargeReason = 'Sigorta'">
          <tr align="right" id="budgetContainerTr"> 
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Sigorta</span></span></span></span></td> 
           <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
               <xsl:choose> 
                <xsl:when test="//n1:Invoice/cac:AllowanceCharge and //n1:Invoice/cac:AllowanceCharge/cbc:ChargeIndicator = 'true'"> 
                 <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge"> 
                  <xsl:if test="cbc:AllowanceChargeReason = 'Sigorta'"> 
                   <xsl:value-of select="format-number(cbc:Amount * ../cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"></xsl:value-of> 
                   <xsl:text>
                      TL 
                   </xsl:text> 
                  </xsl:if> 
                 </xsl:for-each> 
                </xsl:when> 
               </xsl:choose></span></span></span></td> 
          </tr>
         </xsl:if> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Toplam İskonto</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference"> 
               <xsl:if test="cbc:DocumentType = 'ALLOWANCETOTALAMOUNT'"> 
                <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
               </xsl:if> 
              </xsl:for-each> 
              <xsl:text> 
              </xsl:text> 
              <xsl:text>
               TL
              </xsl:text></span></span></span></td> 
         </tr> 
         <xsl:if test="//n1:Invoice/cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
          <tr align="right" id="budgetContainerTr"> 
           <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Toplam Masraf</span></span></span></span></td> 
           <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"></span></span></span></td> 
          </tr>
         </xsl:if> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><strong><span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal"> 
                <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%" tagid="taxtable"> 
                 <tbody>
                  <tr align="right" style="width: 319px;"> 
                   <td width="100%" align="right"> <span style="font-weight:bold; "> 
                     <xsl:choose> 
                      <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''"> 
                       <xsl:text>
                         Diğer Vergiler Toplamı 
                       </xsl:text> 
                      </xsl:when> 
                      <xsl:otherwise> 
                       <xsl:text>
                         Hesaplanan 
                       </xsl:text> 
                       <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"></xsl:value-of> 
                      </xsl:otherwise> 
                     </xsl:choose> 
                     <xsl:text>
                       (% 
                     </xsl:text> 
                     <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"></xsl:value-of> 
                     <xsl:text>
                       ) 
                     </xsl:text> </span> </td> 
                  </tr> 
                 </tbody>
                </table> 
               </xsl:for-each></span></strong></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal"> 
               <xsl:variable name="var_Percent" select="cbc:Percent"></xsl:variable> 
               <xsl:variable name="var_TaxTypeCode" select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"></xsl:variable> 
               <xsl:text> 
               </xsl:text> 
               <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference"> 
                <xsl:variable name="var_DocumentType" select="cbc:DocumentType"></xsl:variable> 
                <xsl:variable name="var_DocumentTypeCode" select="cbc:DocumentTypeCode"></xsl:variable> 
                <xsl:if test="$var_DocumentType = $var_Percent and $var_DocumentTypeCode = $var_TaxTypeCode and not($var_Percent = '0.0000') "> 
                 <table id="taxSubtotalsTable" border="0" cellpadding="0" cellspacing="0" align="right" tagid="taxtable" style="clear:both" width="100%"> 
                  <tbody> 
                   <tr id="budgetContainerTr" align="right"> 
                    <td align="right"> 
                     <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
                     <xsl:text> 
                     </xsl:text> 
                     <xsl:text>
                       TL 
                     </xsl:text> </td> 
                   </tr> 
                  </tbody> 
                 </table> 
                </xsl:if> 
               </xsl:for-each> 
              </xsl:for-each> </span></span></span></td> 
         </tr> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><strong><span style="font-family: verdana,geneva,sans-serif;">
               <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal"> 
                <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)"> 
                 <table id="taxSubtotalHeaderTable" cellpadding="0" cellspacing="0" width="100%"> 
                  <tbody>
                   <tr align="right" style="width: 319px;" height="80"> 
                    <td width="100%" align="right" style="border-bottom: 1px solid #a4a4a4;"> <span style="font-weight:bold; "> 
                      <xsl:choose> 
                       <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''"> 
                        <xsl:text>
                         Diğer Vergiler Toplamı 
                        </xsl:text> 
                       </xsl:when> 
                       <xsl:otherwise> 
                        <xsl:text>
                         Tevkifat 
                        </xsl:text> 
                        <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name" /> 
                       </xsl:otherwise> 
                      </xsl:choose> 
                      <xsl:text>
                       (%
                      </xsl:text> 
                      <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')" /> 
                      <xsl:text>
                       )
                      </xsl:text> </span> </td> 
                   </tr>   
                  </tbody>
                 </table>
                </xsl:if>
               </xsl:for-each></span></strong></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal"> 
               <xsl:variable name="var_Percent" select="cbc:Percent"></xsl:variable> 
               <xsl:variable name="var_TaxTypeCode" select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"></xsl:variable> 
               <xsl:text> 
               </xsl:text> 
               <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference"> 
                <xsl:variable name="var_DocumentType" select="cbc:DocumentType"></xsl:variable> 
                <xsl:variable name="var_DocumentTypeCode" select="cbc:DocumentTypeCode"></xsl:variable> 
                <xsl:choose> 
                 <xsl:when test="string(number($var_Percent)) != 'NaN' and string(number($var_DocumentType)) != 'NaN'"> 
                  <xsl:if test="(number($var_DocumentType) = number($var_Percent)) and $var_DocumentTypeCode = $var_TaxTypeCode and not(number($var_Percent) = 0) "> 
                   <table id="taxSubtotalsTable" border="0" cellpadding="0" cellspacing="0" align="right" tagid="taxtable" style="clear:both" width="100%"> 
                    <tbody> 
                     <tr id="budgetContainerTr" align="right" height="80"> 
                      <td align="right" style="border-bottom: 1px solid #a4a4a4;"> 
                       <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
                       <xsl:text> 
                       </xsl:text> 
                       <xsl:text>
                         TL 
                       </xsl:text> </td> 
                     </tr> 
                    </tbody> 
                   </table> 
                  </xsl:if> 
                 </xsl:when> 
                 <xsl:otherwise> 
                  <xsl:if test="$var_DocumentType = $var_Percent and $var_DocumentTypeCode = $var_TaxTypeCode and not($var_Percent = '0.0000') "> 
                   <table id="taxSubtotalsTable" border="0" cellpadding="0" cellspacing="0" align="right" tagid="taxtable" style="clear:both" width="100%"> 
                    <tbody> 
                     <tr id="budgetContainerTr" align="right" height="80"> 
                      <td align="right" style="border-bottom: 1px solid #a4a4a4;"> 
                       <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
                       <xsl:text> 
                       </xsl:text> 
                       <xsl:text>
                         TL 
                       </xsl:text> </td> 
                     </tr> 
                    </tbody> 
                   </table> 
                  </xsl:if> 
                 </xsl:otherwise> 
                </xsl:choose> 
               </xsl:for-each> 
              </xsl:for-each> </span></span></span></td> 
         </tr> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Vergiler Dahil Toplam Tutar</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference"> 
               <xsl:if test="cbc:DocumentType = 'TAXINCLUSIVEAMOUNT'"> 
                <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
               </xsl:if> 
              </xsl:for-each> 
              <xsl:text> 
              </xsl:text> 
              <xsl:text>
               TL
              </xsl:text></span></span></span></td> 
         </tr> 
         <tr align="right" id="budgetContainerTr"> 
          <td align="right" id="lineTableBudgetTd" style="width: 319px;" width="200"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"><span style="font-weight: bold;">Ödenecek Tutar</span></span></span></span></td> 
          <td align="right" id="lineTableBudgetTd" style="width: 120px;"><span style="font-size:12px;"><span style="color:#000000;"><span style="font-family: verdana,geneva,sans-serif;"> 
              <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference"> 
               <xsl:if test="cbc:DocumentType = 'PAYABLEAMOUNT'"> 
                <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')" /> 
               </xsl:if> 
              </xsl:for-each> 
              <xsl:text> 
              </xsl:text> 
              <xsl:text>
               TL
              </xsl:text></span></span></span></td> 
         </tr> 
        </tbody> 
       </table>
      </xsl:if> </td> 
    </tr> 
   </tbody> 
  </table> 
  <p> </p> 
  <table border="1" cellpadding="0" cellspacing="0" style="width: 800px;"> 
   <thead> 
    <tr> 
     <th scope="col" style="width: 241px; text-align: center;"><font face="verdana, geneva, sans-serif"><span style="font-size: 12px;">BANKA ADI</span></font></th> 
     <th scope="col" style="width: 200px; text-align: center;"><span style="font-family: verdana, geneva, sans-serif; font-size: 12px; font-weight: 700; text-align: center;">ŞUBE  / HESAP</span></th> 
     <th scope="col" style="width: 395px; text-align: center;"><span style="font-family: verdana, geneva, sans-serif; font-size: 12px;">IBAN NO</span></th> 
    </tr> 
   </thead> 
   <tbody> 
    <tr> 
     <td style="width: 241px; text-align: center;"><span style="color: rgb(0, 0, 0); font-size: 12px; text-align: center;">Garanti Bankası İbrahimAğa Şb.</span><span style="color: rgb(0, 0, 0); font-size: 12px; text-align: center;"> </span></td> 
     <td style="width: 200px; text-align: center;"><span style="color:#000000;"><span style="font-size:12px;"><span style="text-align: center;">(1202) 6298157</span></span></span></td> 
     <td style="width: 395px; text-align: center;"><span style="color:#000000;"><span style="font-size:12px;">           TR54 0006 2001 2020 0006 2981 57</span></span></td> 
    </tr> 
    <tr> 
     <td style="width: 241px; text-align: center;"><span style="color:#000000;"><span style="font-size:12px;">Albaraka Türk Gebze Şb.<span style="text-align: center;"> </span></span></span></td> 
     <td style="width: 200px; text-align: center;"><span style="color:#000000;"><span style="font-size:12px;">(34) 667017</span></span></td> 
     <td style="width: 395px; text-align: center;"><span style="color:#000000;"><span style="font-size:12px;"><span style="text-align: center;">           </span>TR79 0020 3000 0066 7017 0000 01</span></span></td> 
    </tr> 
    <tr> 
     <td style="width: 241px; text-align: center;"><span style="color: rgb(0, 0, 0); font-size: 12px; text-align: center;">Vakıfbank Gebze Şb.</span></td> 
     <td style="width: 200px; text-align: center;"><span style="color: rgb(0, 0, 0); font-size: 12px; text-align: center;">(01006)</span></td> 
     <td style="width: 395px; text-align: center;"><span style="color: rgb(0, 0, 0); font-size: 12px; text-align: center;">           </span><span style="color: rgb(0, 0, 0); font-size: 12px; text-align: center;">TR78 0001 5001 5800 7305 3825 27</span></td> 
    </tr> 
   </tbody> 
  </table> 
  <table border="1" cellpadding="0" cellspacing="0" style="width: 800px;"> 
   <tbody> 
    <tr> 
     <td style="text-align: left;"> <p style="margin-left: 40px;"><br /> <span style="font-size: 10px;"><span style="color: rgb(105, 105, 105);"><span style="font-family: verdana,geneva,sans-serif;">
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID"> 
           <b>İban Numarası:</b> 
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID"></xsl:value-of> 
           <br /> 
          </xsl:if> 
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode"> 
           <b>Döviz Cinsi:</b> 
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode"></xsl:value-of> 
           <br /> 
          </xsl:if> 
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"> 
           <b>Ödeme Notu:</b> 
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"></xsl:value-of> 
           <br /> 
          </xsl:if> 
          <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"> 
           <b>Hesap Açıklaması:</b> 
           <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"></xsl:value-of> 
           <br /> 
          </xsl:if> 
          <xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note"> 
           <b>Ödeme Koşulu:</b> 
           <xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"></xsl:value-of> 
           <br /> 
          </xsl:if> 
          <xsl:if test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"> 
           <b>Vergi Muafiyet Sebebi</b> 
           <xsl:value-of select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"></xsl:value-of> 
           <br /> 
          </xsl:if> <br /> <br /> 
          <xsl:if test="//n1:Invoice/cbc:Note"> 
           <b>Genel Açıklamalar</b> 
           <br /> 
           <xsl:for-each select="//n1:Invoice/cbc:Note"> 
            <xsl:value-of select="."></xsl:value-of> 
            <br /> 
           </xsl:for-each> 
          </xsl:if> 
          <xsl:if test="(//n1:Invoice/cbc:ProfileID = 'EARSIVFATURA')"> 
           <br /> 
           <b><span style="color:red;"> 
             <xsl:text>
              e-Arşiv faturalarınızı elektronik ortamda görüntülemek ve indirilebilmek için "
             </xsl:text> <a target="_blank" href="https://faturasorgulama.elogo.com.tr">
              <xsl:text>
               https://faturasorgulama.elogo.com.tr
              </xsl:text></a> 
             <xsl:text>
              " platformunu kullanabilirsiniz.
             </xsl:text> </span></b> 
          </xsl:if>​</span></span></span></p> </td> 
    </tr> 
   </tbody> 
  </table> 
  <p><span style="font-size:14px;">İş bu fatura 30 gün içinde Ödenmediği takdirde fatura tarihinden itibaren aylık % 10 finansman farkı K.D.V. ile fatura edilecektir.</span></p> 
  <table border="1" cellpadding="0" cellspacing="0" style="width: 800px;"> 
   <tbody> 
    <tr> 
     <xsl:if test="string-length(normalize-space(string(//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID))) != 0">
      <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 10.6%; text-align: left;"><span style="font-size: 9px;"><strong><span style="color: rgb(105, 105, 105);"><span style="font-family: verdana,geneva,sans-serif;">İban Numarası</span></span></strong></span></td>
     </xsl:if> 
     <xsl:if test="string-length(normalize-space(string(//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID))) != 0">
      <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 10.6%; text-align: left;"><span style="color: rgb(105, 105, 105);"><span style="font-size: 10px;"><span style="font-family: verdana,geneva,sans-serif;">
          <xsl:value-of select="./cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:ID"></xsl:value-of></span></span></span></td>
     </xsl:if> 
     <xsl:if test="string-length(normalize-space(string(//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode))) != 0">
      <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 10.6%; text-align: left;"><span style="font-size: 9px;"><strong><span style="color: rgb(105, 105, 105);"><span style="font-family: verdana,geneva,sans-serif;">Döviz Cinsi</span></span></strong></span></td>
     </xsl:if> 
     <xsl:if test="string-length(normalize-space(string(//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode))) != 0">
      <td style="border: 0.05em solid rgb(132, 132, 132); border-image: none; width: 10.6%; text-align: left;"><span style="color: rgb(105, 105, 105);"><span style="font-size: 10px;"><span style="font-family: verdana,geneva,sans-serif;">
          <xsl:value-of select="./cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:CurrencyCode"></xsl:value-of></span></span></span></td>
     </xsl:if> 
    </tr> 
   </tbody> 
  </table> 
  <p> </p> 
  <table border="0" cellpadding="0" cellspacing="0" style="width: 800px;"> 
   <tbody> 
    <tr> 
     <td> 
      <xsl:if test="not(//n1:Invoice/cac:DespatchDocumentReference) and //n1:Invoice/cbc:ProfileID !='IHRACAT'">
       <div style="text-align: center;">
        <span style="margin-left: 40px;">İrsaliye yerine geçer. </span>
       </div>
      </xsl:if> </td> 
    </tr> 
   </tbody> 
  </table> 
 </body>
</html>  </xsl:template>
	<xsl:template name="TransportMode">
		<xsl:param name="TransportModeType" />
		<xsl:choose>
			<xsl:when test="$TransportModeType=1">Denizyolu</xsl:when>
			<xsl:when test="$TransportModeType=2">Demiryolu</xsl:when>
			<xsl:when test="$TransportModeType=3">Karayolu</xsl:when>
			<xsl:when test="$TransportModeType=4">Havayolu</xsl:when>
			<xsl:when test="$TransportModeType=5">Posta</xsl:when>
			<xsl:when test="$TransportModeType=6">Çok araçlı</xsl:when>
			<xsl:when test="$TransportModeType=7">Sabit taşıma tesisleri</xsl:when>
			<xsl:when test="$TransportModeType=8">İç su taşımacılığı</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$TransportModeType" />
		</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
  <xsl:template name="geneliskonto"> 
          <tr id="lineTableTr">
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="left">
              <span>
                <table border="0">
                  <tbody>
                    <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
                      <tr>
                        <td><xsl:text>     </xsl:text><xsl:text>İndirim</xsl:text></td>
                      </tr>
                    </xsl:for-each>
                  </tbody>
                </table>
              </span>
            </td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
              <span>
                <table border="0">
                  <tbody>
                    <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
                      <tr>
                        <td>
                          <xsl:choose>
                            <xsl:when test="normalize-space(cbc:AllowanceChargeReason)"><xsl:value-of select="cbc:AllowanceChargeReason" /></xsl:when>
                            <xsl:otherwise><xsl:if test="normalize-space(cbc:MultiplierFactorNumeric)"><xsl:text>%</xsl:text><xsl:value-of select="format-number(cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')" /></xsl:if></xsl:otherwise>
                          </xsl:choose>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </tbody>
                </table>
              </span>
            </td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
              <span>
                <table border="0">
                  <tbody>
                    <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
                      <tr>
                        <td>
                          <xsl:value-of select="format-number(cbc:Amount, '###.##0,00', 'european')" />
                          <xsl:if test="cbc:Amount/@currencyID">
                            <xsl:text> </xsl:text>
                            <xsl:if test="cbc:Amount/@currencyID = 'TRY'"><xsl:text>TL</xsl:text></xsl:if>
                            <xsl:if test="cbc:Amount/@currencyID != 'TRY'"><xsl:value-of select="cbc:Amount/@currencyID" /></xsl:if>
                          </xsl:if>                   
                        </td>
                      </tr>
                    </xsl:for-each>
                  </tbody>
                </table>
              </span>
            </td> 
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>      
	          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
            <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right"><span><xsl:text> </xsl:text></span></td>
          </tr>
  </xsl:template>
  	<xsl:template name="Country">
		<xsl:param name="CountryType" />
		<xsl:choose>
			<xsl:when test="$CountryType='AF'">Afganistan</xsl:when>
			<xsl:when test="$CountryType='DE'">Almanya</xsl:when>
			<xsl:when test="$CountryType='AD'">Andorra</xsl:when>
			<xsl:when test="$CountryType='AO'">Angola</xsl:when>
			<xsl:when test="$CountryType='AG'">Antigua ve Barbuda</xsl:when>
			<xsl:when test="$CountryType='AR'">Arjantin</xsl:when>
			<xsl:when test="$CountryType='AL'">Arnavutluk</xsl:when>
			<xsl:when test="$CountryType='AW'">Aruba</xsl:when>
			<xsl:when test="$CountryType='AU'">Avustralya</xsl:when>
			<xsl:when test="$CountryType='AT'">Avusturya</xsl:when>
			<xsl:when test="$CountryType='AZ'">Azerbaycan</xsl:when>
			<xsl:when test="$CountryType='BS'">Bahamalar</xsl:when>
			<xsl:when test="$CountryType='BH'">Bahreyn</xsl:when>
			<xsl:when test="$CountryType='BD'">Bangladeş</xsl:when>
			<xsl:when test="$CountryType='BB'">Barbados</xsl:when>
			<xsl:when test="$CountryType='EH'">Batı Sahra (MA)</xsl:when>
			<xsl:when test="$CountryType='BE'">Belçika</xsl:when>
			<xsl:when test="$CountryType='BZ'">Belize</xsl:when>
			<xsl:when test="$CountryType='BJ'">Benin</xsl:when>
			<xsl:when test="$CountryType='BM'">Bermuda</xsl:when>
			<xsl:when test="$CountryType='BY'">Beyaz Rusya</xsl:when>
			<xsl:when test="$CountryType='BT'">Bhutan</xsl:when>
			<xsl:when test="$CountryType='AE'">Birleşik Arap Emirlikleri</xsl:when>
			<xsl:when test="$CountryType='US'">Birleşik Devletler</xsl:when>
			<xsl:when test="$CountryType='GB'">Birleşik Krallık</xsl:when>
			<xsl:when test="$CountryType='BO'">Bolivya</xsl:when>
			<xsl:when test="$CountryType='BA'">Bosna-Hersek</xsl:when>
			<xsl:when test="$CountryType='BW'">Botsvana</xsl:when>
			<xsl:when test="$CountryType='BR'">Brezilya</xsl:when>
			<xsl:when test="$CountryType='BN'">Bruney</xsl:when>
			<xsl:when test="$CountryType='BG'">Bulgaristan</xsl:when>
			<xsl:when test="$CountryType='BF'">Burkina Faso</xsl:when>
			<xsl:when test="$CountryType='BI'">Burundi</xsl:when>
			<xsl:when test="$CountryType='TD'">Çad</xsl:when>
			<xsl:when test="$CountryType='KY'">Cayman Adaları</xsl:when>
			<xsl:when test="$CountryType='GI'">Cebelitarık (GB)</xsl:when>
			<xsl:when test="$CountryType='CZ'">Çek Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='DZ'">Cezayir</xsl:when>
			<xsl:when test="$CountryType='DJ'">Cibuti</xsl:when>
			<xsl:when test="$CountryType='CN'">Çin</xsl:when>
			<xsl:when test="$CountryType='DK'">Danimarka</xsl:when>
			<xsl:when test="$CountryType='CD'">Demokratik Kongo Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='TL'">Doğu Timor</xsl:when>
			<xsl:when test="$CountryType='DO'">Dominik Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='DM'">Dominika</xsl:when>
			<xsl:when test="$CountryType='EC'">Ekvador</xsl:when>
			<xsl:when test="$CountryType='GQ'">Ekvator Ginesi</xsl:when>
			<xsl:when test="$CountryType='SV'">El Salvador</xsl:when>
			<xsl:when test="$CountryType='ID'">Endonezya</xsl:when>
			<xsl:when test="$CountryType='ER'">Eritre</xsl:when>
			<xsl:when test="$CountryType='AM'">Ermenistan</xsl:when>
			<xsl:when test="$CountryType='MF'">Ermiş Martin (FR)</xsl:when>
			<xsl:when test="$CountryType='EE'">Estonya</xsl:when>
			<xsl:when test="$CountryType='ET'">Etiyopya</xsl:when>
			<xsl:when test="$CountryType='FK'">Falkland Adaları</xsl:when>
			<xsl:when test="$CountryType='FO'">Faroe Adaları (DK)</xsl:when>
			<xsl:when test="$CountryType='MA'">Fas</xsl:when>
			<xsl:when test="$CountryType='FJ'">Fiji</xsl:when>
			<xsl:when test="$CountryType='CI'">Fildişi Sahili</xsl:when>
			<xsl:when test="$CountryType='PH'">Filipinler</xsl:when>
			<xsl:when test="$CountryType='FI'">Finlandiya</xsl:when>
			<xsl:when test="$CountryType='FR'">Fransa</xsl:when>
			<xsl:when test="$CountryType='GF'">Fransız Guyanası (FR)</xsl:when>
			<xsl:when test="$CountryType='PF'">Fransız Polinezyası (FR)</xsl:when>
			<xsl:when test="$CountryType='GA'">Gabon</xsl:when>
			<xsl:when test="$CountryType='GM'">Gambiya</xsl:when>
			<xsl:when test="$CountryType='GH'">Gana</xsl:when>
			<xsl:when test="$CountryType='GN'">Gine</xsl:when>
			<xsl:when test="$CountryType='GW'">Gine Bissau</xsl:when>
			<xsl:when test="$CountryType='GD'">Grenada</xsl:when>
			<xsl:when test="$CountryType='GL'">Grönland (DK)</xsl:when>
			<xsl:when test="$CountryType='GP'">Guadeloupe (FR)</xsl:when>
			<xsl:when test="$CountryType='GT'">Guatemala</xsl:when>
			<xsl:when test="$CountryType='GG'">Guernsey (GB)</xsl:when>
			<xsl:when test="$CountryType='ZA'">Güney Afrika</xsl:when>
			<xsl:when test="$CountryType='KR'">Güney Kore</xsl:when>
			<xsl:when test="$CountryType='GE'">Gürcistan</xsl:when>
			<xsl:when test="$CountryType='GY'">Guyana</xsl:when>
			<xsl:when test="$CountryType='HT'">Haiti</xsl:when>
			<xsl:when test="$CountryType='IN'">Hindistan</xsl:when>
			<xsl:when test="$CountryType='HR'">Hırvatistan</xsl:when>
			<xsl:when test="$CountryType='NL'">Hollanda</xsl:when>
			<xsl:when test="$CountryType='HN'">Honduras</xsl:when>
			<xsl:when test="$CountryType='HK'">Hong Kong (CN)</xsl:when>
			<xsl:when test="$CountryType='VG'">İngiliz Virjin Adaları</xsl:when>
			<xsl:when test="$CountryType='IQ'">Irak</xsl:when>
			<xsl:when test="$CountryType='IR'">İran</xsl:when>
			<xsl:when test="$CountryType='IE'">İrlanda</xsl:when>
			<xsl:when test="$CountryType='ES'">İspanya</xsl:when>
			<xsl:when test="$CountryType='IL'">İsrail</xsl:when>
			<xsl:when test="$CountryType='SE'">İsveç</xsl:when>
			<xsl:when test="$CountryType='CH'">İsviçre</xsl:when>
			<xsl:when test="$CountryType='IT'">İtalya</xsl:when>
			<xsl:when test="$CountryType='IS'">İzlanda</xsl:when>
			<xsl:when test="$CountryType='JM'">Jamaika</xsl:when>
			<xsl:when test="$CountryType='JP'">Japonya</xsl:when>
			<xsl:when test="$CountryType='JE'">Jersey (GB)</xsl:when>
			<xsl:when test="$CountryType='KH'">Kamboçya</xsl:when>
			<xsl:when test="$CountryType='CM'">Kamerun</xsl:when>
			<xsl:when test="$CountryType='CA'">Kanada</xsl:when>
			<xsl:when test="$CountryType='ME'">Karadağ</xsl:when>
			<xsl:when test="$CountryType='QA'">Katar</xsl:when>
			<xsl:when test="$CountryType='KZ'">Kazakistan</xsl:when>
			<xsl:when test="$CountryType='KE'">Kenya</xsl:when>
			<xsl:when test="$CountryType='CY'">Kıbrıs</xsl:when>
			<xsl:when test="$CountryType='KG'">Kırgızistan</xsl:when>
			<xsl:when test="$CountryType='KI'">Kiribati</xsl:when>
			<xsl:when test="$CountryType='CO'">Kolombiya</xsl:when>
			<xsl:when test="$CountryType='KM'">Komorlar</xsl:when>
			<xsl:when test="$CountryType='CG'">Kongo Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='KV'">Kosova (RS)</xsl:when>
			<xsl:when test="$CountryType='CR'">Kosta Rika</xsl:when>
			<xsl:when test="$CountryType='CU'">Küba</xsl:when>
			<xsl:when test="$CountryType='KW'">Kuveyt</xsl:when>
			<xsl:when test="$CountryType='KP'">Kuzey Kore</xsl:when>
			<xsl:when test="$CountryType='LA'">Laos</xsl:when>
			<xsl:when test="$CountryType='LS'">Lesoto</xsl:when>
			<xsl:when test="$CountryType='LV'">Letonya</xsl:when>
			<xsl:when test="$CountryType='LR'">Liberya</xsl:when>
			<xsl:when test="$CountryType='LY'">Libya</xsl:when>
			<xsl:when test="$CountryType='LI'">Lihtenştayn</xsl:when>
			<xsl:when test="$CountryType='LT'">Litvanya</xsl:when>
			<xsl:when test="$CountryType='LB'">Lübnan</xsl:when>
			<xsl:when test="$CountryType='LU'">Lüksemburg</xsl:when>
			<xsl:when test="$CountryType='HU'">Macaristan</xsl:when>
			<xsl:when test="$CountryType='MG'">Madagaskar</xsl:when>
			<xsl:when test="$CountryType='MO'">Makao (CN)</xsl:when>
			<xsl:when test="$CountryType='MK'">Makedonya</xsl:when>
			<xsl:when test="$CountryType='MW'">Malavi</xsl:when>
			<xsl:when test="$CountryType='MV'">Maldivler</xsl:when>
			<xsl:when test="$CountryType='MY'">Malezya</xsl:when>
			<xsl:when test="$CountryType='ML'">Mali</xsl:when>
			<xsl:when test="$CountryType='MT'">Malta</xsl:when>
			<xsl:when test="$CountryType='IM'">Man Adası (GB)</xsl:when>
			<xsl:when test="$CountryType='MH'">Marshall Adaları</xsl:when>
			<xsl:when test="$CountryType='MQ'">Martinique (FR)</xsl:when>
			<xsl:when test="$CountryType='MU'">Mauritius</xsl:when>
			<xsl:when test="$CountryType='YT'">Mayotte (FR)</xsl:when>
			<xsl:when test="$CountryType='MX'">Meksika</xsl:when>
			<xsl:when test="$CountryType='FM'">Mikronezya</xsl:when>
			<xsl:when test="$CountryType='EG'">Mısır</xsl:when>
			<xsl:when test="$CountryType='MN'">Moğolistan</xsl:when>
			<xsl:when test="$CountryType='MD'">Moldova</xsl:when>
			<xsl:when test="$CountryType='MC'">Monako</xsl:when>
			<xsl:when test="$CountryType='MR'">Moritanya</xsl:when>
			<xsl:when test="$CountryType='MZ'">Mozambik</xsl:when>
			<xsl:when test="$CountryType='MM'">Myanmar</xsl:when>
			<xsl:when test="$CountryType='NA'">Namibya</xsl:when>
			<xsl:when test="$CountryType='NR'">Nauru</xsl:when>
			<xsl:when test="$CountryType='NP'">Nepal</xsl:when>
			<xsl:when test="$CountryType='NE'">Nijer</xsl:when>
			<xsl:when test="$CountryType='NG'">Nijerya</xsl:when>
			<xsl:when test="$CountryType='NI'">Nikaragua</xsl:when>
			<xsl:when test="$CountryType='NO'">Norveç</xsl:when>
			<xsl:when test="$CountryType='CF'">Orta Afrika Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='UZ'">Özbekistan</xsl:when>
			<xsl:when test="$CountryType='PK'">Pakistan</xsl:when>
			<xsl:when test="$CountryType='PW'">Palau</xsl:when>
			<xsl:when test="$CountryType='PA'">Panama</xsl:when>
			<xsl:when test="$CountryType='PG'">Papua Yeni Gine</xsl:when>
			<xsl:when test="$CountryType='PY'">Paraguay</xsl:when>
			<xsl:when test="$CountryType='PE'">Peru</xsl:when>
			<xsl:when test="$CountryType='PL'">Polonya</xsl:when>
			<xsl:when test="$CountryType='PT'">Portekiz</xsl:when>
			<xsl:when test="$CountryType='PR'">Porto Riko (US)</xsl:when>
			<xsl:when test="$CountryType='RE'">Réunion (FR)</xsl:when>
			<xsl:when test="$CountryType='RO'">Romanya</xsl:when>
			<xsl:when test="$CountryType='RW'">Ruanda</xsl:when>
			<xsl:when test="$CountryType='RU'">Rusya</xsl:when>
			<xsl:when test="$CountryType='BL'">Saint Barthélemy (FR)</xsl:when>
			<xsl:when test="$CountryType='KN'">Saint Kitts ve Nevis</xsl:when>
			<xsl:when test="$CountryType='LC'">Saint Lucia</xsl:when>
			<xsl:when test="$CountryType='PM'">Saint Pierre ve Miquelon (FR)</xsl:when>
			<xsl:when test="$CountryType='VC'">Saint Vincent ve Grenadinler</xsl:when>
			<xsl:when test="$CountryType='WS'">Samoa</xsl:when>
			<xsl:when test="$CountryType='SM'">San Marino</xsl:when>
			<xsl:when test="$CountryType='ST'">São Tomé ve Príncipe</xsl:when>
			<xsl:when test="$CountryType='SN'">Senegal</xsl:when>
			<xsl:when test="$CountryType='SC'">Seyşeller</xsl:when>
			<xsl:when test="$CountryType='SL'">Sierra Leone</xsl:when>
			<xsl:when test="$CountryType='CL'">Şili</xsl:when>
			<xsl:when test="$CountryType='SG'">Singapur</xsl:when>
			<xsl:when test="$CountryType='RS'">Sırbistan</xsl:when>
			<xsl:when test="$CountryType='SK'">Slovakya Cumhuriyeti</xsl:when>
			<xsl:when test="$CountryType='SI'">Slovenya</xsl:when>
			<xsl:when test="$CountryType='SB'">Solomon Adaları</xsl:when>
			<xsl:when test="$CountryType='SO'">Somali</xsl:when>
			<xsl:when test="$CountryType='SS'">South Sudan</xsl:when>
			<xsl:when test="$CountryType='SJ'">Spitsbergen (NO)</xsl:when>
			<xsl:when test="$CountryType='LK'">Sri Lanka</xsl:when>
			<xsl:when test="$CountryType='SD'">Sudan</xsl:when>
			<xsl:when test="$CountryType='SR'">Surinam</xsl:when>
			<xsl:when test="$CountryType='SY'">Suriye</xsl:when>
			<xsl:when test="$CountryType='SA'">Suudi Arabistan</xsl:when>
			<xsl:when test="$CountryType='SZ'">Svaziland</xsl:when>
			<xsl:when test="$CountryType='TJ'">Tacikistan</xsl:when>
			<xsl:when test="$CountryType='TZ'">Tanzanya</xsl:when>
			<xsl:when test="$CountryType='TH'">Tayland</xsl:when>
			<xsl:when test="$CountryType='TW'">Tayvan</xsl:when>
			<xsl:when test="$CountryType='TG'">Togo</xsl:when>
			<xsl:when test="$CountryType='TO'">Tonga</xsl:when>
			<xsl:when test="$CountryType='TT'">Trinidad ve Tobago</xsl:when>
			<xsl:when test="$CountryType='TN'">Tunus</xsl:when>
			<xsl:when test="$CountryType='TR'">Türkiye</xsl:when>
			<xsl:when test="$CountryType='TM'">Türkmenistan</xsl:when>
			<xsl:when test="$CountryType='TC'">Turks ve Caicos</xsl:when>
			<xsl:when test="$CountryType='TV'">Tuvalu</xsl:when>
			<xsl:when test="$CountryType='UG'">Uganda</xsl:when>
			<xsl:when test="$CountryType='UA'">Ukrayna</xsl:when>
			<xsl:when test="$CountryType='OM'">Umman</xsl:when>
			<xsl:when test="$CountryType='JO'">Ürdün</xsl:when>
			<xsl:when test="$CountryType='UY'">Uruguay</xsl:when>
			<xsl:when test="$CountryType='VU'">Vanuatu</xsl:when>
			<xsl:when test="$CountryType='VA'">Vatikan</xsl:when>
			<xsl:when test="$CountryType='VE'">Venezuela</xsl:when>
			<xsl:when test="$CountryType='VN'">Vietnam</xsl:when>
			<xsl:when test="$CountryType='WF'">Wallis ve Futuna (FR)</xsl:when>
			<xsl:when test="$CountryType='YE'">Yemen</xsl:when>
			<xsl:when test="$CountryType='NC'">Yeni Kaledonya (FR)</xsl:when>
			<xsl:when test="$CountryType='NZ'">Yeni Zelanda</xsl:when>
			<xsl:when test="$CountryType='CV'">Yeşil Burun Adaları</xsl:when>
			<xsl:when test="$CountryType='GR'">Yunanistan</xsl:when>
			<xsl:when test="$CountryType='ZM'">Zambiya</xsl:when>
			<xsl:when test="$CountryType='ZW'">Zimbabve</xsl:when>
			<xsl:otherwise><xsl:value-of select="$CountryType" /></xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>

</xsl:stylesheet>
