# Sanskritam Game

[![first-timers-only](https://img.shields.io/badge/first--timers--only-friendly-tomato.svg?style=flat&logo=git)](https://github.com/tetra-devs/maingame/issues?q=is%3Aissue+is%3Aopen+label%3Afirst-timers-only) [![GitHub license](https://img.shields.io/github/license/tetra-devs/maingame.svg?logo=github)](https://github.com/tetra-devs/maingame/blob/master/LICENSE) [![GitHub stars](https://img.shields.io/github/stars/tetra-devs/maingame.svg?logo=github)](https://github.com/tetra-devs/maingame/stargazers) [![GitHub forks](https://img.shields.io/github/forks/tetra-devs/maingame.svg?logo=github&color=teal)](https://github.com/tetra-devs/maingame/network/members) [![GitHub top language](https://img.shields.io/github/languages/top/tetra-devs/maingame?color=yellow&logo=python)](https://github.com/tetra-devs/maingame)
## Team TetraDev Productathon 2020 Submission

---
> ## :mask: [COVID-19](http://corona-cases-india.netlify.com/) | Stay Home, Stay Safe! :house:  <br> :mag_right: Checkout [this](http://corona-cases-india.netlify.com/) web app for live CORONA updates.
> ## :bar_chart: Checkout the [COVID-19 Tracker :mask: | INDIA](https://indiafightscorona.netlify.app/) :india:
---

### Our Aim

To develop an interactive game which has a goal to teach the rich and vast language to the community.We are expecting to set some of the levels or checkpoints to our game to teach the **language Sanskrit** to the players.


### Development and Installation

We are using ```GoDot``` game engine for the development purpose of the game.To develop with us below mentioned technologies should be pre-installed in our machine

* Git. [See steps](https://www.atlassian.com/git/tutorials/install-git)
* ```GoDot``` for your operating System (Linux/MAC OS/Windows).[See the installation steps](https://godotengine.org/download/)

* After cloning the repo just open the project from ```GoDot```.

## Getting Started

[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/tetra-devs/maingame?logo=github)](https://vinitshahdeo.github.io/Water-Monitoring-System/) [![GitHub commit activity](https://img.shields.io/github/commit-activity/m/tetra-devs/maingame?color=bluevoilet&logo=github)](https://github.com/tetra-devs/maingame/commits/) [![GitHub repo size](https://img.shields.io/github/repo-size/tetra-devs/maingame?logo=github)](https://vinitshahdeo.github.io/Water-Monitoring-System/)

**1.** Fork [this](https://github.com/tetra-devs/maingame/) repository.
Click on the <a href="https://github.com/tetra-devs/maingame/"><img src="https://img.icons8.com/ios/24/000000/code-fork.png"></a> symbol at the top right corner.

**2.** Clone the forked repository.

```bash
git clone https://github.com/<your-github-username>/maingame
```

**3.** Navigate to the project directory.

```bash
cd Water-Monitoring-System
```

**4.** Create a new branch.

```bash
git checkout -b <your_branch_name>
```

**5.** Make changes in source code.

**6.** Stage your changes and commit

```bash
#Add changes to Index
git add .

#Commit to the local repo
git commit -m "<your_commit_message>"
```

>CAUTION: Synch up your local repo with [original repo](https://github.com/tetra-devs/maingame) (Upstream) before pushing your commits.
>This avoids unnecessary conflicts during the merge.

>NOTE: You can do so by adding a [remote handler](https://www.atlassian.com/de/git/tutorials/syncing) reference to the original repo and pull the changes from the respective branch.
>Resolve the [merge-conflicts](https://www.atlassian.com/de/git/tutorials/using-branches/merge-conflicts) if any.


>```bash
>#Add upstream repo
>git remote add upstream https://github.com/tetra-devs/maingame.git
>
>#Disable accidental push to the upstream
>git remote set-url --push upstream DISABLE
>
>#List the remote repo and fetch references
>git remote -v && git fetch upstream
>
>#Check for any new commits in the upstream branch
>git log HEAD..upstream/master #No output indicates, upstream has not moved ahead
>
>#See the patch difference between local and upstream branch
>git diff -p HEAD..upstream/master
>
>```

>CAUTION: If the upstream has moved ahead, rebase your commit and resolve conflicts if any. [Skip otherwise]
>```bash
>git rebase upstream/master
>```
>

**7.** Push your local commits to the remote repo.

```bash
git push -u origin <your_branch_name>
```

**8.** Create a [PR](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request) !

**9.** **Congratulations!** Sit and relax, you've made your contribution to our project

### Repository Structure

#### Our main scene is located at ```scenes/main.tscn```
#### Some of the main folder structures are described here

```/assets```

This folder contains all the assets such as tileset pngs and other binaries. You need to have Git LFS installed to add big files if you want to develop further

```/resources```

This foler contains main scenes which are used in our main map such as various models of houses, player accessable areas, Grass layouts,Rooms indoors and many more.Any tyoe of contribution is highly welcome.


Getting Involved
----------------
Depending on what you want to contribute, you need to take different steps
to get your development environment set up.

Read the [contribution guidelines](CONTRIBUTING.md) and [code of coduct](code_of_conduct.md) first. If you need
help please ask on issues

Enhance this Readme file for a better documentation if you want.

If you have game development skills you are most welcome otherwise you can learn and implement.

If you'd like to add more Sanskrit Resources to the game then you are also most welcome, you need not to be a game developer for that.

The planning board contains all issues and pull requests grouped see them in active issues and PRs of this repository
### Used Libraries and Resources

#### Assets use for TileSet Formation

1. [Isometric Dungeon Tiles](https://www.kenney.nl/assets/isometric-dungeon-tiles).This package contains isometric (and top-down) tiles for dungeon environments, also includes a character (8 directions / 3 animations). Included are walls, floors, furniture, crates, barrels, stairs and more. Also includes a sample for use with Unity Engine and Tiled.

2. [Isometric Library Tiles](https://www.kenney.nl/assets/isometric-library-tiles).This package contains isometric (and top-down) tiles for library environments. Included are walls, floors, tables, bookcases and more. Also includes a sample for use with Unity Engine and Tiled.





