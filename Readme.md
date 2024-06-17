## Multi-Agent System

This is a mid-module assignment from the university of Liverpool created by the AgentSpeak at the JASON environment. Purpose of the project is to successfully create the hero, which can do different tasks such as
picking up the item, taking it to the goblin, returning to the item's location and continuing traversal until there is no more item in the forest. 


# Table of Content
- [Set up](#Set-up)
- [Tasks From the Mid-Module Assignment](#Tasks-From-the-Mid-Module--Assignment)
- [Opening_Environment](#opening_Environment)
- [Hero.asl](#Hero.asl)
- [License](#License)
- [Contributing](#Contributing)


# Set Up

1. Clone the repository
- Open a command prompt or terminal and run the following command\
git clone https://github.com/nicolasKappa/Multi-Agent_System.git

2. Install Visual Studio Code
- Ensure Visual Studio Code is installed https://visualstudio.microsoft.com/downloads/
- To set up the project, Open the projct via Visual Studio Code and push live button on bottom right.

3. Download JASON Environment
- Download the JASON from https://github.com/jason-lang/jason/releases

4. Integrating JASON into Visual Studio Code
- The following readme includes the contect for integrating JASON into VS Code https://github.com/jason-lang/jason/blob/main/doc/tutorials/vscode/readme.adoc


# Tasks From the Mid-Module Assignment
- The hero agent is to move through the environment in a systematic way. It should collect a vase, coin, and gem. Upon finding these three items, it should then move to where the goblin is, and then drop the items in that position. If it does not find all three times, Then it should not visit the goblin. A rule has been placed in hero.asl for you. This rule is at(P). This rule will state whether it is true that the Hero agent is in the same position as the agent named in the parameter P. For example, if there is an agent named philby within the system, then adding the achievement goal !at(philby) will instruct the hero agent to achieve the state of affairs where it is at the same position in the grid as the agent philby. If you wish to use this rule, you must of course define a plan which is applicable.Your code within the hero.asl file should contain your name and student ID at the top, and it should be well commented - it is very important to convey your understanding through these comments.

# Opening Environment 
- First Forest.masj2 needs to be opened, since it creates enviroment within VS Code. Forest1.java to Forest7.java are different forests where coin,vase and gem are located on different locations. In some environments there are more than one items or no items at all.

# Hero.asl
- Hero is the mainc characater in the project. It needs to see the item, pick it up, take it to goblin, move back to the very same place and continiue retrival until there is no more items in the forest and it reaches the end of the forest. The hero is written in AgentSpeak.

# License 
- MIT

# Contributing
- You can Freely contribute according to README.MD
