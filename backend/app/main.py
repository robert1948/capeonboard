from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from backend.app.api.v1 import onboarding  # ⬅️ Import the router module

app = FastAPI(
    title="CapeOnboard API",
    version="0.1.0"
)

# Allow all origins for dev; restrict in production
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # TODO: Replace with specific domains in production
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ⬇️ Register the onboarding router
app.include_router(onboarding.router)

@app.get("/")
async def read_root():
    return {"message": "Welcome to CapeOnboard backend!"}
