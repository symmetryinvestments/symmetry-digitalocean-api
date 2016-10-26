import kaleidic.api.digitalocean;
import kaleidic.auth; // replace by your own key
import kaleidic.helper.prettyjson;
import std.json;
import std.stdio;


void main(string[] args)
{
    auto ocean=OceanAPI(OceanAPIKey);
    auto result=Droplet.create( ocean,
                                "newemail.kaleidicassociates.com",
                                OceanRegion.lon1,
                                "1Gb",
                                OceanImageId("debian-8-x64"),
                                ["ab:21:7e:22:e5:4c:95:23:e9:aa:f8:59:be:5f:96:24"]);
    writefln(result.prettyPrint);
    auto actions=ocean.listDroplets;
    writefln(actions.prettyPrint);
/*    auto droplet=ocean.findDroplet("hoelderlin.kaleidicassociates.com").result.retrieve;
    writefln(droplet.prettyPrint);
    auto keys=ocean.listKeys;
    writefln(keys.prettyPrint);*/
}


/**
    really not tested
    so far: reasonable results for
    listDomains
    listDroplets
    listSizes
    listKeys
    listImages
    findDroplet
    Droplet.retrieve
*/
