set_global_assignment -entity "microarquiteturaGp3" -library "lib_microarquiteturaGp3" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "microarquiteturaGp3" -library "lib_microarquiteturaGp3" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "microarquiteturaGp3" -library "lib_microarquiteturaGp3" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_microarquiteturaGp3" -name SPD_FILE [file join $::quartus(sip_path) "../microarquiteturaGp3.spd"]
set_global_assignment -library "lib_microarquiteturaGp3" -name MISC_FILE [file join $::quartus(sip_path) "../../microarquiteturaGp3.qsys"]
