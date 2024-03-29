from db import db

class UserModel(db.Model):
    __table__name = "users"

    id = db.Column(db.Integer,primary_key = True)
    username = db.Column(db.String(80),unique = True,nullable = False)
    password = db.Column(db.String(256),nullable = False)