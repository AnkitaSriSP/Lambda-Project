# from pydantic import BaseModel, EmailStr
# from typing import List, Optional
# from bson import ObjectId

# class Event(BaseModel):
#     id: Optional[ObjectId] = None
#     name: str
#     description: Optional[str] = None
#     date: str
#     time: str
#     club_id: ObjectId # Maybe change to a list to handle club collaborations
#     # Optional: (if we want to store the attendees in the first place)
#     # attendee_ids: Optional[List[ObjectId]] = None

# class EventCreate(BaseModel):
#     name: str
#     description: Optional[str] = None
#     date: str
#     time: str
#     club_id: ObjectId

