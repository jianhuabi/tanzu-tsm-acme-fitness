#!/bin/bash

# point of sales
kubectl delete -f point-of-sales-total.yaml

# front end service
kubectl delete -f frontend-total.yaml

# Users service
kubectl delete -f users-db-initdb-configmap.yaml
kubectl delete -f users-db-total.yaml
kubectl delete -f users-redis-total.yaml
kubectl delete -f users-total.yaml

# order service
kubectl delete -f order-db-total.yaml
kubectl delete -f order-total.yaml

# payment service 
kubectl delete -f payment-total.yaml

# catalog service
kubectl delete -f catalog-db-initdb-configmap.yaml
kubectl delete -f catalog-db-total.yaml
kubectl delete -f catalog-total.yaml

# cart service 
kubectl delete -f cart-redis-total.yaml
kubectl delete -f cart-total.yaml

# service db secrets
kubectl delete -f acme-secrets.yaml

