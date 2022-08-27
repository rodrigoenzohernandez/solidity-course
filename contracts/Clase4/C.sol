// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.15;

contract C {
    uint256 count;

    function getCount() external view returns(uint256){
        return count;
    }

    function setCount(uint256 _count) external {
        count = _count;
    }


}