pragma solidity >=0.4.22 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/ERC20.sol";

contract ERC20_test {
    ERC20 instance;

    function beforeEach() public {
        instance = ERC20(DeployedAddresses.ERC20());
    }

    function testTotalSupply() public {
        uint expected = 1000000;
        Assert.equal(instance.totalSupply(), expected, "Total Supply should have 1000000 Coin initially");
    }

    function testBalanceOf() public {
        Assert.equal(
            instance.balanceOf(0x29D9C4405A72ffa26eB13218b7C29F98F2B21aD0),
            1000000,
            "Total Supply should have 1000000 Coin initially"
        );
    }
}
