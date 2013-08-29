// one more DLL component. Includes the reset counter.
// used for double clock phase adjustment
module dll2 (CLKIN, CLK0, CLKSH, rst);
        input CLKIN, rst;
        output CLKSH, CLK0;

        wire CLK0_dll, CLKSH_dll;

        // this dll is used for double clock phase adjustment
        CLKDLL DLL
        (
        	.CLKIN(CLKIN),
            .CLKFB(CLK0),
            .RST(rst),
	        .CLK0(CLK0_dll),
    	    .CLK90(),
        	.CLK180(),
	        .CLK270(CLKSH_dll),
    	    .CLK2X(),
        	.CLKDV(),
	        .LOCKED()
        );

        BUFG   clkg   (.I(CLK0_dll),   .O(CLK0));
	    assign 	 CLKSH = CLKSH_dll; // removed bufg following tech support advice
endmodule
