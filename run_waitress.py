from waitress import serve
from engineer_project.wsgi import application

if __name__ == "__main__":
    HOST = "127.0.0.1"
    PORT = 8002
    serve(application, host=HOST, port=PORT)