# Starting of a College Club Management System

## Aim of the Software
The aim is to have a centralized system for clubs to update their users, their events, and their merch while being able to put out announcements to all members of the college and have a comment / forum system for each event

## How to setup and run
First, make a new environment (using conda or otherwise) and use environments.yml or requirements.txt appropriately to set up the required libraries.

Then, use your MongoDB Atlas connection URL (the format is mentioned in db.py). To do this, simply run 'export MONGODB_URL="mongodb+srv://<username>:<password>@cluster0.kltowab.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"'

Then, go to terminal, and run uvicorn src.main:app --reload.

It should start running :)

(further details will be added soon) (for now, use POSTMAN to send requests to http://127.0.0.1:8000/)
