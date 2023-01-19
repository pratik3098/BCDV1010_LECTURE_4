// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract C {
    uint[][] s;
    function f() public {
        // Stores a pointer to the last array element of s.
        uint[][] memory ptr = s;

        // Initialize a new Array with the size 7 
        uint[] memory new_var=new uint[](7);
        
        // Inserting a new element '3' in the array
        new_var[new_var.length -1]= 3;

    }
}