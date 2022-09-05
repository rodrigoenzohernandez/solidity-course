//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

//Recibe la transacción y delega la execución de esa logica al TargetContract. Se podría llamar proxy.
//Nos permite modificar la logica del smart contract, en nuestro proxy seteamos el address de nuestro nuevo contrato con
//la logica modificada
contract DelegateCall {
    uint256 public count;
    uint256 public age;
    address public owner;
    address public targetContract;



function setAddress(address _addr) external {
    targetContract = _addr;
}

function callTargetContract(uint256 _count) external{
    //invoca a un segundo smart contract
    (bool success,) = targetContract.delegatecall(abi.encodeWithSignature("setCount(uint256)", _count));
    require (success, "failed");
}

}

