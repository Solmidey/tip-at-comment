// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TipAtCommentSimple {
    struct Tip { address tipper; uint256 amount; uint256 timestamp; }

    // commentId => all tips
    mapping(bytes32 => Tip[]) public tipsByComment;
    // commentId => total tipped
    mapping(bytes32 => uint256) public totalByComment;

    event Tipped(bytes32 indexed commentId, address indexed tipper, address indexed recipient, uint256 amount);

    // Call with some ETH; sends ETH to `recipient` and records it against `commentId`
    function tip(bytes32 commentId, address payable recipient) external payable {
        require(msg.value > 0, "Send ETH");
        totalByComment[commentId] += msg.value;
        tipsByComment[commentId].push(Tip(msg.sender, msg.value, block.timestamp));
        (bool ok, ) = recipient.call{value: msg.value}("");
        require(ok, "Pay failed");
        emit Tipped(commentId, msg.sender, recipient, msg.value);
    }

    function tipsCount(bytes32 commentId) external view returns (uint256) {
        return tipsByComment[commentId].length;
    }
}
