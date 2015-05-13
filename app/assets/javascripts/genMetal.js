var MetAVocab = new Array();

var MetIntIncr
var MetIntCat

MetIntCat = 0
MetIntIncr = 0

//The data stored is pretty simple.  It works like this:
//
// The MetAVocab array has sub arrays that are named lists of data.
//
//MetAVocab[MetIntCat]= new Array(); - The MetAVocab Array actually holds other arrays.
//MetAVocab[MetIntCat][0]="FIRST" - This is the name of the list of data in this sub array.  The name helps the program find the data.
//MetAVocab[MetIntCat][1] = new Array() - Yep, ANOTHER array - this is the array that holds the actual data.
//MetAVocab[MetIntCat][1][MetIntIncr++]="First thing <SECOND>" // See that <SECOND> tag?  Anything in brackets references another list.
//MetAVocab[MetIntCat][1][MetIntIncr++]="First thing <THIRD>"
//
// Unless it's the last entry, don't forget to increment and reset the counters!
//
//MetIntCat++
//MetIntIncr=0


MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "FIRST"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "Esse metal tem uma coloração <color> e <oxide>. Ele é <compadj> <composition> quando sólido e derrete a <temperature> graus Kelvin. Ele é um <conduction> condutor de eletricidade e <conduction> condutor de calor. <toxicity> e <use>."

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "color"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "<tint>-acinzentado<shade>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cinza<shade>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "<specialcolor>"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "shade"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = " claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = " escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = ""

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "tint"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "rosado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azulado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "roxo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "esverdeado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "marrom"
MetAVocab[MetIntCat][1][MetIntIncr++] = "avermelhado"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "specialcolor"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "iridescente <shade> cinza"
MetAVocab[MetIntCat][1][MetIntIncr++] = "iridescente <singlecolor>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "<singlecolor>"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "singlecolor"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "água-marinha"
MetAVocab[MetIntCat][1][MetIntIncr++] = "amarelo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "amarelo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "amarelo brilhante"
MetAVocab[MetIntCat][1][MetIntIncr++] = "amarelo escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "amarelo fosco"
MetAVocab[MetIntCat][1][MetIntIncr++] = "amarelo queimado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "âmbar"
MetAVocab[MetIntCat][1][MetIntIncr++] = "ameixa"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azul"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azul"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azul brilhante"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azul escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azul fosco"
MetAVocab[MetIntCat][1][MetIntIncr++] = "azul celeste"
MetAVocab[MetIntCat][1][MetIntIncr++] = "bege"
MetAVocab[MetIntCat][1][MetIntIncr++] = "bordô"
MetAVocab[MetIntCat][1][MetIntIncr++] = "branco"
MetAVocab[MetIntCat][1][MetIntIncr++] = "branco"
MetAVocab[MetIntCat][1][MetIntIncr++] = "bronze"
MetAVocab[MetIntCat][1][MetIntIncr++] = "caramelo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "carmesim"
MetAVocab[MetIntCat][1][MetIntIncr++] = "castanho avermelhado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "castanho claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cereja"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cinza"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cinza claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cizna escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "ciano"
MetAVocab[MetIntCat][1][MetIntIncr++] = "ciano"
MetAVocab[MetIntCat][1][MetIntIncr++] = "ciano claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "ciano escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cobre"
MetAVocab[MetIntCat][1][MetIntIncr++] = "coral"
MetAVocab[MetIntCat][1][MetIntIncr++] = "dourado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "dourado escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "dourado palido"
MetAVocab[MetIntCat][1][MetIntIncr++] = "escarlate"
MetAVocab[MetIntCat][1][MetIntIncr++] = "esmeralda"
MetAVocab[MetIntCat][1][MetIntIncr++] = "fúchsia"
MetAVocab[MetIntCat][1][MetIntIncr++] = "índigo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "jade"
MetAVocab[MetIntCat][1][MetIntIncr++] = "laranja"
MetAVocab[MetIntCat][1][MetIntIncr++] = "laranja"
MetAVocab[MetIntCat][1][MetIntIncr++] = "laranja escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "laranja claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "lilas"
MetAVocab[MetIntCat][1][MetIntIncr++] = "limão"
MetAVocab[MetIntCat][1][MetIntIncr++] = "magenta"
MetAVocab[MetIntCat][1][MetIntIncr++] = "magenta"
MetAVocab[MetIntCat][1][MetIntIncr++] = "magenta escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "marfim"
MetAVocab[MetIntCat][1][MetIntIncr++] = "marrom"
MetAVocab[MetIntCat][1][MetIntIncr++] = "marrom"
MetAVocab[MetIntCat][1][MetIntIncr++] = "marrom claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "oliva"
MetAVocab[MetIntCat][1][MetIntIncr++] = "preto"
MetAVocab[MetIntCat][1][MetIntIncr++] = "preto"
MetAVocab[MetIntCat][1][MetIntIncr++] = "púrpura"
MetAVocab[MetIntCat][1][MetIntIncr++] = "púrpura"
MetAVocab[MetIntCat][1][MetIntIncr++] = "rosa"
MetAVocab[MetIntCat][1][MetIntIncr++] = "rosa"
MetAVocab[MetIntCat][1][MetIntIncr++] = "rosa brilhante"
MetAVocab[MetIntCat][1][MetIntIncr++] = "rosa claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "roxo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "roxo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "salmão"
MetAVocab[MetIntCat][1][MetIntIncr++] = "sépia"
MetAVocab[MetIntCat][1][MetIntIncr++] = "turquesa"
MetAVocab[MetIntCat][1][MetIntIncr++] = "turquesa escura"
MetAVocab[MetIntCat][1][MetIntIncr++] = "turquesa palida"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde amarelado"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde claro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde lima"
MetAVocab[MetIntCat][1][MetIntIncr++] = "verde palido"
MetAVocab[MetIntCat][1][MetIntIncr++] = "vermelho"
MetAVocab[MetIntCat][1][MetIntIncr++] = "vermelho"
MetAVocab[MetIntCat][1][MetIntIncr++] = "vermelho escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "violeta"
MetAVocab[MetIntCat][1][MetIntIncr++] = "violeta"
MetAVocab[MetIntCat][1][MetIntIncr++] = "violeta escuro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "violeta claro"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "oxide"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "não óxida"
MetAVocab[MetIntCat][1][MetIntIncr++] = "produz um óxido <singlecolor>"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "compadj"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "relativamente"
MetAVocab[MetIntCat][1][MetIntIncr++] = "um pouco"
MetAVocab[MetIntCat][1][MetIntIncr++] = "consideravelmente"
MetAVocab[MetIntCat][1][MetIntIncr++] = "muito"
MetAVocab[MetIntCat][1][MetIntIncr++] = "extremamente"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "composition"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "macio"
MetAVocab[MetIntCat][1][MetIntIncr++] = "duro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "frágil"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "conduction"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "péssimo"
MetAVocab[MetIntCat][1][MetIntIncr++] = "razoável"
MetAVocab[MetIntCat][1][MetIntIncr++] = "médio"
MetAVocab[MetIntCat][1][MetIntIncr++] = "bom"
MetAVocab[MetIntCat][1][MetIntIncr++] = "excelente"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "temperature"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "1<number><number><number>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "1<number><number><number>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "1<number><number><number>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "2<number><number><number>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "2<number><number><number>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "3<number><number><number>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "<number-2><number><number>"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "number"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "0"
MetAVocab[MetIntCat][1][MetIntIncr++] = "1"
MetAVocab[MetIntCat][1][MetIntIncr++] = "2"
MetAVocab[MetIntCat][1][MetIntIncr++] = "3"
MetAVocab[MetIntCat][1][MetIntIncr++] = "4"
MetAVocab[MetIntCat][1][MetIntIncr++] = "5"
MetAVocab[MetIntCat][1][MetIntIncr++] = "6"
MetAVocab[MetIntCat][1][MetIntIncr++] = "7"
MetAVocab[MetIntCat][1][MetIntIncr++] = "8"
MetAVocab[MetIntCat][1][MetIntIncr++] = "9"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "number-2"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "1"
MetAVocab[MetIntCat][1][MetIntIncr++] = "2"
MetAVocab[MetIntCat][1][MetIntIncr++] = "3"
MetAVocab[MetIntCat][1][MetIntIncr++] = "4"
MetAVocab[MetIntCat][1][MetIntIncr++] = "4"
MetAVocab[MetIntCat][1][MetIntIncr++] = "5"
MetAVocab[MetIntCat][1][MetIntIncr++] = "5"
MetAVocab[MetIntCat][1][MetIntIncr++] = "5"
MetAVocab[MetIntCat][1][MetIntIncr++] = "6"
MetAVocab[MetIntCat][1][MetIntIncr++] = "6"
MetAVocab[MetIntCat][1][MetIntIncr++] = "6"
MetAVocab[MetIntCat][1][MetIntIncr++] = "6"
MetAVocab[MetIntCat][1][MetIntIncr++] = "7"
MetAVocab[MetIntCat][1][MetIntIncr++] = "7"
MetAVocab[MetIntCat][1][MetIntIncr++] = "7"
MetAVocab[MetIntCat][1][MetIntIncr++] = "7"
MetAVocab[MetIntCat][1][MetIntIncr++] = "7"
MetAVocab[MetIntCat][1][MetIntIncr++] = "8"
MetAVocab[MetIntCat][1][MetIntIncr++] = "8"
MetAVocab[MetIntCat][1][MetIntIncr++] = "8"
MetAVocab[MetIntCat][1][MetIntIncr++] = "8"
MetAVocab[MetIntCat][1][MetIntIncr++] = "8"
MetAVocab[MetIntCat][1][MetIntIncr++] = "9"
MetAVocab[MetIntCat][1][MetIntIncr++] = "9"
MetAVocab[MetIntCat][1][MetIntIncr++] = "9"
MetAVocab[MetIntCat][1][MetIntIncr++] = "9"
MetAVocab[MetIntCat][1][MetIntIncr++] = "9"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "toxicity"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "Este metal não é tóxico"
MetAVocab[MetIntCat][1][MetIntIncr++] = "Este metal é tóxico em quantidades moderadas"
MetAVocab[MetIntCat][1][MetIntIncr++] = "Este metal é tóxico em grandes quantidades"
MetAVocab[MetIntCat][1][MetIntIncr++] = "Este metal é extremamente tóxico"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "use"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "<use1> <use2>"
MetAVocab[MetIntCat][1][MetIntIncr++] = "<is-was> <use3> considerado <use4>"


MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "use3"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "geralmente"
MetAVocab[MetIntCat][1][MetIntIncr++] = "normalmente"
MetAVocab[MetIntCat][1][MetIntIncr++] = "tipicamente"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "use4"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "inútil"
MetAVocab[MetIntCat][1][MetIntIncr++] = "valioso"
MetAVocab[MetIntCat][1][MetIntIncr++] = "raro"
MetAVocab[MetIntCat][1][MetIntIncr++] = "comum"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "use1"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "<is-was> mais frequentemente usado em"
MetAVocab[MetIntCat][1][MetIntIncr++] = "<is-was> mais comumente usado em"
MetAVocab[MetIntCat][1][MetIntIncr++] = "<is-was> muitas vezes usado em"


MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "is-was"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "é"
MetAVocab[MetIntCat][1][MetIntIncr++] = "era"

MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = "use2"
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = "armas"
MetAVocab[MetIntCat][1][MetIntIncr++] = "cosmeticos"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "pigmentos"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "hardware"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "ferramentas"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "decoração"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "moedas"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "brinquedos"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "remédios"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "jóias"
MetAVocab[MetIntCat][1][MetIntIncr ++] = "blindagens"

//Leave to Copy!
MetIntCat++
MetIntIncr = 0
MetAVocab[MetIntCat] = new Array();
MetAVocab[MetIntCat][0] = ""
MetAVocab[MetIntCat][1] = new Array()
MetAVocab[MetIntCat][1][MetIntIncr++] = ""

function GenNumber(nRange) {
    var iNumGen
    iNumGen = Math.round((Math.random() * nRange));

    return iNumGen;
}

function MetGetFrom(aArray) {
    var undefined
    var sReturn
    sReturn = aArray[GenNumber(aArray.length)];
    if (sReturn == undefined) {
        sReturn = MetGetFrom(aArray)
    }
    return sReturn
}

function GetArray(sArrayName) {
    for (var intLooper = 0; intLooper < MetAVocab.length; intLooper++) {
        if (MetAVocab[intLooper][0] == sArrayName) {
            return MetAVocab[intLooper][1];
            break;
        }
    }
}

function MetScanLine(sLine) {
    var iTagStart, iTagEnd
    var sKey

    if (sLine.indexOf("<") > -1) {
        iTagStart = sLine.indexOf("<");
        iTagEnd = sLine.indexOf(">");

        sKey = sLine.substr(iTagStart + 1, iTagEnd - (iTagStart + 1));

        sKey = MetGetFrom(GetArray(sKey))
        sLine = sLine.substr(0, iTagStart) + sKey + sLine.substr(iTagEnd + 1, (sLine.length - iTagEnd))

    }


    if (sLine.indexOf("<") > -1) {
        sLine = MetScanLine(sLine)
    }

    return sLine;
}


function MetGenPlot() {
    sLine = MetGetFrom(GetArray("FIRST"));

    sLine = MetScanLine(sLine)

    document.GENFORM.STORY.value = sLine;
}
