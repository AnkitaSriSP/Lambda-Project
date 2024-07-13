from pydantic import BaseModel, EmailStr, Field
from pydantic.functional_validators import BeforeValidator
from typing import List, Optional
import datetime
from bson import ObjectId
from typing_extensions import Annotated

PyObjectId = Annotated[str, BeforeValidator(str)]

class Event(BaseModel):
    """
    Container for a single event record
    """

    id: Optional[PyObjectId] = Field(alias="_id", default=None)
    name: str = Field(...)
    description: str = Field(...)
    date: datetime.date = Field(...)
    time: datetime.time = Field(...)
    # For now assuming no collaborations
    club_id: PyObjectId =  Field(...) 
    # Change this to storing the comments itself (and not the comment ids)
    # Optional: (if we want to store the attendees as well)
    # attendee_ids: Optional[List[ObjectId]] = None


"""
Needed functionalities:
- Get the events sorted based on insert time
- 
"""