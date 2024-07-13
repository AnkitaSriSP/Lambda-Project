from fastapi import APIRouter, HTTPException, status, Body
from fastapi.responses import Response
from src.models.user import User
from src.database.db import get_database
from bson import ObjectId

db = get_database()
user_collection = db.get_collection("users")

router = APIRouter()

# Test route
@router.get(
    "/users", 
    tags=["users"]
)
async def read_users():
    return [{"username": "Rick"}, {"username": "Morty"}]


# Get a single user
@router.get(
    "/users/{id}",
    response_description="Get a single user",
    response_model=User,
    response_model_by_alias=False,
)
async def show_user(id: str):
    """
    Get the record for a specific user, looked up by `id`.
    """
    if (
        user := await user_collection.find_one({"_id": ObjectId(id)})
    ) is not None:
        return user

    raise HTTPException(status_code=404, detail=f"User {id} not found")

# Add a new user
@router.post(
    "/users/",
    response_description="Add new user",
    response_model=User,
    status_code=status.HTTP_201_CREATED,
    response_model_by_alias=False,
    tags=["users"]
)
async def create_user(user: User = Body(...)):
    """
    Insert a new user record.

    A unique `id` will be created and provided in the response.
    """
    new_user = await user_collection.insert_one(
        user.model_dump(by_alias=True, exclude=["id"])
    )
    print(new_user)
    created_user = await user_collection.find_one(
        {"_id": new_user.inserted_id}
    )
    return created_user


# Delete a User
@router.delete(
    "/users/{id}", 
    response_description="Delete a user"
)
async def delete_user(id: str):
    """
    Remove a single user record from the database.
    """
    delete_result = await user_collection.delete_one({"_id": ObjectId(id)})

    if delete_result.deleted_count == 1:
        return Response(status_code=status.HTTP_204_NO_CONTENT)

    raise HTTPException(status_code=404, detail=f"User {id} not found")

"""
Functions to add:
- Update user
- Add club to a user
- Remove club from a user
"""