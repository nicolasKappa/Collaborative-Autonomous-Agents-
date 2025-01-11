## Multi-Agent System

This project implements a multi-agent system using the AgentSpeak language within the JASON environment. The goal is to create a hero agent that can pick up items (vase, coin, and gem), deliver them to a goblin, and continue the process until all items are retrieved from the forest.



# Table of Content
- [Set up](#Set-up)
- [Tasks](#Tasks)
- [Opening_Environment](#opening_Environment)
- [Hero.asl](#Hero.asl)
- [License](#License)
- [Contributing](#Contributing)


# Set Up

1. ### Clone the Repository
Clone the repository using the following command:
```bash
git clone https://github.com/nicolasKappa/Collaborative-Autonomous-Agents.git
```
2. Install Visual Studio Code
- Ensure Visual Studio Code is installed https://visualstudio.microsoft.com/downloads/
- To set up the project, Open the projct via Visual Studio Code and push live button on bottom right.

3. Download JASON Environment
- Download the JASON from https://github.com/jason-lang/jason/releases

4. Integrating JASON into Visual Studio Code
- The following readme includes the contect for integrating JASON into VS Code https://github.com/jason-lang/jason/blob/main/doc/tutorials/vscode/readme.adoc


# Tasks 
* The hero agent is designed to systematically move through the environment, collect items, and deliver them to the goblin. The hero will:

- Pick up a vase, coin, or gem.
- Move to the goblin's location and drop the items.
- Return to the item's location and continue until no more items remain.
* The hero's actions are controlled using rules in the hero.asl file. The rule at(P) checks if the hero is at the same position as another agent. You should define a plan to manage the hero’s actions based on this rule.

# Opening Environment 
- Start with Forest.masj2, which sets up the environment in Visual Studio Code. The Forest1.java to Forest7.java files represent different forest environments with varying item placements.

# Hero.asl
- The hero.asl file defines the main character's behavior, where the hero picks up items, delivers them to the goblin, and returns to continue collecting items. The code should be well-commented, and your name and student ID should appear at the top.

# License 
- MIT

# Contributing
- Feel free to contribute to the project by following the guidelines provided in the repository.
