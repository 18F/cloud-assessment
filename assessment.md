<style>
table, th, td {
  border: 2px solid black;
}
</style>

# Purpose

1. Assess relative complexity and risk of migrating a service to a cloud solution
1. Determine which of the 6 &quot;Re-s&quot; are most appropriate for this services:

  * Remove/Retire:
  * Retain: Keep in a DC, somehow
  * Repurchase: Also call Replace or Drop &amp; Shop
  * Rehost: Also called Lift &amp; Shift. (Automate, Hybrid or Manual rehost options)
  * Replatform: Lift the app out of its host-dependencies for better cloud experience
  * Refactor/Rewrite: Decouple application from non-cloud dependencies.

# Business/Mission Drivers (8)

Migrating this system to a cloud is driven by the opportunity to …

(or &quot;Migrating this system to the cloud presents opportunities to …&quot;)

|   | Strongly Agree | Agree | Neutral | Disagree | Strongly disagree |
| --- | --- | --- | --- | --- | --- |
| Improve the end-user experience |   |   |   |   |   |
| Avoid cost |   |   |   |   |   |
| Improve value to other applications |   |   |   |   |   |
| Reduce complexity |   |   |   |   |   |
| Improve compliance |   |   |   |   |   |
| Improve functionality |   |   |   |   |   |
| Demonstrate cloud feasibility |   |   |   |   |   |
| Reduce security risk |   |   |   |   |   |

Are there other mission/business drivers that should impact prioritizing this relative to other applications that need to be cloud-ready?

# Mission alignment (3)

Before we apply the SaaS-&gt; PaaS-&gt;IaaS-&gt;Datacenter decision flow, we should first determine if this is something we can wholly outsource, or cease doing entirely.

|   | Strongly Agree | Agree | Neutral | Disagree | Strongly disagree |
| --- | --- | --- | --- | --- | --- |
| We can meet the business drivers by **no longer providing** this functionality or service |   |   |   |   |   |
| We can meet the business drivers by having **some other entity manage** this functionality or service |   |   |   |   |   |
| This a core mission need or a sector differentiator |   |   |   |   |   |

# Generic application considerations (17)

What&#39;s needed for the system to run? Documents like system requirements, installation guide, runbooks, architectural diagrams and so on would be helpful to provide as well.

| Question / Consideration | Response |
| --- | --- |
| Application language and language version |   |
| Current application operating system and version |   |
| Compatible application operating systems and platforms (32/64bit) |   |
| App servers in use (e.g. Liberty, Tomcat, etc)?  Any app server side code? |   |
| Any proprietary server product dependencies? |   |
| Does the **app** require any products to be installed on the server besides .NET/Java IIS/appServer? |   |
| Data stores (DS): Databases, Caching, Messaging Queues, Object stores
Any shared data stores? |   |
| Custom data access techniques (view, triggers, stored procedures) / business logic? |   |
| External integrations: Network calls to via, REST, SOAP, sockets, etc / connections/ authentication means |
| Non-HTTP inbound networking protocols like RMI-IIOP, etc |   |
| Use of Distributed 2-phase-commit/XA Transactions |   |
| Persistent Remote/Local File System Access like NFS or SMB/CIFS or over a SAN? |   |
| Batch/ETL (transaction-based processing) and periodic processes? Are these internal or external? |   |
| Do application admins have a side channel (e.g. a different port or service)? |   |
| Stateless or stateful? How is HTTP session state handled? |   |
| Any non-commodity hardware requirements? |   |
| Requirements for local accounts and UIDs? |   |

**Other notes about the application:**

# COTS considerations (7)

| Question / Consideration | Response |
| --- | --- |
| What versions are installed, how current are they, and when are they EOL&#39;d? |   |
| How is the application delivered? Or updates to it (e.g. MSI, WAR) |   |
| Release cycle for patches and upgrades? |   |
| What&#39;s the licensing model? |   |
| How is customization of the application managed? | |
| How is customization versioned-controlled? |   |
| What&#39;s the support model with the vendor? |   |

**Other COTS considerations**

# Locally-developed applications (12)

| Question / Consideration | Response |
| --- | --- |
| Back end application frameworks and APIs in place (e.g. Django, Spring, J2EE, JNDI, …) |   |
| Front end client technologies: JSP, JS, Angular, React, ... |   |
| How is code built (ant, maven, …) and packaged (ear, pkg, AMI, …) |   |
| 3rd-party libraries packaged with deployment |   |
| What version control system? |   |
| Continuous integration? |   |
| Test frameworks for unit, integration, load |   |
| % test coverage |   |
| Mock data availability |   |
| How many lines of code?
| How old is the code base? |   |
| Release frequency |   |

**Other notes on application development:**

# Change processes (11)
Gated, multiteam, high-friction infrequently-used change processes indicate a business environment that will add time, expense and risk to rehosting, replatforming or refactoring (if those processes are left unchanged).

| **Question** | **Brief answer** |
| --- | --- |
| What&#39;s the time to enact a minor functional change (e.g change a button color) |   |
| How many teams/persons are involved in deciding, approving, making and delivering that change? |   |
| What&#39;s the change failure rate? Is that rate OK? |   |
| What&#39;s the time to enact a minor non-functional requirement change (e.g. patch the OS) |    |
| How many teams/persons are involved in deciding, approving, making and delivering that change |   |
| What&#39;s the change failure rate? Is that rate OK? |   |
| How frequently are changes pushed to production? |   |
| What application environments are there (e.g. local, dev, stage, prod)? |   |
| Which teams manage each env? |   |
| How are differences between envs minimized? |   |
| Where are teams located? How do they communicate and plan? |    |

**Other notes on change processes:**

# Business and Operations considerations (14)
| Question / Consideration | Response |
| --- | --- |
| Number of application users? |   |
How many concurrent or in one day? |   |
| How do you handle user/admin authentication and authorization? |   |
| Is peak demand met? How is the application scaled? |   |
| What are current SLA expectations? How often are downtimes and how are they managed? |   |
| How are configuration changes managed? Is there configuration mgmt (DSC, Chef, Puppet) in place? |   |
| What shared services is it operationally dependent on (that is, it won&#39;t work at all without them?) |   |
|  What&#39;s in place for high-availability? |   |
| How much data do you store? How much of that can be cold storage? | |
|  Backup system and RPO/RTO |   |
| External program personnel (e.g., OCIO ADMINs) that may manage or administer the system/application? |   |
| How are data/configs sync&#39; for continuity of operations? |   |
| Are parts of the system or application already virtualized (e.g., Vmware)? - potentially cloud-ready | |
| Dependency on external systems? |   |
| How much data is being passed to-and-from the system, if known. |   |

**Other notes on business and operations:**

# Security and compliance considerations (7)
Having the System Security Plan (SSP), Interconnection Security Agreements (ISAs), and POAM (Plan of Action and Milestones) available would be useful.


| Question / Consideration | Response |
| --- | --- |
| FISMA impact levels |   |
| Current ATO status (none, 3yr, provisional) |   |
| How many POAMs are you carrying? |   |
| Main FISMA information types |   |
| How are interconnections secured and managed? (VPN, shared-secret, PKI,...) |   |
| What security tools/agents are in place? How are they licensed? |   |
| Security key management (Windows, or Database pswd mngt) e.g. how would you change database access passwords? |   |

**Other notes on security and compliance:**

# Notes on this draft assessment

Questions from Feb 7 document that we&#39;re not using

- Leverage modern cloud-based capabilities  (seems redundant in cloud migration drivers)
- 800-53 controls needed, accepted, or compensating controls in place? (not sure how to distill this down for an overview)
- Is there a secure interconnection in place for live CDM data feed/collection? (seemed redundant with ISAs and security tools installed)
- How will licensing work for security tools that need to be installed? What tools are already in environment? (not wanting to jump ahead to solutioning on the new env)
- Security Requirements (Siteminder, Ping, SSO) -  DHS,, (SAML) or NIST implementation? (duplicate by products/agents and how are users/admins authenticated)
- Does solution support PIV/CAC auth (how are users/admins authenticated)
- For the following, not sure if these are about the current system, or the target environment, so omitted for now:
  - Is access allowed to the environment for audits?
  - Is comm path in place for reporting to SOC on security incidents?  Access Agreements for incidents
  - Are all CIs in a CMDB for integration with SOC tools?
  - Who does contingency testing when external? Ensure redundancy in solutions.
  - Are all tools and software used in solution approved on the/DHS TRM?
  - Validating public trust and ROB for all system administrators?