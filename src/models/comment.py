from pydantic import BaseModel, EmailStr, Field
from pydantic.functional_validators import BeforeValidator
import datetime
from typing import List, Optional
from bson import ObjectId
from typing_extensions import Annotated

PyObjectId = Annotated[str, BeforeValidator(str)]

class Comment(BaseModel):
    """
    Container for a single club record
    """

    id: Optional[PyObjectId] = Field(alias="_id", default=None)
    text: str = Field(...)
    user_id: PyObjectId =  Field(...) 
    event_id: PyObjectId =  Field(...) 
    social_media: List[str] = Field(default_factory=list)
    date: datetime.date = Field(...)
    time: datetime.time = Field(...)