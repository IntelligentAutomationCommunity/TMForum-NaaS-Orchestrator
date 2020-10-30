# TMForum-NaaS-Orchestrator
This repository contains the implementation of the TMForum Service Problem Management NaaS Orchestrator that was demonstrated at TM Forum DTWS 2020

## Summary
This package supports the following operations as defined in the [TM Forum Service Problem Maagement API specification](https://projects.tmforum.org/wiki/download/attachments/110144737/TMF656_Service_Problem_Management_API_REST_Specification_R18.5.0.pdf?api=v2)
* Register Listener
* Unregister Listener
* Create Service Problem
* Retrieve Service Problem
* Update Service Problem
* Service Problem Create Notification
* Service Problem State Change Notification
* Service Problem Attribute Value Change Notification

### Register Listener
A Listener must supply both a `callback` and a `query` parameter in the registration request.
The `callback` parameter must be a URL that matches the following pattern: ^https?://<alphanumeric>+
The `query` parameter must contain one or more of the following terms (in any order), separated by the & character:
* `affectedLocation.id=<Location-UUID>`
* `affectedResource.id=<Resource-UUID>`
* `affectedService.id=<Service-UUID>`
* `serviceProblem.id=<serviceProblem-UUID>`

Where `Location-UUID`, `Resource-UUID`, `Service-UUID` and `ServiceProblem-UUID` are values that must be present in the `id` column of the `Place`, `Resource`, `Service` and `ServiceProblem` tables respectively.

Notifications will then be issued to the callback URL for any creation or update of service problems that match all of the given terms.

If the `query` parameter is set to `serviceProblem.id=00000000-0000-0000-0000-000000000000`, then a dummy Service Problem Information Required Notification is issued to the provided `callback` URL every 30 seconds for a hour, or until the Listener is deleted (whichever comes first).

Multiple separate Listeners may be registered with the same `callback` URL, but only one notification will be issued; each separate Listsner must be separately unregistered.

### References
The following attributes of a serviceProblem are defined as `ref` or `array of ref` objects in the TM Forums API Specification:
* affectedLocation
* affectedResource
* affectedService
* originatoryParty
* parentProblem
* relatedParty
* responsibleParty
* rootCauseResource
* rootCauseService
* underlyingProblem

For all of these, both the `id` and the `href` values *must* be provided. If the `href` indicates that the referenced object is managed by this Cortex instance (see [Localisation](https://github.com/IntelligentAutomationCommunity/TMForum-NaaS-Orchestrator/new/master?readme=1#localisation)), 
then the `id` value must be a UUID that is present in the `id` column of the `Party`, `Place`, `Resource`, `Service` or `ServiceProblem` table as appropriate.

### Notification Receipt Handling
Upon receipt of a Service Problem Creation Notification, Cortex will create a local service problem, with the received service problem as an underlying service problem. The local service problem will be linked to affected services based upon data in the `Inventory` table, and appropriate notifications will be issued to any registered listeners.
Updates to the recived service problem (via service problem attribute value changed notifications or service problem state change notifications) will result in corresponding updates to the local service problem.

## Installation
### Database table creation
Create database tables by running the SQL scripts in the package. Note that the `Alarms` and `Invetory` tables must exist in the same database, and all of the other tables must also exist the same database, but these may be two different databases or the same.
### Studio Package Creation
Download the Studio Package file and Import it into your Cortex Environment.
Don't forget to apply rights using the Studio Authorization module.
### Localisation
The following subtasks provide localisation information for the implementation; these must be reviewed and modified appropriately:
* `TMF-Open-Database` - this opens the database that contains all the tables except the `Alarm` and `Inventory` tables. 
If the [CTX-Configuration-Store](https://github.com/CortexIntelligentAutomation/CTX-Configuration-Store) package is installed, then the database connection string may be configured in the `ConnectionString` parameter in the `TMF656` Area; otherwise, update the initial value of the `l_Connection-String` variable in the subtask
* `TMF-Get-Host-URI` - this returns the host URL and host port which support operations on objects (it identifies whether a `href` is local to this Cortex instance or not).
If the [CTX-Configuration-Store](https://github.com/CortexIntelligentAutomation/CTX-Configuration-Store) package is installed, then the host name string may be configured in the `Host_Name` parameter in the `TMF656` Area, and the port number in the `Port_Number`parameter in the `TMF656` Area; otherwise, update the initial values of the `o_host-uri` and `o_host-port` variables in the subtask
* `Catalyst-Open-Database` - this opens the database that contains the `Alarm` and `Inventory` tables. 
If the [CTX-Configuration-Store](https://github.com/CortexIntelligentAutomation/CTX-Configuration-Store) package is installed, then the database connection string may be configured in the `ConnectionString` parameter in the `DTWS-2020` Area. Otherwise, update the default value of the `l_Connection-String` variable in the subtask



:thumbsup: Enjoy! :wink:


