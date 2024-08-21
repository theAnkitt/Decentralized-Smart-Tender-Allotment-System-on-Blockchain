![!\[alt text\](../logo.jpg)](logo.jpg)

The Decentralized Tender Management System aims to revolutionize the traditional tendering process by leveraging blockchain technology. Our system ensures transparency, security, and efficiency by allowing tender issuers and bidders to interact seamlessly on a decentralized platform. By eliminating intermediaries and automating processes through smart contracts, we strive to create a fair and trustworthy environment for all participants involved in procurement and bidding activities.

## Features
Tender Creation: Issuers can effortlessly create new tenders by providing essential details such as tender name, description, and a unique tender ID.
Bidder Registration: Bidders can generate unique bidder IDs to participate in various tenders securely.
Bid Submission: Registered bidders can submit bids by specifying their bidder ID and desired bid amount.
Real-time Bid Status: Participants can check the current highest bid and leading bidder for any active tender.
Tender Closure: Issuers have the authority to conclude the bidding process, automatically selecting the highest bid as the winner.
Immutable Records: All transactions and interactions are recorded on the blockchain, ensuring transparency and auditability.
Security: The system leverages Ethereum's security features to protect against fraud and unauthorized access.
User-Friendly Interface: A simple and intuitive interface facilitates easy navigation and interaction for all users.
System Flowchart
mermaid
Copy code
flowchart TD
    Start(Start)
    CreateTender[Issuer Creates Tender]
    RegisterBidder[Bidder Registers with Bidder ID]
    SubmitBid[Bidder Submits Bid]
    CheckBid[User Checks Current Highest Bid]
    EndTender[Issuer Ends Tender]
    DeclareWinner[System Declares Winner]
    End(End)
    
    Start --> CreateTender --> RegisterBidder --> SubmitBid --> CheckBid --> EndTender --> DeclareWinner --> End
The flowchart illustrates the step-by-step process from tender creation to winner declaration within the decentralized system.

Smart Contract Address
Network: EDU chain
Contract Address: 0xb297E93F62240DC364d655A8e17758753305E401
![!\[alt text\](../edu-chain.png)](edu-chain.png)

Note: Replace the above address with the actual deployed contract address upon deployment.

Getting Started
Prerequisites

Node.js installed on your system.
Truffle Suite or Hardhat for smart contract development.
MetaMask wallet extension for browser interaction.
Access to Ethereum network (Mainnet/Testnet) via providers like Infura.
Installation Steps

Clone the Repository
bash
Copy code
git clone https://github.com/theankitt/DecentralizedTenderSystem.git
Navigate to Project Directory
bash
Copy code
cd DecentralizedTenderSystem
Install Dependencies
bash
Copy code
npm install
Compile Smart Contracts
bash
Copy code
truffle compile
Deploy Smart Contracts
bash
Copy code
truffle migrate --network <network_name>
Run the Application
bash
Copy code
npm run start
Interact via Frontend
Open your browser and navigate to http://localhost:3000.
Connect your MetaMask wallet.
Create tenders, register bidders, submit bids, and manage tenders through the intuitive UI.
Future Scope
Multi-chain Support: Extend compatibility to other blockchain networks like Binance Smart Chain and Polygon.
Advanced Bid Evaluation: Incorporate criteria beyond bid amount, such as bidder reputation and past performance.
Escrow Services: Implement escrow functionality to hold funds securely until contractual obligations are met.
Notifications System: Add real-time notifications for bid updates and tender statuses.
Mobile Application: Develop mobile apps for iOS and Android platforms to increase accessibility.
Integration with IPFS: Store tender documents and related files securely using decentralized storage solutions.
Role-Based Access Control: Enhance security by defining specific roles and permissions within the system.
Contact
Your Name: Ankit Prasad Verma
Email: the01ankit@gmail.com
LinkedIn: linkedin.com/in/AnkitVerma
GitHub: github.com/theankitt

Feel free to reach out for any queries, collaborations, or support regarding this project.

