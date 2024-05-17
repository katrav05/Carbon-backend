from fastapi import FastAPI

app = FastAPI()

transport_data = {
    '2-Wheeler': 400,
    '4-Wheeler': 300,
    'Bus/Public': 300,
    'Walk': 200
}

@app.get("/transport")
def get_transport_value():
    transport_data = [
        {"name": "2-Wheeler", "value": 400},
        {"name": "4-Wheeler", "value": 300},
        {"name": "Bus/Public", "value": 300},
        {"name": "Walk", "value": 200}
    ]
    return transport_data
