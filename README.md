# Cloud Assessment

1. Assess relative complexity and risk of migrating a service to a cloud solution
1. Determine which of the 6 &quot;Re-s&quot; are most appropriate for this services:

  * Remove/Retire:
  * Retain: Keep in a DC, somehow
  * Repurchase: Also call Replace or Drop &amp; Shop
  * Rehost: Also called Lift &amp; Shift. (Automate, Hybrid or Manual rehost options)
  * Replatform: Lift the app out of its host-dependencies for better cloud experience
  * Refactor/Rewrite: Decouple application from non-cloud dependencies.

We've assembled this cloud assessment based on our own experience, and some available assessments from Pivotal and MITRE. Questions are applicable to Federal environments of FISMA Low, Moderate or High impact.

There is no formal scoring as yet. 

## Using

Use the latest `assessment.docx` in the [Releases](https://github.com/18F/cloud-assessment/releases)

The survey the system owner and record the answers. Done.

## Roadmap

* Use pandoc to build .docx releases (e.g. https://mrjoe.uk/convert-markdown-to-word-document/) ready for download - DONE
* Build a webform that you can run locally, or as a service on cloud.gov


## Resources

Pivotal’s “SNAP Not Analysis Paralysis”:  
This is a lightweight technical complexity scoring approach where one should not spend more than 30 minutes scoring each application. It is from Pivotal Labs, and is not formally documented online, but there are references on line, e.g., http://cloud.rohitkelapure.com/2018/09/snap-not-analysis-and-paralysis.html

MITRE's CMAT: Jim Ramsey of MITRE provided Peter Burkholder, 18F, with some of the materials referenced a resentation from an ATARC conference.  The CMAT (Cloud Migration Analysis Tool) uses 30 questions, each with 5 responses, that help rank the applications candidacy for cloud migration. https://www.atarc.org/wp-content/uploads/2017/11/MITRE-Cloud-Migration-Tools-2017-11-30.pdf

## Authors

* Peter Burkholder (@pburkholder)
* Dr. Mark Lucas

