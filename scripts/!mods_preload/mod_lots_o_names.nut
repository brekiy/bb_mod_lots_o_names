::mods_registerMod("mod_lots_o_names", 1, "Lots O' Names");
::mods_queue("mod_lots_o_names", null, function() {
    ::include("script_hooks/mod_lon_bandits_and_mercs");
    ::include("script_hooks/mod_lon_barbarians");
    ::include("script_hooks/mod_lon_greenskins");
    ::include("script_hooks/mod_lon_knights");
    ::include("script_hooks/mod_lon_northerners");
    ::include("script_hooks/mod_lon_southerners");
});