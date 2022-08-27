// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.15;


interface IC {
    function getCount() external view returns(uint256);
    function setCount(uint256 _count) external;

}

contract D {

    address public addr;

    function getCoutFromC() external view returns(uint256){
        return IC(addr).getCount();
    }

    function setCountToC(uint256 _count) external {
        IC(addr).setCount(_count);
    }

    function setAddC(address _addr) external {
        addr = _addr;
    }

}