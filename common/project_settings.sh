#!/bin/bash

# The name of the project to deploy services into.
PROJECT_NAME="noted-ability-250314"

# Which default region should regional services use?
PROJECT_REGION="us-central1"

# Which App Engine Region?
# gcloud app regions list
APP_ENGINE_REGION="us-central"

# Which default zone should zonal service use?
PROJECT_ZONE="us-central1-b"

# Used as a suffix for select service names.
ENV_TYPE="dev"

# Used as a prefix for select service names.
ORGANIZATION="muhebits.net"

# This is the Storage bucket used for public assets. 
# The entire bucket is public by default
PUBLIC_ASSETS="muheric-dev-public-bucket"

# This is the Storage bucket used for private assets. 
# The entire bucket is private by default
PRIVATE_ASSETS="muheric-dev-private-bucket"

# The name of the Pubsub topic to create / use
PUB_SUB_TOPIC="muheric-dev-items"

# The name of the custom network for the product and ads services
SERVICES_NETWORK="muheric-dev-app-network"

# The name of the product service subnet
PRODUCT_SUBNET="muheric-dev-prod-app-network-subnet"

# The name of the product service subnet
ADS_SUBNET="muheric-dev-ad-app-network-subnet"

# The name of the Kubernetes cluster used for the products service
PRODUCT_CLUSTER_NAME="muheric-dev-app-clusters"

# The name of the spanner instance
PRODUCT_DB_INSTANCE_NAME="muheric-dev-app-spanner-instance"

# The name of the spanner db
PRODUCT_DB_NAME="muheric-dev-app-spanner-db"

# The service account to use to launch the compute engine instances.
COMPUTE_ENGINE_SERVICE_ACCOUNT=$(gcloud iam service-accounts list --filter='displayName:"Compute Engine default service account"' --format='value(email)')

# The cloud function name
FUNCTION_NAME="muheric-dev-upload"

# Bigtable settings...
# The name of our Bigtable instance. An instance is basically a container for our cluster.
BIGTABLE_INSTANCE_ID="$ORGANIZATION-bt-instance-$ENV_TYPE"
BIGTABLE_CLUSTER_ID="$ORGANIZATION-bt-cluster-$ENV_TYPE"
BIGTABLE_DISPLAY_NAME="$ORGANIZATION-bt-name-$ENV_TYPE"
BIGTABLE_TABLE_ID=items