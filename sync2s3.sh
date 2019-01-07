#!/bin/bash

# sync local files to S3:bucket
aws s3 sync ./dist s3://pp.io --acl public-read

# create cloudfront distribution invalidation
aws cloudfront create-invalidation --distribution-id ECJMUYDIF91JL --paths /index.html /index_mob.html /projects.html /projects_mob.html