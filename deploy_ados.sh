#!/bin/bash

# Part of the Archipelago Commons Project
# This is to be used as companion of the https://github.com/esmero/archipelago-deployment/ deployment strategy
# Works starting on 8.x-1.0-beta3  
# Assuming you cloned this repository (archipelago-recyclables) inside the d8content/ folder of your local clone of 
# https://github.com/esmero/archipelago-deployment/
# Via docker:
# This should be run as: docker exec -ti esmero-php bash -c 'd8content/archipelago-recyclables/deploy_ados.sh'
# Standalone installation (no docker). Simply d8content/archipelago-recyclables/deploy_ado

echo -ne "Deploying Set of Demo Objects to your Archipelago, please wait until this is done before having a coffee\n"
echo -ne "Running as " && whoami;
# Means Drush can read the site!
drush status bootstrap | grep -q Successful;
(($? == 0)) && { 
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/0c2dc01a-7dc2-48a9-b4fd-3f82331ec803.json --uuid=0c2dc01a-7dc2-48a9-b4fd-3f82331ec803 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/0c2dc01a-7dc2-48a9-b4fd-3f82331ec803 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/1c7fa0de-3ee6-4fb1-aa8f-b272d44827e4.json --uuid=1c7fa0de-3ee6-4fb1-aa8f-b272d44827e4 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/1c7fa0de-3ee6-4fb1-aa8f-b272d44827e4 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/3ca9fa2e-b247-4802-8f58-9f84c61310fc.json --uuid=3ca9fa2e-b247-4802-8f58-9f84c61310fc --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/3ca9fa2e-b247-4802-8f58-9f84c61310fc --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/902f6fc9-4fbd-4d1e-9efd-43de0db564af.json --uuid=902f6fc9-4fbd-4d1e-9efd-43de0db564af --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/902f6fc9-4fbd-4d1e-9efd-43de0db564af --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/9ded7375-65dc-4267-9cff-a58873869257.json --uuid=9ded7375-65dc-4267-9cff-a58873869257 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/9ded7375-65dc-4267-9cff-a58873869257 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/9eb28775-d73a-4904-bc79-f0e925075bc5.json --uuid=9eb28775-d73a-4904-bc79-f0e925075bc5 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/9eb28775-d73a-4904-bc79-f0e925075bc5 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/bdc674ee-9393-4f92-a299-f76e5022499b.json --uuid=bdc674ee-9393-4f92-a299-f76e5022499b --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/bdc674ee-9393-4f92-a299-f76e5022499b --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/f4a4c6ee-4ce9-4b4c-8704-e8057bad0a7d.json --uuid=f4a4c6ee-4ce9-4b4c-8704-e8057bad0a7d --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/f4a4c6ee-4ce9-4b4c-8704-e8057bad0a7d --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/f4fe3bfa-f0bf-4c55-8af7-f90f9ace092d.json --uuid=f4fe3bfa-f0bf-4c55-8af7-f90f9ace092d --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/f4fe3bfa-f0bf-4c55-8af7-f90f9ace092d --user=jsonapi --password=jsonapi --moderation_state=published;
drush cr; 
}

echo -e "If you see no errors, you are done Ingesting your first set of Demo Objects. Enjoy! (and have that coffee)"
