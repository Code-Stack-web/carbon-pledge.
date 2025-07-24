# carbon-pledge.
 Users can create a pledge with a short message and amount of carbon they aim to offset
## 📦 carbon-pledge

A lightweight Clarity smart contract for tracking carbon offset pledges on the Stacks blockchain. Users can submit public pledges to offset carbon (e.g., tree planting, recycling, etc.), and the total offset is tracked transparently on-chain.

---

### 🚀 Features

* 📥 Add carbon offset pledges with message, amount, and proof link
* 🌱 Total carbon offset tracked live
* 🔍 View all existing pledges
* ✨ Designed to be lightweight and easy to deploy

---

### 📁 Project Structure

```
carbon-pledge/
├── contracts/
│   └── carbon-pledge.clar     # Main Clarity smart contract
├── tests/
│   └── carbon-pledge_test.ts  # (Optional) Clarinet tests
├── Clarinet.toml              # Project config
└── README.md                  # Project documentation
```

---

### 🛠 Usage

#### 1. Install [Clarinet](https://docs.stacks.co/clarity/clarinet-cli)

```bash
npm install -g @hirosystems/clarinet
```

#### 2. Clone and initialize project

```bash
git clone <your-repo-url>
cd carbon-pledge
clarinet check
```

#### 3. Launch local REPL

```bash
clarinet console
```

Then try:

```clojure
(contract-call? .carbon-pledge add-pledge "Planting 5 trees" u50 "https://ipfs.io/ipfs/examplehash")
(contract-call? .carbon-pledge total-carbon-offset)
(contract-call? .carbon-pledge get-all-pledges)
```

---

### 📘 Functions

| Function              | Type      | Description                                                    |
| --------------------- | --------- | -------------------------------------------------------------- |
| `add-pledge`          | Public    | Add a carbon offset pledge (message, amount in kg, proof link) |
| `get-all-pledges`     | Read-only | Returns all saved pledges                                      |
| `total-carbon-offset` | Read-only | Returns total carbon pledged (in kg)                           |
