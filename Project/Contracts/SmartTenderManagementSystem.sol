// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract TenderManagementSystem {


    struct Tender {  // Tender Backbone.
        string name;
        string description;
        uint256 tenderId;
        address issuer;
        uint256 highestBid;
        address highestBidder;
        bool isActive;
    }

    struct Bidder {
        uint256 bidderId;
        bool exists;
    }

    mapping(uint256 => Tender) public tenders;

    mapping(address => Bidder) public bidders;

    mapping(uint256 => mapping(uint256 => uint256)) public bids;

    
    event TenderCreated(uint256 tenderId, string name, string description, address issuer);

    
    event BidCreated(uint256 tenderId, uint256 bidderId, uint256 amount);

  
    event TenderEnded(uint256 tenderId, address winner, uint256 winningBid);


    function createTender(string memory _name, string memory _description, uint256 _tenderId) public {
        require(tenders[_tenderId].tenderId == 0, "Tender ID already exists");

        tenders[_tenderId] = Tender({
            name: _name,
            description: _description,
            tenderId: _tenderId,
            issuer: msg.sender,
            highestBid: 0,
            highestBidder: address(0),
            isActive: true
        });

        emit TenderCreated(_tenderId, _name, _description, msg.sender);
    }


    function createBidderId(uint256 _bidderId) public {
        require(!bidders[msg.sender].exists, "Bidder ID already exists");

        bidders[msg.sender] = Bidder({
            bidderId: _bidderId,
            exists: true
        });
    }

    function createBid(uint256 _tenderId, uint256 _amount) public {
        require(tenders[_tenderId].isActive, "Tender is not active");
        require(bidders[msg.sender].exists, "Bidder ID does not exist");
        require(_amount > tenders[_tenderId].highestBid, "Bid amount must be higher than current highest bid");

        uint256 bidderId = bidders[msg.sender].bidderId;

        bids[_tenderId][bidderId] = _amount;

        tenders[_tenderId].highestBid = _amount;
        tenders[_tenderId].highestBidder = msg.sender;

        emit BidCreated(_tenderId, bidderId, _amount);
    }

    function checkWinningBid(uint256 _tenderId) public view returns (uint256, address) {
        require(tenders[_tenderId].tenderId != 0, "Tender does not exist");

        return (tenders[_tenderId].highestBid, tenders[_tenderId].highestBidder);
    }


    function endTender(uint256 _tenderId) public {
        require(tenders[_tenderId].issuer == msg.sender, "Only the issuer can end the tender");
        require(tenders[_tenderId].isActive, "Tender is not active");

        tenders[_tenderId].isActive = false;

        emit TenderEnded(_tenderId, tenders[_tenderId].highestBidder, tenders[_tenderId].highestBid);
    }

 
    receive() external payable {
        revert("Cannot send ether directly to the contract");
    }
}
