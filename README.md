# dockerfromscratch

Simple REST API that stores and retrieves messages using Python and Flask, docker image created from scratch with necessary dependencies.


Hosted on docker hub, follow the following instructions:

1. Pull into local using `docker pull carrotcakefu/cloudquant_api`
2. Run using `docker run -p 8000:8000 carrotcakefu/cloudquant_api`
3. Head to http://localhost:8000/messages to see the list of messages sent
4. Send messages using `curl -X POST -H "Content-Type: application/json" -d '{"message": "the message you want"}' http://localhost:8000/messages `

