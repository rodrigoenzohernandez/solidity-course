//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

contract TestDeployment {
    uint256 public countFallback;
    uint256 public countReceive;

    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] = msg.value;
    }

    function withdraw() external returns(bool success) {
        (success,) = payable(msg.sender).call{value: balances[msg.sender]}("");
    }


//Permiten que pueda enviar y recibir saldo directamente a un contrato. Son funciones de estado.

    fallback() payable external{
        countFallback++;
    }

    receive() payable external{
        countReceive--;
    }

}




// si pongo payable acepta que se envie dinero
// si no pongo payable se hace el revert

//a esa función call le paso un valor