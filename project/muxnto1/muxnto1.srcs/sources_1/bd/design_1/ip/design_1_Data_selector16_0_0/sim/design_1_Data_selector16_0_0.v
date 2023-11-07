// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:Data_selector16:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_Data_selector16_0_0 (
  D1_16,
  D2_16,
  D3_16,
  D4_16,
  D5_16,
  D6_16,
  D7_16,
  D8_16,
  D9_16,
  D10_16,
  D11_16,
  D12_16,
  D13_16,
  D14_16,
  D15_16,
  D16_16,
  P1_16,
  P2_16,
  P3_16,
  P4_16,
  S_16,
  out4_16
);

input wire [3 : 0] D1_16;
input wire [3 : 0] D2_16;
input wire [3 : 0] D3_16;
input wire [3 : 0] D4_16;
input wire [3 : 0] D5_16;
input wire [3 : 0] D6_16;
input wire [3 : 0] D7_16;
input wire [3 : 0] D8_16;
input wire [3 : 0] D9_16;
input wire [3 : 0] D10_16;
input wire [3 : 0] D11_16;
input wire [3 : 0] D12_16;
input wire [3 : 0] D13_16;
input wire [3 : 0] D14_16;
input wire [3 : 0] D15_16;
input wire [3 : 0] D16_16;
input wire P1_16;
input wire P2_16;
input wire P3_16;
input wire P4_16;
input wire S_16;
output wire [3 : 0] out4_16;

  Data_selector16 #(
    .WIDTH(4)
  ) inst (
    .D1_16(D1_16),
    .D2_16(D2_16),
    .D3_16(D3_16),
    .D4_16(D4_16),
    .D5_16(D5_16),
    .D6_16(D6_16),
    .D7_16(D7_16),
    .D8_16(D8_16),
    .D9_16(D9_16),
    .D10_16(D10_16),
    .D11_16(D11_16),
    .D12_16(D12_16),
    .D13_16(D13_16),
    .D14_16(D14_16),
    .D15_16(D15_16),
    .D16_16(D16_16),
    .P1_16(P1_16),
    .P2_16(P2_16),
    .P3_16(P3_16),
    .P4_16(P4_16),
    .S_16(S_16),
    .out4_16(out4_16)
  );
endmodule