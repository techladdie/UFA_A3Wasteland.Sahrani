//PowerSource.sqf. File created by techladdie with code created by ArmaPhronk

//List light sources listed below within the entered range (in this case, 5000m) of the Helipad object "PowerSource"
_nearStreetLights=nearestObjects[PowerSource,["Lamps_base_F","PowerLines_base_F","PowerLines_Small_base_F"],5000]; 

_powerSources=PowerSource nearObjects["Land_DPP_01_transformer_F",50]; 
_powerSource=_powerSources select 0; 

waitUntil{sleep 2;damage _powerSource==1;}; 

hint "The main power station is now OFFLINE! Expect restoration after server restart"; 
{
 _x setHit["light_1_hitpoint",0.97];
 _x setHit["light_2_hitpoint",0.97];
 _x setHit["light_3_hitpoint",0.97];
 _x setHit["light_4_hitpoint",0.97];
 }forEach _nearStreetLights;
 
sleep 30;

hint "The main power station is now ONLINE. Power will be restored momentarily..."; 

sleep 5;
{
 _x setHit["light_1_hitpoint",0.00];
 _x setHit["light_2_hitpoint",0.00];
 _x setHit["light_3_hitpoint",0.00];
 _x setHit["light_4_hitpoint",0.00];
 }forEach _nearStreetLights;