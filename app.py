from flask import Flask
from flask_restful import Resource, Api


app = Flask(__name__)
api = Api(app)

class Main(Resource):
    def get(self, id=None):
        response = {
            'status': 'OK',
            'mensagem': 'test',
        }
        return response

api.add_resource(Main, '/')

if __name__ == '__main__':
    app.run(debug=True)
