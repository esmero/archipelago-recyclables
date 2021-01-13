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
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/7e07554c-2251-495f-bf1f-6c4e386aeaec.json --uuid=7e07554c-2251-495f-bf1f-6c4e386aeaec --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/7e07554c-2251-495f-bf1f-6c4e386aeaec --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/9c926165-037d-4633-abde-ed875411fbba.json --uuid=9c926165-037d-4633-abde-ed875411fbba --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/9c926165-037d-4633-abde-ed875411fbba --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/55b50dc3-7179-4e64-a044-cf285fa0b556.json --uuid=55b50dc3-7179-4e64-a044-cf285fa0b556 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/55b50dc3-7179-4e64-a044-cf285fa0b556 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/75bc5d07-3239-4313-addf-b095dd2a7903.json --uuid=75bc5d07-3239-4313-addf-b095dd2a7903 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/75bc5d07-3239-4313-addf-b095dd2a7903 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/25233e88-6ec4-4467-93f6-cb2ac10e8914.json --uuid=25233e88-6ec4-4467-93f6-cb2ac10e8914 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/25233e88-6ec4-4467-93f6-cb2ac10e8914 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/a8549fc1-e6ff-45e8-a6f3-f92fd43d5b55.json --uuid=a8549fc1-e6ff-45e8-a6f3-f92fd43d5b55 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/a8549fc1-e6ff-45e8-a6f3-f92fd43d5b55 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/e42ab9c9-9cfd-4b18-86ae-696e0361298b.json --uuid=e42ab9c9-9cfd-4b18-86ae-696e0361298b --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/e42ab9c9-9cfd-4b18-86ae-696e0361298b --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/e58e33f5-f852-4984-a5bd-d9df19f15f77.json --uuid=e58e33f5-f852-4984-a5bd-d9df19f15f77 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/e58e33f5-f852-4984-a5bd-d9df19f15f77 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/f2c8cb3e-6b5b-4485-9c81-2e6e96ce771b.json --uuid=f2c8cb3e-6b5b-4485-9c81-2e6e96ce771b --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/f2c8cb3e-6b5b-4485-9c81-2e6e96ce771b --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/f4fe3bfa-f0bf-4c55-8af7-f90f9ace092d.json --uuid=f4fe3bfa-f0bf-4c55-8af7-f90f9ace092d --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/f4fe3bfa-f0bf-4c55-8af7-f90f9ace092d --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/fd2eadf8-e718-4867-b1f7-9c70f07da5f2.json --uuid=fd2eadf8-e718-4867-b1f7-9c70f07da5f2 --bundle=digital_object --uri=http://esmero-web --files=/var/www/html/d8content/archipelago-recyclables/ado/fd2eadf8-e718-4867-b1f7-9c70f07da5f2 --user=jsonapi --password=jsonapi --moderation_state=published;
drush archipelago:jsonapi-ingest /var/www/html/d8content/archipelago-recyclables/ado/16f210dd-90b2-4ef2-8343-4d60ac7defb4.json --uuid=16f210dd-90b2-4ef2-8343-4d60ac7defb4 --bundle=digital_object --uri=http://esmero-web --user=jsonapi --password=jsonapi --moderation_state=published;

drush cr; 
}

echo -e "If you see no errors, you are done Ingesting your first set of Demo Objects. Enjoy! (and have that coffee)"
