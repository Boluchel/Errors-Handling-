# Crowdfunding

## Overview
This contract enables the creation and management of crowdfunding campaigns, allowing users to donate and benefactors to withdraw funds.

## Description
The contract includes the following functionality:
* Create Campaign: Allows users to create a new crowdfunding campaign with a title, description, goal, benefactor, and duration.
* Get Campaign: Returns the details of a specific campaign.
* Donate to Campaign: Enables users to donate to a campaign.
* Withdraw from Campaign: Allows the benefactor to withdraw funds from a campaign once the deadline has passed.

## Getting Started

### Installation
```
git clone https://github.com/Boluchel/Errors-Handling-.git
npm install
```
### Deployment
```
npx hardhat compile
```

## Contract Details

### Contract Name: Crowdfunding

### Functions
createCampaign(...)
* Access: External
* Description: Creates a new crowdfunding campaign.

getCampaign(uint256 _campaignID)
* Access: External View
* Description: Returns the details of a specific campaign.
  
donateToCampaign(uint256 _campaignID)
* Access: External Payable
* Description: Donates to a campaign.
  
withdraw(uint256 _campaignID)
* Access: External
* Description: Withdraws funds from a campaign.

### Events
createdCampaign(...)
* Description: Emitted when a new campaign is created.

### Errors
* GOAL_CANNOT_BE_ZERO(): Thrown when the campaign goal is zero.
* DURATION_MUST_BE_GREATER_THAN_ZERO(): Thrown when the campaign duration is less than or equal to zero.
* INVALID_CAMPAIGN_ID(): Thrown when the campaign ID is invalid.
* ONLY_BENEFACTOR_CAN_WITHDRAW(): Thrown when a non-benefactor attempts to withdraw funds.
* CAMPAIGN_STILL_ACTIVE(): Thrown when attempting to withdraw funds from an active campaign.

## Authors
Banwo Boluwatife

## License

This project is licensed under the MIT License
