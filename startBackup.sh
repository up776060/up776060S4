#!/bin/sh

# Create the London-Based, Regional storage bucket
gsutil mb -c regional -l europe-west2 gs://up776060-bucket

# Perform backup of datastore to buclet
gcloud beta datastore export --namespaces='up776060s4' gs://up776060-bucket/