from pymongo import MongoClient
import motor.motor_asyncio
import os

# For MONGODB_URL, type this in your terminal before you start the server: 
# export MONGODB_URL="mongodb+srv://<username>:<password>@cluster0.kltowab.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
# Note that the above is just an example, you should replace it with your own MongoDB URL

client = motor.motor_asyncio.AsyncIOMotorClient(os.environ["MONGODB_URL"])
db = client.club_db

def get_database():
    return db