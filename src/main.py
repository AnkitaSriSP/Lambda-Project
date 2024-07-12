<<<<<<< HEAD
# Some backend code using FastAPI

from fastapi import FastAPI

app = FastAPI()

# That's all. This is just to do a trial git commit.
=======
from fastapi import FastAPI
from src.routers import user_router

app = FastAPI()

app.include_router(user_router.router)
@app.get("/")
async def read_root():
    return {"message": "Welcome to the API!"}
>>>>>>> 4581ce6f157318f42d6b76c1b0c8d63939cc6f29
