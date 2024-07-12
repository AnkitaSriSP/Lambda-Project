from pydantic import BaseModel, EmailStr, Field
from pydantic.functional_validators import BeforeValidator
from typing import List, Optional
from bson import ObjectId
from typing_extensions import Annotated

PyObjectId = Annotated[str, BeforeValidator(str)]

class Club(BaseModel):
    id: Optional[PyObjectId] = Field(alias="_id", default=None)
    name: str = Field(...)
    social_media: str = Field(...)
    description: str = Field(...)
    member_ids: List[PyObjectId] = Field(default_factory=list) # Will contain user ids
    event_ids: List[PyObjectId] = Field(default_factory=list) # Will contain event ids