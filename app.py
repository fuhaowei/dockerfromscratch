from flask import Flask, request, jsonify
import os

app = Flask(__name__)

messages = []

@app.route('/messages', methods=['GET'])
def get_messages():
    return jsonify(messages)

@app.route('/messages', methods=['POST'])
def add_message():
    message = request.json.get('message', '')
    if message:
        messages.append(message)
        return jsonify({"status": "success", "message": message})
    else:
        return jsonify({"status": "failure", "error": "No message provided"}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
