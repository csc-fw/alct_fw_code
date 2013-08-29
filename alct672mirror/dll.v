// DLL component. Includes the reset counter.
module dll (CLKIN, CLK0, CLK2X, clksh, locked);
    input CLKIN;
    output CLK0, CLK2X, locked, clksh;

    wire   CLK0_dll, CLK2X_dll;
    wire   LOCKED_dll;
    reg [24:0] resetcnt = 25'h1fffff8;

    // this dll is used for the clock frequency multiplication by two
    CLKDLL DLL
    (
     .CLKIN(CLKIN),
     .CLKFB(CLK0),
     .RST(resetcnt[24]),
	 .CLK0(CLK0_dll),
     .CLK90(),
	 .CLK180(),
     .CLK270(),
	 .CLK2X(CLK2X_dll),
     .CLKDV(),
	 .LOCKED(LOCKED_dll)
    ); 
	
    always @(posedge CLKIN)
    begin
	    resetcnt <= (LOCKED_dll == 1) ? 0 : resetcnt + 1;
    end

    BUFG   clkg   (.I(CLK0_dll),   .O(CLK0));
    BUFG   clk2xg (.I(CLK2X_dll),  .O(CLK2X));
	assign clksh = CLK0_dll;
    assign locked = LOCKED_dll;
	
endmodule
