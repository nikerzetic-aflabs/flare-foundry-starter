// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {console} from "dependencies/forge-std-1.9.5/src/console.sol";
import {Script} from "dependencies/forge-std-1.9.5/src/Script.sol";

import {IEVMTransaction} from "dependencies/flare-periphery-0.0.22/src/coston/IEVMTransaction.sol";
import {stdJson} from "forge-std/StdJson.sol";
import {Base} from "src/utils/fdcStrings/Base.sol";

struct TestProof {
    bytes32[] proof;
    TestResponse response;
}

struct TestResponse {
    bytes32 attestationType;
    string lowestUsedTimestamp;
    TestRequestBody requestBody;
    TestResponseBody responseBody;
    bytes32 sourceId;
    string votingRound;
}

struct TestRequestBody {
    bool listEvents;
    uint256[] logIndices;
    bool provideInput;
    string requiredConfirmations;
    bytes32 transactionHash;
}

struct TestResponseBody {
    string blockNumber;
    TestEvent[] events;
    bytes input;
    bool isDeployment;
    address receivingAddress;
    address sourceAddress;
    string status;
    string timestamp;
    string value;
}

struct TestEvent {
    // BUG data is the problem (bytes -> bytes32)
    bytes data;
    address emitterAddress;
    uint256 logIndex;
    bool removed;
    bytes32[] topics;
}

struct AThing {
    uint8 a;
    string b;
    uint32 c;
}

contract Deploy is Script {
    using stdJson for string;

    function run() external view {
        //AThing memory something = AThing(69, "a", 42);

        // string memory jsonString = vm.readFile("responseTest.json");
        // bytes memory twiceEncoded = jsonString.parseRaw("[0].raw.abiEncoded");
        // bytes memory encoded = abi.decode(twiceEncoded, (bytes));

        // console.log("raw: %s", Base.toHexString(encoded));

        // TestProof memory proof = abi.decode(encoded, (TestProof));
        // console.log("\nproof: %s", Base.toString(proof.proof[0]));

        address addr = 0xa91Eeff0DcDBf7Ac17a135739656033aEFEdE813;
        bytes memory addrStr1 = hex"a91Eeff0DcDBf7Ac17a135739656033aEFEdE813";
        bytes memory addrStr2 = hex"a91Eeff0DcDBf7Ac17a135739656033aEFEdE813";

        bytes memory addrAbi = abi.encodePacked(addr);

        bytes memory addrBytes = addrStr1;
    }
}
