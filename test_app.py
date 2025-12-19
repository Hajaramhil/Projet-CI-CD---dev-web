from fastapi.testclient import TestClient
from main import app


client = TestClient(app)


def test_home():
    response = client.get("/")
    assert response.status_code == 200


def test_home_content():
    response = client.get("/")
    assert response.json()["messagee"] == "CI/CD project works"
