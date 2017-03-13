function loadDoc() {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", "contactinfor.xml", true);
    xhttp.send(null);
    xhttp.onreadystatechange = function ()
    {
        if (xhttp.readyState == 4 && xhttp.status == 200)
        {
            getContactDetails(xhttp);
        }
    };     
}
function getContactDetails(xml) {
    
    var i;
    var xmlDoc = xml.responseXML;
    root = xmlDoc.documentElement;
    var info = root.getElementsByTagName("info");

    var table = "";
    table += "<tr><td>Mailing Address</td><td id=\"center_td\">" + info[0].getAttribute("mailing-address") + "</td></tr>"
           + "<tr><td>Toll Free Number</td><td id=\"center_td\" style=\"color:blue\"><u>" + info[0].getAttribute("toll-free-phone") + "</u></td></tr>"
           + "<tr><td>Direct Phone Number</td><td id=\"center_td\" style=\"color:blue\"><u>" + info[0].getAttribute("direct-phone") + "</u></td></tr>"
           + "<tr><td>Email Address</td><td id=\"center_td\">" + info[0].getAttribute("email") + "</td><tr>"
           + "<tr><td>Website</td><td id=\"center_td\">" + info[0].getAttribute("website") + "</td></tr>";
   
             document.getElementById("ContactDetails").innerHTML = table;


}