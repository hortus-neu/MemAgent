# MemAgent
Persistent Memory Agent for Long-term Dialogue &amp; Task Execution

---

# Structure
```
.
├── README.md
├── requirements.txt
├── .gitignore
├── src/
│   ├── __init__.py
│   ├── main.py          # FastAPI main app
│   ├── memory/
│   │   ├── __init__.py
│   │   ├── manager.py   # memory management
│   │   └── models.py    # model storage
│   └── agents/
│       ├── __init__.py
│       └── core_agent.py
├── tests/
│   └── __init__.py
└── docker/
    └── Dockerfile
```

---

# Quick start

```
pip install -r requirements.txt
```
