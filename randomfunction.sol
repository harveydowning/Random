    function calculateRandomTax() private view returns (uint256) {
        // Generate a random number between 1 and 10
        return randomNumber(1, 10);
    }
    function randomNumber(uint256 min, uint256 max) private view returns (uint256) {
        // Generate a random number between `min` and `max` (inclusive)
        return (uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % (max - min + 1)) + min;
    }
