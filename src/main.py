from fastapi import FastAPI, HTTPException # web
from fastapi.middleware.cors import CORSMiddleware # enable go interact with python
from pydantic import BaseModel # define web datastructure
from dotenv import load_dotenv
import os

