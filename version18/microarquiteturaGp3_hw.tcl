package require -exact qsys 12.1

# module properties
set_module_property NAME {microarquiteturaGp3_export}
set_module_property DISPLAY_NAME {microarquiteturaGp3_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance clk_0 clock_source 13.0
set_instance_parameter_value clk_0 clockFrequency {50000000.0}
set_instance_parameter_value clk_0 clockFrequencyKnown {1}
set_instance_parameter_value clk_0 resetSynchronousEdges {NONE}

add_instance nios2_qsys_0 altera_nios2_qsys 13.0
set_instance_parameter_value nios2_qsys_0 setting_showUnpublishedSettings {0}
set_instance_parameter_value nios2_qsys_0 setting_showInternalSettings {0}
set_instance_parameter_value nios2_qsys_0 setting_preciseSlaveAccessErrorException {0}
set_instance_parameter_value nios2_qsys_0 setting_preciseIllegalMemAccessException {0}
set_instance_parameter_value nios2_qsys_0 setting_preciseDivisionErrorException {0}
set_instance_parameter_value nios2_qsys_0 setting_performanceCounter {0}
set_instance_parameter_value nios2_qsys_0 setting_illegalMemAccessDetection {0}
set_instance_parameter_value nios2_qsys_0 setting_illegalInstructionsTrap {0}
set_instance_parameter_value nios2_qsys_0 setting_fullWaveformSignals {0}
set_instance_parameter_value nios2_qsys_0 setting_extraExceptionInfo {0}
set_instance_parameter_value nios2_qsys_0 setting_exportPCB {0}
set_instance_parameter_value nios2_qsys_0 setting_debugSimGen {0}
set_instance_parameter_value nios2_qsys_0 setting_clearXBitsLDNonBypass {1}
set_instance_parameter_value nios2_qsys_0 setting_bit31BypassDCache {1}
set_instance_parameter_value nios2_qsys_0 setting_bigEndian {0}
set_instance_parameter_value nios2_qsys_0 setting_export_large_RAMs {0}
set_instance_parameter_value nios2_qsys_0 setting_asic_enabled {0}
set_instance_parameter_value nios2_qsys_0 setting_asic_synopsys_translate_on_off {0}
set_instance_parameter_value nios2_qsys_0 setting_oci_export_jtag_signals {0}
set_instance_parameter_value nios2_qsys_0 setting_bhtIndexPcOnly {0}
set_instance_parameter_value nios2_qsys_0 setting_avalonDebugPortPresent {0}
set_instance_parameter_value nios2_qsys_0 setting_alwaysEncrypt {1}
set_instance_parameter_value nios2_qsys_0 setting_allowFullAddressRange {0}
set_instance_parameter_value nios2_qsys_0 setting_activateTrace {1}
set_instance_parameter_value nios2_qsys_0 setting_activateTestEndChecker {0}
set_instance_parameter_value nios2_qsys_0 setting_activateMonitors {1}
set_instance_parameter_value nios2_qsys_0 setting_activateModelChecker {0}
set_instance_parameter_value nios2_qsys_0 setting_HDLSimCachesCleared {1}
set_instance_parameter_value nios2_qsys_0 setting_HBreakTest {0}
set_instance_parameter_value nios2_qsys_0 muldiv_divider {0}
set_instance_parameter_value nios2_qsys_0 mpu_useLimit {0}
set_instance_parameter_value nios2_qsys_0 mpu_enabled {0}
set_instance_parameter_value nios2_qsys_0 mmu_enabled {0}
set_instance_parameter_value nios2_qsys_0 mmu_autoAssignTlbPtrSz {1}
set_instance_parameter_value nios2_qsys_0 manuallyAssignCpuID {1}
set_instance_parameter_value nios2_qsys_0 debug_triggerArming {1}
set_instance_parameter_value nios2_qsys_0 debug_embeddedPLL {1}
set_instance_parameter_value nios2_qsys_0 debug_debugReqSignals {0}
set_instance_parameter_value nios2_qsys_0 debug_assignJtagInstanceID {0}
set_instance_parameter_value nios2_qsys_0 dcache_omitDataMaster {0}
set_instance_parameter_value nios2_qsys_0 cpuReset {0}
set_instance_parameter_value nios2_qsys_0 is_hardcopy_compatible {0}
set_instance_parameter_value nios2_qsys_0 setting_shadowRegisterSets {0}
set_instance_parameter_value nios2_qsys_0 mpu_numOfInstRegion {8}
set_instance_parameter_value nios2_qsys_0 mpu_numOfDataRegion {8}
set_instance_parameter_value nios2_qsys_0 mmu_TLBMissExcOffset {0}
set_instance_parameter_value nios2_qsys_0 debug_jtagInstanceID {0}
set_instance_parameter_value nios2_qsys_0 resetOffset {0}
set_instance_parameter_value nios2_qsys_0 exceptionOffset {32}
set_instance_parameter_value nios2_qsys_0 cpuID {0}
set_instance_parameter_value nios2_qsys_0 cpuID_stored {0}
set_instance_parameter_value nios2_qsys_0 breakOffset {32}
set_instance_parameter_value nios2_qsys_0 userDefinedSettings {}
set_instance_parameter_value nios2_qsys_0 resetSlave {onchip_memory2_0.s1}
set_instance_parameter_value nios2_qsys_0 mmu_TLBMissExcSlave {None}
set_instance_parameter_value nios2_qsys_0 exceptionSlave {onchip_memory2_0.s1}
set_instance_parameter_value nios2_qsys_0 breakSlave {nios2_qsys_0.jtag_debug_module}
set_instance_parameter_value nios2_qsys_0 setting_perfCounterWidth {32}
set_instance_parameter_value nios2_qsys_0 setting_interruptControllerType {Internal}
set_instance_parameter_value nios2_qsys_0 setting_branchPredictionType {Automatic}
set_instance_parameter_value nios2_qsys_0 setting_bhtPtrSz {8}
set_instance_parameter_value nios2_qsys_0 muldiv_multiplierType {EmbeddedMulFast}
set_instance_parameter_value nios2_qsys_0 mpu_minInstRegionSize {12}
set_instance_parameter_value nios2_qsys_0 mpu_minDataRegionSize {12}
set_instance_parameter_value nios2_qsys_0 mmu_uitlbNumEntries {4}
set_instance_parameter_value nios2_qsys_0 mmu_udtlbNumEntries {6}
set_instance_parameter_value nios2_qsys_0 mmu_tlbPtrSz {7}
set_instance_parameter_value nios2_qsys_0 mmu_tlbNumWays {16}
set_instance_parameter_value nios2_qsys_0 mmu_processIDNumBits {8}
set_instance_parameter_value nios2_qsys_0 impl {Tiny}
set_instance_parameter_value nios2_qsys_0 icache_size {4096}
set_instance_parameter_value nios2_qsys_0 icache_tagramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 icache_ramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 icache_numTCIM {0}
set_instance_parameter_value nios2_qsys_0 icache_burstType {None}
set_instance_parameter_value nios2_qsys_0 dcache_bursts {false}
set_instance_parameter_value nios2_qsys_0 dcache_victim_buf_impl {ram}
set_instance_parameter_value nios2_qsys_0 debug_level {Level1}
set_instance_parameter_value nios2_qsys_0 debug_OCIOnchipTrace {_128}
set_instance_parameter_value nios2_qsys_0 dcache_size {2048}
set_instance_parameter_value nios2_qsys_0 dcache_tagramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 dcache_ramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 dcache_numTCDM {0}
set_instance_parameter_value nios2_qsys_0 dcache_lineSize {32}
set_instance_parameter_value nios2_qsys_0 setting_exportvectors {0}
set_instance_parameter_value nios2_qsys_0 setting_ecc_present {0}
set_instance_parameter_value nios2_qsys_0 regfile_ramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 ocimem_ramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 mmu_ramBlockType {Automatic}
set_instance_parameter_value nios2_qsys_0 bht_ramBlockType {Automatic}

add_instance onchip_memory2_0 altera_avalon_onchip_memory2 13.0.1.99.2
set_instance_parameter_value onchip_memory2_0 allowInSystemMemoryContentEditor {0}
set_instance_parameter_value onchip_memory2_0 blockType {AUTO}
set_instance_parameter_value onchip_memory2_0 dataWidth {32}
set_instance_parameter_value onchip_memory2_0 dualPort {0}
set_instance_parameter_value onchip_memory2_0 initMemContent {1}
set_instance_parameter_value onchip_memory2_0 initializationFileName {onchip_mem.hex}
set_instance_parameter_value onchip_memory2_0 instanceID {NONE}
set_instance_parameter_value onchip_memory2_0 memorySize {4096.0}
set_instance_parameter_value onchip_memory2_0 readDuringWriteMode {DONT_CARE}
set_instance_parameter_value onchip_memory2_0 simAllowMRAMContentsFile {0}
set_instance_parameter_value onchip_memory2_0 simMemInitOnlyFilename {0}
set_instance_parameter_value onchip_memory2_0 singleClockOperation {0}
set_instance_parameter_value onchip_memory2_0 slave1Latency {1}
set_instance_parameter_value onchip_memory2_0 slave2Latency {1}
set_instance_parameter_value onchip_memory2_0 useNonDefaultInitFile {0}
set_instance_parameter_value onchip_memory2_0 useShallowMemBlocks {0}
set_instance_parameter_value onchip_memory2_0 writable {1}

add_instance buttons altera_avalon_pio 13.0.1.99.2
set_instance_parameter_value buttons bitClearingEdgeCapReg {0}
set_instance_parameter_value buttons bitModifyingOutReg {0}
set_instance_parameter_value buttons captureEdge {0}
set_instance_parameter_value buttons direction {Input}
set_instance_parameter_value buttons edgeType {RISING}
set_instance_parameter_value buttons generateIRQ {0}
set_instance_parameter_value buttons irqType {LEVEL}
set_instance_parameter_value buttons resetValue {0.0}
set_instance_parameter_value buttons simDoTestBenchWiring {0}
set_instance_parameter_value buttons simDrivenValue {0.0}
set_instance_parameter_value buttons width {4}

add_instance leds altera_avalon_pio 13.0.1.99.2
set_instance_parameter_value leds bitClearingEdgeCapReg {0}
set_instance_parameter_value leds bitModifyingOutReg {0}
set_instance_parameter_value leds captureEdge {0}
set_instance_parameter_value leds direction {Output}
set_instance_parameter_value leds edgeType {RISING}
set_instance_parameter_value leds generateIRQ {0}
set_instance_parameter_value leds irqType {LEVEL}
set_instance_parameter_value leds resetValue {0.0}
set_instance_parameter_value leds simDoTestBenchWiring {0}
set_instance_parameter_value leds simDrivenValue {0.0}
set_instance_parameter_value leds width {5}

add_instance jtag_uart_0 altera_avalon_jtag_uart 13.0.1.99.2
set_instance_parameter_value jtag_uart_0 allowMultipleConnections {0}
set_instance_parameter_value jtag_uart_0 hubInstanceID {0}
set_instance_parameter_value jtag_uart_0 readBufferDepth {64}
set_instance_parameter_value jtag_uart_0 readIRQThreshold {8}
set_instance_parameter_value jtag_uart_0 simInputCharacterStream {}
set_instance_parameter_value jtag_uart_0 simInteractiveOptions {NO_INTERACTIVE_WINDOWS}
set_instance_parameter_value jtag_uart_0 useRegistersForReadBuffer {0}
set_instance_parameter_value jtag_uart_0 useRegistersForWriteBuffer {0}
set_instance_parameter_value jtag_uart_0 useRelativePathForSimFile {0}
set_instance_parameter_value jtag_uart_0 writeBufferDepth {64}
set_instance_parameter_value jtag_uart_0 writeIRQThreshold {8}

add_instance LCD_Custom_instruction_0 LCD_Custom_instruction 1.0
set_instance_parameter_value LCD_Custom_instruction_0 idle_state {0}
set_instance_parameter_value LCD_Custom_instruction_0 busy_state {1}
set_instance_parameter_value LCD_Custom_instruction_0 end_state {3}

# connections and connection parameters
add_connection nios2_qsys_0.instruction_master nios2_qsys_0.jtag_debug_module avalon
set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module baseAddress {0x2800}
set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module defaultConnection {0}

add_connection nios2_qsys_0.data_master nios2_qsys_0.jtag_debug_module avalon
set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module baseAddress {0x2800}
set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module defaultConnection {0}

add_connection clk_0.clk nios2_qsys_0.clk clock

add_connection clk_0.clk_reset nios2_qsys_0.reset_n reset

add_connection clk_0.clk_reset onchip_memory2_0.reset1 reset

add_connection clk_0.clk onchip_memory2_0.clk1 clock

add_connection nios2_qsys_0.data_master onchip_memory2_0.s1 avalon
set_connection_parameter_value nios2_qsys_0.data_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/onchip_memory2_0.s1 baseAddress {0x1000}
set_connection_parameter_value nios2_qsys_0.data_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection nios2_qsys_0.instruction_master onchip_memory2_0.s1 avalon
set_connection_parameter_value nios2_qsys_0.instruction_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/onchip_memory2_0.s1 baseAddress {0x1000}
set_connection_parameter_value nios2_qsys_0.instruction_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection clk_0.clk buttons.clk clock

add_connection clk_0.clk_reset buttons.reset reset

add_connection nios2_qsys_0.data_master buttons.s1 avalon
set_connection_parameter_value nios2_qsys_0.data_master/buttons.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/buttons.s1 baseAddress {0x3030}
set_connection_parameter_value nios2_qsys_0.data_master/buttons.s1 defaultConnection {0}

add_connection nios2_qsys_0.instruction_master buttons.s1 avalon
set_connection_parameter_value nios2_qsys_0.instruction_master/buttons.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/buttons.s1 baseAddress {0x3030}
set_connection_parameter_value nios2_qsys_0.instruction_master/buttons.s1 defaultConnection {0}

add_connection clk_0.clk leds.clk clock

add_connection clk_0.clk_reset leds.reset reset

add_connection nios2_qsys_0.data_master leds.s1 avalon
set_connection_parameter_value nios2_qsys_0.data_master/leds.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/leds.s1 baseAddress {0x3020}
set_connection_parameter_value nios2_qsys_0.data_master/leds.s1 defaultConnection {0}

add_connection nios2_qsys_0.instruction_master leds.s1 avalon
set_connection_parameter_value nios2_qsys_0.instruction_master/leds.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/leds.s1 baseAddress {0x3020}
set_connection_parameter_value nios2_qsys_0.instruction_master/leds.s1 defaultConnection {0}

add_connection clk_0.clk jtag_uart_0.clk clock

add_connection clk_0.clk_reset jtag_uart_0.reset reset

add_connection nios2_qsys_0.data_master jtag_uart_0.avalon_jtag_slave avalon
set_connection_parameter_value nios2_qsys_0.data_master/jtag_uart_0.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/jtag_uart_0.avalon_jtag_slave baseAddress {0x3048}
set_connection_parameter_value nios2_qsys_0.data_master/jtag_uart_0.avalon_jtag_slave defaultConnection {0}

add_connection nios2_qsys_0.instruction_master jtag_uart_0.avalon_jtag_slave avalon
set_connection_parameter_value nios2_qsys_0.instruction_master/jtag_uart_0.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/jtag_uart_0.avalon_jtag_slave baseAddress {0x3048}
set_connection_parameter_value nios2_qsys_0.instruction_master/jtag_uart_0.avalon_jtag_slave defaultConnection {0}

add_connection nios2_qsys_0.d_irq jtag_uart_0.irq interrupt
set_connection_parameter_value nios2_qsys_0.d_irq/jtag_uart_0.irq irqNumber {0}

add_connection nios2_qsys_0.custom_instruction_master LCD_Custom_instruction_0.nios_custom_instruction_slave nios_custom_instruction
set_connection_parameter_value nios2_qsys_0.custom_instruction_master/LCD_Custom_instruction_0.nios_custom_instruction_slave CIName {lcd_custom_instruction_0}
set_connection_parameter_value nios2_qsys_0.custom_instruction_master/LCD_Custom_instruction_0.nios_custom_instruction_slave CINameUpgrade {}
set_connection_parameter_value nios2_qsys_0.custom_instruction_master/LCD_Custom_instruction_0.nios_custom_instruction_slave arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.custom_instruction_master/LCD_Custom_instruction_0.nios_custom_instruction_slave baseAddress {0.0}
set_connection_parameter_value nios2_qsys_0.custom_instruction_master/LCD_Custom_instruction_0.nios_custom_instruction_slave opcodeExtensionUpgrade {-1}

# exported interfaces
add_interface clk clock sink
set_interface_property clk EXPORT_OF clk_0.clk_in
add_interface reset reset sink
set_interface_property reset EXPORT_OF clk_0.clk_in_reset
add_interface buttons conduit end
set_interface_property buttons EXPORT_OF buttons.external_connection
add_interface leds conduit end
set_interface_property leds EXPORT_OF leds.external_connection
add_interface lcd conduit end
set_interface_property lcd EXPORT_OF LCD_Custom_instruction_0.conduit_end