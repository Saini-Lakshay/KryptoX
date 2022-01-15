// SPDX-License-Identifier: UNLISANCED

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    event Transfer (
        address _from,
        address _receiver,
        uint _amount,
        string _message,
        uint256 _timestamp,
        string _keyword
    );

    struct TransferStruct {
        address _sender;
        address _receiver;
        uint _amount;
        string _message;
        uint256 _timestamp;
        string _keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable _receiver, uint256 _amount, string memory _message, string memory _keyword) public {
        // adding block to blockchain
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, _receiver, _amount, _message, block.timestamp, _keyword));
        emit Transfer(msg.sender, _receiver, _amount, _message, block.timestamp, _keyword);
    }

    function getAllTransactions() public view returns(TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns(uint256) {
        return transactionCount;
    }

}