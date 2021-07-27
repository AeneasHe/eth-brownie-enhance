pragma solidity =0.8.0;

library console {
    event Message(string msg);

    function _sendMessage(string memory message) private {
        emit Message(message);
    }

    function concat(string memory a, string memory b)
        internal
        pure
        returns (string memory)
    {
        return string(abi.encodePacked(a, b));
    }

    function concat(
        string memory a,
        string memory b,
        string memory c
    ) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b, c));
    }

    function concat(
        string memory a,
        string memory b,
        string memory c,
        string memory d
    ) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b, c, d));
    }

    function concat(
        string memory a,
        string memory b,
        string memory c,
        string memory d,
        string memory e
    ) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b, c, d, e));
    }

    function _toString(bytes memory data) public pure returns (string memory) {
        bytes memory alphabet = "0123456789abcdef";

        bytes memory str = new bytes(2 + data.length * 2);
        str[0] = "0";
        str[1] = "x";
        for (uint256 i = 0; i < data.length; i++) {
            str[2 + i * 2] = alphabet[uint256(uint8(data[i] >> 4))];
            str[3 + i * 2] = alphabet[uint256(uint8(data[i] & 0x0f))];
        }
        return string(str);
    }

    function toString(bytes memory data) public pure returns (string memory) {
        return _toString(data);
    }

    function toString(string memory data) public pure returns (string memory) {
        return data;
    }

    function toString(bool data) public pure returns (string memory) {
        return _toString(abi.encodePacked(data));
    }

    function toString(address account) public pure returns (string memory) {
        return _toString(abi.encodePacked(account));
    }

    function toString(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint256 k = len - 1;
        while (_i != 0) {
            bstr[k--] = byte(uint8(48 + (_i % 10)));
            _i /= 10;
        }
        return string(bstr);
    }

    function toString(int256 value) public pure returns (string memory) {
        return _toString(abi.encodePacked(value));
    }

    function toString(bytes32 value) public pure returns (string memory) {
        return _toString(abi.encodePacked(value));
    }

    function logInt(int256 p0) internal {
        _sendMessage(toString(p0));
    }

    function logUint(uint256 p0) internal {
        _sendMessage(toString(p0));
    }

    function logString(string memory p0) internal {
        _sendMessage(toString(p0));
    }

    function logBool(bool p0) internal {
        _sendMessage(toString(p0));
    }

    function logAddress(address p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes(bytes memory p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes1(bytes1 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes2(bytes2 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes3(bytes3 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes4(bytes4 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes5(bytes5 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes6(bytes6 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes7(bytes7 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes8(bytes8 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes9(bytes9 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes10(bytes10 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes11(bytes11 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes12(bytes12 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes13(bytes13 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes14(bytes14 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes15(bytes15 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes16(bytes16 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes17(bytes17 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes18(bytes18 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes19(bytes19 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes20(bytes20 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes21(bytes21 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes22(bytes22 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes23(bytes23 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes24(bytes24 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes25(bytes25 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes26(bytes26 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes27(bytes27 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes28(bytes28 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes29(bytes29 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes30(bytes30 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes31(bytes31 p0) internal {
        _sendMessage(toString(p0));
    }

    function logBytes32(bytes32 p0) internal {
        _sendMessage(toString(p0));
    }

    function log(uint256 p0) internal {
        _sendMessage(toString(p0));
    }

    function log(string memory p0) internal {
        _sendMessage(toString(p0));
    }

    function log(bool p0) internal {
        _sendMessage(toString(p0));
    }

    function log(address p0) internal {
        _sendMessage(toString(p0));
    }

    function log(uint256 p0, uint256 p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(uint256 p0, string memory p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(uint256 p0, bool p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(uint256 p0, address p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(string memory p0, uint256 p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(string memory p0, string memory p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(string memory p0, bool p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(string memory p0, address p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(bool p0, uint256 p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(bool p0, string memory p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(bool p0, bool p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(bool p0, address p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(address p0, uint256 p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(address p0, string memory p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(address p0, bool p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(address p0, address p1) internal {
        _sendMessage(concat(toString(p0), toString(p1)));
    }

    function log(
        uint256 p0,
        uint256 p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        uint256 p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        uint256 p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        uint256 p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        string memory p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        string memory p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        string memory p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        string memory p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        bool p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        bool p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        bool p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        bool p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        address p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        address p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        address p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        address p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        uint256 p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        uint256 p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        uint256 p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        uint256 p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        string memory p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        string memory p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        string memory p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        string memory p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        bool p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        bool p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        bool p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        bool p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        address p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        address p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        address p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        string memory p0,
        address p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        uint256 p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        uint256 p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        uint256 p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        uint256 p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        string memory p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        string memory p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        string memory p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        string memory p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        bool p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        bool p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        bool p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        bool p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        address p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        address p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        address p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        bool p0,
        address p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        uint256 p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        uint256 p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        uint256 p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        uint256 p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        string memory p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        string memory p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        string memory p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        string memory p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        bool p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        bool p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        bool p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        bool p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        address p1,
        uint256 p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        address p1,
        string memory p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        address p1,
        bool p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        address p0,
        address p1,
        address p2
    ) internal {
        _sendMessage(concat(toString(p0), toString(p1), toString(p2)));
    }

    function log(
        uint256 p0,
        uint256 p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        uint256 p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        string memory p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        bool p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        uint256 p0,
        address p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        uint256 p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        string memory p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        bool p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        string memory p0,
        address p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        uint256 p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        string memory p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        bool p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        bool p0,
        address p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        uint256 p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        string memory p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        bool p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        uint256 p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        uint256 p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        uint256 p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        uint256 p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        string memory p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        string memory p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        string memory p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        string memory p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        bool p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        bool p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        bool p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        bool p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        address p2,
        uint256 p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        address p2,
        string memory p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        address p2,
        bool p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }

    function log(
        address p0,
        address p1,
        address p2,
        address p3
    ) internal {
        _sendMessage(
            concat(toString(p0), toString(p1), toString(p2), toString(p3))
        );
    }
}
