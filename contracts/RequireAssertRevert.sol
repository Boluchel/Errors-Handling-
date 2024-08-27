// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

error GOAL_CANNOT_BE_ZERO();
error DURATION_MUST_BE_GREATER_THAN_ZERO();
error INVALID_CAMPAIGN_ID();
error ONLY_BENEFACTOR_CAN_WITHDRAW();
error CAMPAIGN_STILL_ACTIVE();

contract Crowdfunding {
    struct Campaign {
        string title;
        string description;
        address benefactor;
        uint256 goal;
        uint256 deadline;
        uint256 amountRaised;
    }

    // state variables
    address owner;
    Campaign[] campaigns;
    uint256 campaignID;
    mapping(uint256 => Campaign) campaignMapping;

    // events
    event createdCampaign(
        string indexed title,
        string indexed description,
        uint256 indexed goal,
        uint256 amountRaised
    );

    // constructor
    constructor() {
        owner = msg.sender;
    }

    // functions

    // Create campaign
    function createCampaign(
        string memory _title,
        string memory _description,
        uint256 _goal,
        address _benefactor,
        uint256 _duration
    ) external {
        if (_goal == 0) {
            revert GOAL_CANNOT_BE_ZERO();
        }

        if (_duration <= 0) {
            revert DURATION_MUST_BE_GREATER_THAN_ZERO();
        }

        Campaign memory _newCampaign = Campaign(
            _title,
            _description,
            _benefactor,
            _goal,
            block.timestamp + _duration,
            0
        );

        campaigns.push(_newCampaign);
        campaignID++;
        campaignMapping[campaignID] = _newCampaign;

        emit createdCampaign(_title, _description, _goal, 0);
    }

    // get campaign
    function getCampaign(uint256 _campaignID)
        external
        view
        returns (Campaign memory)
    {
        if (_campaignID > campaignID || _campaignID == 0) {
            revert INVALID_CAMPAIGN_ID();
        }
        return campaignMapping[_campaignID];
    }

    // donate to campaign
    function donateToCampaign(uint256 _campaignID) external payable {
        require(msg.value > 0, "amount must be greater than zero");
        if (_campaignID > campaignID || _campaignID == 0) {
            revert INVALID_CAMPAIGN_ID();
        }
        campaignMapping[_campaignID].amountRaised += msg.value;
    }

    // withdraw from campaign
    function withdraw(uint256 _campaignID) external {
        if (_campaignID > campaignID || _campaignID == 0) {
            revert INVALID_CAMPAIGN_ID();
        }
        require(
            msg.sender == campaignMapping[_campaignID].benefactor,
            "Only benefactor can withdraw"
        );
        assert(block.timestamp >= campaignMapping[_campaignID].deadline);
        
        payable(msg.sender).transfer(campaignMapping[_campaignID].amountRaised);
    }
}
