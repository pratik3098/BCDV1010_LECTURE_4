// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract MappingExample {

    mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowances;

    function addBalance(address _account, uint amount) public {
        _balances[_account]=amount;
    }
    
    function getBalance(address _account) public view returns(uint){
        return  _balances[_account];
    }



    function allow(address _sender, address _recipient, uint amount) public {
        _allowances[_sender][_recipient]=amount;
    }

    
    function getAllowed(address _sender, address _recipient) public view returns (uint) {
        return _allowances[_sender][_recipient];
    }

   // mapping (address => mapping (address => uint256)) private _allowances;

    // event Transfer(address indexed from, address indexed to, uint256 value);
    // event Approval(address indexed owner, address indexed spender, uint256 value);

    // function allowance(address owner, address spender) public view returns (uint256) {
    //     return _allowances[owner][spender];
    // }

    // function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
    //     require(_allowances[sender][msg.sender] >= amount, "ERC20: Allowance not high enough.");
    //     _allowances[sender][msg.sender] -= amount;
    //     _transfer(sender, recipient, amount);
    //     return true;
    // }

    // function approve(address spender, uint256 amount) public returns (bool) {
    //     require(spender != address(0), "ERC20: approve to the zero address");

    //     _allowances[msg.sender][spender] = amount;
    //     emit Approval(msg.sender, spender, amount);
    //     return true;
    // }

    // function _transfer(address sender, address recipient, uint256 amount) internal {
    //     require(sender != address(0), "ERC20: transfer from the zero address");
    //     require(recipient != address(0), "ERC20: transfer to the zero address");
    //     require(_balances[sender] >= amount, "ERC20: Not enough funds.");

    //     _balances[sender] -= amount;
    //     _balances[recipient] += amount;
    //     emit Transfer(sender, recipient, amount);
    // }
}
