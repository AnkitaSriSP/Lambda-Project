from pydantic import BaseModel, EmailStr, Field
from pydantic.functional_validators import BeforeValidator
from typing import List, Optional
from bson import ObjectId
from typing_extensions import Annotated

PyObjectId = Annotated[str, BeforeValidator(str)]

class User(BaseModel):
    """
    Container for a single user record
    """

    # The primary key for the StudentModel, stored as a `str` on the instance.
    # This will be aliased to `_id` when sent to MongoDB,
    # but provided as `id` in the API requests and responses.
    id: Optional[PyObjectId] = Field(alias="_id", default=None)
    name: str = Field(...)
    password: str = Field(...)
    rollno: str = Field(...)
    email: EmailStr = Field(...)
    role: str = Field(...) # Basically a role can be 'admin' or 'user' (or student or club_head or faculty etc.)
    # is_admin: bool = False
    clubs: List[PyObjectId] = Field(default_factory=list) # Will contain club ids