const PaymentToken = artifacts.Require("PaymentToken");

module.exports = function (deployer) {
  deployer.deploy(PaymentToken);
}
