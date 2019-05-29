# Cloud Assessment

This assessment borrows heavily from work by Pivotal and MITRE in terms of the questions asked. It doesn't have a scoring component, as the weighting of the different factors is going to be context-dependent, and it's important for the tool to have investment and iteration by a team the doing the work. I think having a "black box" scoring tool is not only going to provide wrong answers, but, critically, robs the onsite team the chance to build their own understanding of what works in cloud migration in _their_ environment.

The ideal use for the assessment in its current state is to: 

1. Prioritize applications or services for migration, in terms of complexity and risk, by doing a quick assessment (possibly with a subset of questions) across an entire portfolio
2. Support a deeper dive into the migration path for a particular application by doing an full interview with the relevant SMEs, then using that information to inform an initial cloud strategy, i.e.:

  * Remove/Retire:
  * Retain: Keep in a DC, somehow
  * Repurchase: Also call Replace or Drop &amp; Shop
  * Rehost: Also called Lift &amp; Shift. (Automate, Hybrid or Manual rehost options)
  * Replatform: Lift the app out of its host-dependencies for better cloud experience
  * Refactor/Rewrite: Decouple application from non-cloud dependencies.

We've assembled this cloud assessment based on our own experience, and some available assessments from Pivotal and MITRE. Questions are applicable to Federal environments of FISMA Low, Moderate or High impact.

There is no formal scoring as yet, as noted above.

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
* Lori Breeden-Jones
* Dr. Mark Lucas

