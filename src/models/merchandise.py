# from pydantic import BaseModel, EmailStr
# from typing import List, Optional
# from bson import ObjectId

# class Merchandise(BaseModel):
#     id: Optional[ObjectId] = None
#     name: str
#     description: Optional[str] = None
#     price: float
#     quantity: int
#     club_id: ObjectId

# class MerchandiseCreate(BaseModel):
#     name: str
#     description: Optional[str] = None
#     price: float
#     quantity: int
#     club_id: ObjectId