
#!/usr/bin/python3
"""
A module containing the City model
"""
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
import MySQLdb
from relationship_state import Base


class City(Base):
    """creation of the table states"""
    __tablename__ = 'cities'
    id = Column(Integer, autoincrement=True, primary_key=True,
                nullable=False, unique=True)
    name = Column(String(128), nullable=False)
    state_id = Column(Integer, ForeignKey("states.id"), nullable=False)
