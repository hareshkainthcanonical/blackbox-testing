# Blackbox Testing against Edgexfoundry Snap

Helpers scripts have been created to support blackbox testing against Edgexfoundry snap. The scripts will install the appropriate snaps and enable required services for testing.

Once the helper scripts have been executed the tester must then run two additional commands that will execute the actual blackbox tests.


Step 1: Setup the test environment by executing the following script.

**./resetTestServiceEnvironment.sh**

The script will also install both edgexfoundry and app-service-configurable snaps from the *edge* channel. If you wish to run different versions of the snap i.e. channels then please make modifications to the **installSnaps.sh** script.

Step 2: Setup environment variable

**. bin/env.sh**

If you wish to run the tests with security than set the following environment variable:

**export SECURITY_SERVICE_NEEDED=true**

Step 3: Execute blackbox tests:

**./bin/run.sh -all** 

The above **-all** flag executes all tests

Note you can run individual tests using different flags, however, it has been determined that the tests have to run in a specific sequence in order to ensure no assertions fail. The exact sequence is as follows:

**-dv** = deviceVirtualTest

**-asc** = appServiceConfigurableTest

**-cd** = coreDataTest

**-co** = commandTest

**-md** = metaDataTest

**-sn** = supportNotificationTest

**-sys** = supportSchedulerTest

Step 4: 

After you have run your chosen test flag (see step 3) you must reset the test environment, see step 1. 


