docker network create mynetwork


docker run --network=mynetwork --name worker -e MULT=true -e ADD=false -d eval/worker
docker run --network=mynetwork --name worker1 -e PORT=8081 -e MULT=false -e ADD=true -d eval/worker
docker run --network=mynetwork --name planner -d eval/planner