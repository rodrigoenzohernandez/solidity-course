//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;


contract Events {

    uint count;
    uint count2;
    event incremented(address indexed _addr, address indexed _addr2, uint256 count, uint256 count2);
    event superado(address _addr);

    function increment (address _addr)external {
        count++;
        count2 = count2 +2;

        emit incremented(msg.sender, _addr, count, count2);

        if(count > 3){
            emit superado(msg.sender);
        }

    }

}