# DnD Character Sheet Creater

Project Visual
![image](https://github.com/user-attachments/assets/e4348580-6084-4856-9828-e0b61aef9151)

## About Me
  Sarp Kutay Ekinci is a first-year Computer Science student at Ege University. With a strong passion for gaming and music, he enjoys exploring new virtual worlds and immersing himself in various musical genres. Driven by a desire to merge his interests with technology, Sarp is focused on building a career in the tech field, particularly in areas like cybersecurity and artificial intelligence. His curiosity and dedication to learning shape both his academic and personal pursuits, making him excited about the future of tech and its possibilities.

## Description
  The DnD Character Sheet Creator is a tool built on the Solana blockchain that helps players easily generate and manage their Dungeons & Dragons character sheets. The project accepts necessary inputs, such as attributes (Strength, Dexterity, Intelligence, etc.), and calculates the corresponding modifiers. It automatically populates the character’s stats, including attack bonuses, skills, and abilities. By utilizing blockchain technology, this project ensures secure and immutable storage of character data. Players can update, retrieve, and manage their character information seamlessly while ensuring their data is always protected and available. The system handles calculations for important stats like dexterity, intelligence, attack bonuses, and more, providing an efficient, user-friendly experience.

## Vision
  The DnD Character Sheet Creator aims to simplify the character creation process, especially for beginners, by automating the calculation of modifiers and providing an accessible platform for all players. This project eliminates the need for specialized DnD dice, making it easier for anyone, regardless of access to physical resources, to create and manage their characters. By developing this tool, I hope to enhance the DnD experience, making it more enjoyable, inclusive, and accessible, especially for those playing online. This project will foster a larger, more diverse community of players, helping to make DnD more fun and accessible to everyone.

## Project Roadmap / Future Plans

Smart Contract Development:

Functions:
createCharacter(): Takes user inputs (attributes, race, class, etc.), calculates modifiers, and stores character data on the blockchain.
updateCharacter(): Allows users to update character attributes or modifiers if changes occur.
getCharacter(): Retrieves stored character data for display.
calculateModifiers(): Calculates the modifiers for attributes like Dexterity, Intelligence, Strength, etc., based on user input.
Variables:
characterData: Struct to store character attributes, modifiers, and other essential information.
userAddress: Tracks the wallet address associated with each character.
Smart Contract Testing:

Test contract functions for correct storage, calculation, and retrieval of character data.
Ensure the contract handles edge cases (e.g., invalid inputs or updates) securely.
Front-End Development:

UI/UX Design: Create an easy-to-use interface where users input character details (attributes, race, class).
Interactions: Integrate smart contract functions with the front-end using Solana’s web3.js library to interact with the blockchain (e.g., displaying character stats, submitting data to the blockchain).
Implement a character sheet display where users can view and edit their character information.
Smart Contract & Front-End Integration:

Ensure smooth interaction between the front-end and smart contract, with proper data flow from the UI to the blockchain and back.
Handle wallet connections (e.g., Phantom Wallet) for user authentication and interaction.
User Testing & Optimization:

Conduct user testing for functionality, performance, and usability.
Optimize the application for smooth interaction and low latency, ensuring blockchain interactions are efficient.
Deployment:

Deploy the smart contract on the Solana blockchain.
Launch the front-end application on a web hosting platform (e.g., Netlify or Vercel) for public use.
Ensure monitoring for any issues after deployment and provide necessary updates.

## The Tech We Use
Solana Blockchain, Solana Web3.js, React.js, Node.js & Express, Phantom Wallet, Solana CLI, CSS/HTML (For Styling),GitHub

## Smart Contract Address
Since the project is still in development, the smart contract address has not been generated yet.

## Setup Environment

Overview
A blockchain-based tool for creating and managing Dungeons & Dragons character sheets, built on the Solana blockchain. This project allows players to easily calculate and store character attributes and modifiers, providing a seamless experience for both beginners and seasoned players.

Features
Input character attributes (Strength, Dexterity, Intelligence, etc.)
Automatically calculate modifiers for each attribute
Store character data securely on the Solana blockchain
View and update character information
Access the application directly from a web interface
Installation Guide
Prerequisites
Solana CLI: Ensure you have the Solana Command Line Interface (CLI) installed. If not, follow the instructions here.
Node.js: You will need Node.js and npm installed. Download from here.
Phantom Wallet (or another Solana wallet): Set up a wallet to interact with the blockchain.
Clone the Repository

git clone https://github.com/yourusername/dnd-character-sheet-creator.git
cd dnd-character-sheet-creator
Install Dependencies
Install the required dependencies for both the front-end and smart contract.


npm install
Set Up the Solana Smart Contract
Deploy the smart contract on the Solana blockchain.

Navigate to the smart-contract directory and run:

solana deploy
After deployment, update the contract address in your project settings.

Front-End Setup
Set up the front-end to connect with the deployed smart contract.
Configure the Solana wallet in the front-end to interact with the blockchain.
Ensure your Solana wallet is connected to the devnet or mainnet as per your deployment environment.
Run the Application Locally
To start the application locally, run:

npm start
This will open the app in your browser where you can start creating and managing DnD character sheets!

Accessing the App
Visit the app's URL in your browser (e.g., http://localhost:3000) to interact with the character sheet creator.

Contributing
If you'd like to contribute to this project, feel free to fork the repository, create a new branch, and submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.
