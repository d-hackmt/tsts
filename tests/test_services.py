from backend.app.services import service1

def test_service1():
    assert "service" in service1.process()
