-include .env

build:; forge build

deploy-sepolia:
	forge script script/FundMe.s.sol:FundMeDeploy --rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvv