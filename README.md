# MemAgent
Persistent Memory Agent for Long-term Dialogue &amp; Task Execution

---

# Structure
```
memagent/
├── docker/
│   └── Dockerfile          # Container configuration for FastAPI or training environment
│
├── tests/                  # Tests scripts
│
├── docs/                   # Project documentation and design materials
│
├── LICENSE
├── README.md
├── requirements.txt        # Python dependencies
│
├── scripts/
│   └── __init__.py
│
└── src/                    # Core source code
    ├── __init__.py
    ├── main.py             # Entry point (FastAPI application or CLI)
    │
    ├── agents/             # Agent logic modules
    │   ├── __init__.py
    │   ├── controller.py   # Handles input → memory query → output generation
    │   ├── planner.py      # Task planning logic
    │   └── retriever.py    # Interfaces with memory retrieval
    │
    └── memory/             # Memory management modules
        ├── __init__.py
        ├── store.py        # Writes and updates memory (vectorization, storage)
        ├── schema.py       # Defines memory data schema and metadata
        └── summarizer.py   # Summarizes and scores memory importance

```

---

# Quick start

```
pip install -r requirements.txt
```
