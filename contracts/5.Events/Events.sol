//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;


contract Events {

    uint count;
    event incremented(address _addr);
    event superado(address _addr);

    function increment ()external {
        count++;
        emit incremented(msg.sender);

        if(count > 3){
            emit superado(msg.sender);
        }

    }

}