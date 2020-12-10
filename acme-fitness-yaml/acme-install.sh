#!/bin/bash

# service db secrets
kubectl apply -f acme-secrets.yaml

# cart service 
kubectl apply -f cart-redis-total.yaml
kubectl apply -f cart-total.yaml

# catalog service
kubectl create -f catalog-db-initdb-configmap.yaml
kubectl apply -f catalog-db-total.yaml
kubectl apply -f catalog-total.yaml

# payment service 
kubectl apply -f payment-total.yaml

# order service
kubectl apply -f order-db-total.yaml
kubectl apply -f order-total.yaml

# Users service
kubectl create -f users-db-initdb-configmap.yaml
kubectl apply -f users-db-total.yaml
kubectl apply -f users-redis-total.yaml
kubectl apply -f users-total.yaml

# front end service
kubectl apply -f frontend-total.yaml

# point of sales
kubectl apply -f point-of-sales-total.yaml