from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():

    return  {"message": "Hola desde Flask en Doncker!"} 
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)