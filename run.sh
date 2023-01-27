docker network create mynetwork

docker run --network=mynetwork --name worker -d eval/worker
docker run --network=mynetwork --name planner -d eval/planner