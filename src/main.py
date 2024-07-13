from fastapi import FastAPI
from src.routers import user_router, club_router

app = FastAPI()

app.include_router(user_router.router)
app.include_router(club_router.router)
@app.get("/")
async def read_root():
    return {"message": "Welcome to the API!"}
