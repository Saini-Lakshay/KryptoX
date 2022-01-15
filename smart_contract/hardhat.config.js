require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/hOuwqADrHV4vQkOHxT2Sq3HZrJxDNmVE",
      accounts: [
        "5ef2457c91308dd0a4e1042d7d87d4adb900f35bbe4ada321f8760b7301d0cc1",
      ],
    },
  },
};
