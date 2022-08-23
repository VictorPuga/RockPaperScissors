# Tests

- **Unit tests**:
  They are focused to the most atomic level of code (generally functions).
  Unit tests are used to verify individual functionality.
- **Integration tests**:
  Used to combine different modules or units of code.
  They are a way to test if different units are working correctly together.
- **System tests**:
  Tests that encompass the whole system, from UI to business logic.
- **Regression tests**:
  These type of tests are all the unit tests that have been combined throughout the time.
  When a change is added to the code, these tests are useful to verify if all other
  modules work correctly, of if they have been affected.
- **Automated tests**:
  All of the examples above can be performed manually, or they can be automated.
  If the frameworks allows it, the developer can write tests that verify the program's behavior
  with predefined inputs and expected outputs.
- **Edge case tests**:
  They are a testing technique that focuses on using the most extreme inputs,
  including unexpected ones, to ensure that the program behaves correctly in these situations.

### Tools

```
// TODO
```

## Test cases

### User stories

- As a user, when I tap the rock button, I expect the computer to select a move, and view a result
- As a user, when I choose rock and the computer chooses scissors, I expect to win a point (etc.)
- As a user, when I tap the reset button, I expect to see all points reset to 0

### Unit tests

#### Game button tapped

**ID:** G00

**Scenario:** When a button is tapped with a move, a winner should be given by the game (random)

**Input:** move = `GameMove.rock`

**Expected output:** One of `.one`, `.two` or `.tie` (`Rules.WinnerIndex`)

---

#### Game button points

**ID:** G01

**Scenario:** When a button is tapped, the game points should be updated accordingly

**Input:** move = `GameMove.rock`

**Expected output:**

- If player wins: `game.playerPoints == 1` and `game.cpuPoints == 0`
- If player loses: `game.playerPoints == 0` and `game.cpuPoints == 1`
- If it is a tie: `game.playerPoints == 0` and `game.cpuPoints == 0`

---

#### Reset game

**ID:** G02

**Scenario:** When a user resets the game, all points should be 0

**Input:** Game with points

**Expected output:** `game.playerPoints == 0` and `game.cpuPoints == 0`

---

#### Tie

**ID:** R00

**Scenario:** When both players choose the same move, it should be a tie

**Input:** `move1 = GameMove.rock` and `move2 = GameMove.rock`

**Expected output:** `Rules.WinnerIndex.tie`

---

#### Player 1 winner

**ID:** R01

**Scenario:** When a player choses a move that wins to the cpu, player should be the winner

**Input:** `move1 = GameMove.paper` and `move2 = GameMove.rock`

**Expected output:** `Rules.WinnerIndex.one`

---

#### Player 2 winner

**ID:** R02

**Scenario:** When a player choses a move that loses to the cpu, cpu should be the winner

**Input:** `move1 = GameMove.rock` and `move2 = GameMove.paper`

**Expected output:** `Rules.WinnerIndex.two`

---

#### All combinations

**ID:** R03

**Scenario:** Tests all the posible combinations of moves and their expected outputs

**Input:** (See test file for an accurate description)

**Expected output:** (See test file for an accurate description)

---

#### Random move

**ID:** P00

**Scenario:** Generate a random move

**Input:** None

**Expected output:** One of `.rock`, `.paper`, or `.scissors` (`GameMove`)

---

### UI tests

#### Initial

**ID:** S00

**Scenario:** A user opens the app and no buttons are pressed

**Instructions** Open the app

**Input:** None

**Expected output:**

- `playerPointsLabel` text is `"0"`
- `cpuPointsLabel` text is `"0"`
- `resultLabel` text is `"Tap to play the game"`

---

#### Rock button tap

**ID:** S01

**Scenario:** The rock button is tapped by the user

**Instructions** Tap the rock button 10 times

**Input:** None

**Expected output:**

- `playerPointsLabel` text is NOT `"0"`
- `cpuPointsLabel` text is NOT `"0"`

---

#### Paper button tap

**ID:** S02

**Scenario:** The paper button is tapped by the user

**Instructions** Tap the paper button 10 times

**Input:** None

**Expected output:**

- `playerPointsLabel` text is NOT `"0"`
- `cpuPointsLabel` text is NOT `"0"`

---

#### Scissors button tap

**ID:** S03

**Scenario:** The scissors button is tapped by the user

**Instructions** Tap the rock button 10 times

**Input:** None

**Expected output:**

- `playerPointsLabel` text is NOT `"0"`
- `cpuPointsLabel` text is NOT `"0"`

---

#### Reset button tap

**ID:** S04

**Scenario:** The user resets a game

**Instructions**

- Tap the rock button 10 times
- Tap the reset game button

**Input:** None

**Expected output:**

- `playerPointsLabel` text is `"0"`
- `cpuPointsLabel` text is `"0"`
- `resultLabel` text is `"Tap to play the game"`

---

### Results

| ID    | Result |
| ----- | :----: |
| `G00` |   ✅   |
| `G01` |   ✅   |
| `G02` |   ✅   |
| `R00` |   ✅   |
| `R01` |   ✅   |
| `R02` |   ✅   |
| `R03` |   ✅   |
| `P00` |   ✅   |
| `S00` |   ✅   |
| `S01` |   ✅   |
| `S02` |   ✅   |
| `S03` |   ✅   |
| `S04` |   ✅   |

![Tests image](./Tests-image.png)

## References:

Software Testing Help (August 7, 2022). Types Of Software Testing: Different Testing Types With Details.
Retrieved on August 23, 2022, from https://www.softwaretestinghelp.com/types-of-software-testing/
