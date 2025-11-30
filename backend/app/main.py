from fastapi import FastAPI
from .services import service1, service2, service3

app = FastAPI()

@app.get("/")
def root():
    return {"message": "FastAPI is Running!"}

@app.get("/service1")
def s1():
    return service1.process()

@app.get("/service2")
def s2():
    return service2.process()

@app.get("/service3")
def s3():
    return service3.process()
