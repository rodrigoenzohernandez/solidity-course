//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

contract TargetContract {
    uint256 public count;
    uint256 public age;
    address public owner;
    address public targetContract;

function setCount(uint256 _count) external {
    //setea el valor del primer slot de datos
    count = _count + 3000;
}

}

