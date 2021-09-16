**Rating**: **BAD**

**Score**: **2.38**, max score value is 10.0

**Confidence**: High (9.87, max confidence value is 10.0)

## Details

The rating is based on **security score for open-source projects**.





It used the following sub-scores:

1.  **[Security testing](#security-testing)**: **0.0** (weight is 1.0)
    1.  **[Dependency testing](#dependency-testing)**: **N/A** (weight is 1.0)
        1.  **[Dependabot score](#dependabot-score)**: **N/A** (weight is 1.0)
        1.  **[OWASP Dependency Check score](#owasp-dependency-check-score)**: **N/A** (weight is 1.0)
    1.  **[Fuzzing](#fuzzing)**: **N/A** (weight is 1.0)
    1.  **[Memory-safety testing](#memory-safety-testing)**: **N/A** (weight is 1.0)
    1.  **[Static analysis](#static-analysis)**: **N/A** (weight is 1.0)
        1.  **[LGTM score](#lgtm-score)**: **N/A** (weight is 1.0)
        1.  **[How a project uses CodeQL](#how-a-project-uses-codeql)**: **N/A** (weight is 1.0)
        1.  **[FindSecBugs score](#findsecbugs-score)**: **N/A** (weight is 0.5)
    1.  **[nohttp tool](#nohttp-tool)**: **0.0** (weight is 0.2)
1.  **[Security awareness](#security-awareness)**: **2.5** (weight is 0.9)
1.  **[Vulnerability discovery and security testing](#vulnerability-discovery-and-security-testing)**: **2.0** (weight is 0.6)
    1.  **[Security testing](#security-testing)**: **0.0** (weight is 1.0)
        1.  **[Dependency testing](#dependency-testing)**: **N/A** (weight is 1.0)
            1.  **[Dependabot score](#dependabot-score)**: **N/A** (weight is 1.0)
            1.  **[OWASP Dependency Check score](#owasp-dependency-check-score)**: **N/A** (weight is 1.0)
        1.  **[Fuzzing](#fuzzing)**: **N/A** (weight is 1.0)
        1.  **[Memory-safety testing](#memory-safety-testing)**: **N/A** (weight is 1.0)
        1.  **[Static analysis](#static-analysis)**: **N/A** (weight is 1.0)
            1.  **[LGTM score](#lgtm-score)**: **N/A** (weight is 1.0)
            1.  **[How a project uses CodeQL](#how-a-project-uses-codeql)**: **N/A** (weight is 1.0)
            1.  **[FindSecBugs score](#findsecbugs-score)**: **N/A** (weight is 0.5)
        1.  **[nohttp tool](#nohttp-tool)**: **0.0** (weight is 0.2)
1.  **[Unpatched vulnerabilities](#unpatched-vulnerabilities)**: **10.0** (weight is 0.5)
1.  **[Community commitment](#community-commitment)**: **0.0** (weight is 0.5)
1.  **[Project activity](#project-activity)**: **5.49** (weight is 0.5)
1.  **[Project popularity](#project-popularity)**: **0.0** (weight is 0.5)
1.  **[Security reviews](#security-reviews)**: **0.0** (weight is 0.2)


## How to improve the rating

1.  You can ask the project maintainers to enable LGTM checks for pull requests in the project.
    More info:
    1.  [How to enable LGTM checks for pull requests](https://lgtm.com/help/lgtm/about-automated-code-review)
2.  You can open a pull request to enable CodeQL scans in the project. Make sure that the scans are run on pull requests.
    More info:
    1.  [How to enable CodeQL checks for pull requests](https://docs.github.com/en/free-pro-team@latest/github/finding-security-vulnerabilities-and-errors-in-your-code/enabling-code-scanning-for-a-repository#enabling-code-scanning-using-actions)
3.  You can open a pull request to enable CodeQL scans in the project.
    More info:
    1.  [How to enable CodeQL checks](https://docs.github.com/en/free-pro-team@latest/github/finding-security-vulnerabilities-and-errors-in-your-code/enabling-code-scanning-for-a-repository#enabling-code-scanning-using-actions)
4.  You can open a pull request to enable FindSecBugs for the project.
    More info:
    1.  [FindSecBugs home page](https://find-sec-bugs.github.io/)
5.  You can enable artifact signing in the project's build pipeline.
    More info:
    1.  [Apache Maven Jarsigner Plugin](https://maven.apache.org/plugins/maven-jarsigner-plugin/)
6.  You can enable NoHttp tool in the project's build pipeline.
    More info:
    1.  [NoHttp tool home page](https://github.com/spring-io/nohttp)


## Sub-scores

Below are the details about all the used sub-scores.

### Security testing

Score: **0.0**, confidence is 9.52 (high), weight is 1.0 (high)





This sub-score is based on the following sub-scores:

1.  **[Dependency testing](#dependency-testing)**: **N/A** (weight is 1.0)
    1.  **[Dependabot score](#dependabot-score)**: **N/A** (weight is 1.0)
    1.  **[OWASP Dependency Check score](#owasp-dependency-check-score)**: **N/A** (weight is 1.0)
1.  **[Fuzzing](#fuzzing)**: **N/A** (weight is 1.0)
1.  **[Memory-safety testing](#memory-safety-testing)**: **N/A** (weight is 1.0)
1.  **[Static analysis](#static-analysis)**: **N/A** (weight is 1.0)
    1.  **[LGTM score](#lgtm-score)**: **N/A** (weight is 1.0)
    1.  **[How a project uses CodeQL](#how-a-project-uses-codeql)**: **N/A** (weight is 1.0)
    1.  **[FindSecBugs score](#findsecbugs-score)**: **N/A** (weight is 0.5)
1.  **[nohttp tool](#nohttp-tool)**: **0.0** (weight is 0.2)


### Security awareness

Score: **2.5**, confidence is 10.0 (max), weight is 0.9 (high)

The score shows how a project is aware of security. If the project has a security policy, then the score adds 2.00. If the project has a security team, then the score adds 3.00. If the project uses verified signed commits, then the score adds 0.50. If the project has a bug bounty program, then the score adds 4.00. If the project signs its artifacts, then the score adds 0.50. If the project uses a security tool or library, then the score adds 1.00.



This sub-score is based on 17 features:

1.  Does it have a bug bounty program? **No**
1.  Does it have a security policy? **Yes**
1.  Does it have a security team? **No**
1.  Does it sign artifacts? **No**
1.  Does it use AddressSanitizer? **No**
1.  Does it use Dependabot? **No**
1.  Does it use FindSecBugs? **No**
1.  Does it use LGTM checks? **No**
1.  Does it use MemorySanitizer? **No**
1.  Does it use OWASP ESAPI? **No**
1.  Does it use OWASP Java Encoder? **No**
1.  Does it use OWASP Java HTML Sanitizer? **No**
1.  Does it use UndefinedBehaviorSanitizer? **No**
1.  Does it use nohttp? **No**
1.  Does it use verified signed commits? **Yes**
1.  How is OWASP Dependency Check used? **Not used**
1.  Is it included to OSS-Fuzz? **No**

### Vulnerability discovery and security testing

Score: **2.0**, confidence is 9.76 (high), weight is 0.6 (medium)

The scores checks how security testing is done and how many vulnerabilities were recently discovered. If testing is good, and there are no recent vulnerabilities, then the score value is max. If there are vulnerabilities, then the score value is high. If testing is bad, and there are no recent vulnerabilities, then the score value is low. If there are vulnerabilities, then the score is min.



This sub-score is based on the following sub-score:

1.  **[Security testing](#security-testing)**: **0.0** (weight is 1.0)
    1.  **[Dependency testing](#dependency-testing)**: **N/A** (weight is 1.0)
        1.  **[Dependabot score](#dependabot-score)**: **N/A** (weight is 1.0)
        1.  **[OWASP Dependency Check score](#owasp-dependency-check-score)**: **N/A** (weight is 1.0)
    1.  **[Fuzzing](#fuzzing)**: **N/A** (weight is 1.0)
    1.  **[Memory-safety testing](#memory-safety-testing)**: **N/A** (weight is 1.0)
    1.  **[Static analysis](#static-analysis)**: **N/A** (weight is 1.0)
        1.  **[LGTM score](#lgtm-score)**: **N/A** (weight is 1.0)
        1.  **[How a project uses CodeQL](#how-a-project-uses-codeql)**: **N/A** (weight is 1.0)
        1.  **[FindSecBugs score](#findsecbugs-score)**: **N/A** (weight is 0.5)
    1.  **[nohttp tool](#nohttp-tool)**: **0.0** (weight is 0.2)

This sub-score is based on 1 feature:

1.  Info about vulnerabilities: **6 vulnerabilities, [details below](#known-vulnerabilities)**

### Unpatched vulnerabilities

Score: **10.0**, confidence is 10.0 (max), weight is 0.5 (medium)



No unpatched vulnerabilities found which is good

This sub-score is based on 1 feature:

1.  Info about vulnerabilities: **6 vulnerabilities, [details below](#known-vulnerabilities)**

### Community commitment

Score: **0.0**, confidence is 10.0 (max), weight is 0.5 (medium)





This sub-score is based on 3 features:

1.  Does it belong to Apache? **No**
1.  Does it belong to Eclipse? **No**
1.  Is it supported by a company? **No**

### Project activity

Score: **5.49**, confidence is 10.0 (max), weight is 0.5 (medium)

The score evaluates how active a project is. It's based on number of commits and contributors in the last 3 months.

34 commits in the last 3 months results to 5.23 points
2 contributors increase the score value from 5.23 to 5.49

This sub-score is based on 2 features:

1.  Number of commits in the last three months: **34**
1.  Number of contributors in the last three months: **2**

### Project popularity

Score: **0.0**, confidence is 10.0 (max), weight is 0.5 (medium)

The score is based on number of stars and watchers.
Here is how a number of stars contributes to the score:
0 -> 0.00 (min), 2500 -> 2.50, 5000 -> 5.00, 10000 -> 10.00 (max)
Here is how a number of watchers contributes to the score:
0 -> 0.00 (min), 450 -> 1.50, 750 -> 2.50, 3000 -> 10.00 (max)



This sub-score is based on 2 features:

1.  Number of stars for a GitHub repository: **0**
1.  Number of watchers for a GitHub repository: **0**

### Security reviews

Score: **0.0**, confidence is 10.0 (max), weight is 0.2 (low)



No security reviews have been done

This sub-score is based on 1 feature:

1.  Info about security reviews: **0 security reviews**

### Dependency testing

Score: **N/A**, confidence is 10.0 (max), weight is 1.0 (high)





This sub-score is based on the following sub-scores:

1.  **[Dependabot score](#dependabot-score)**: **N/A** (weight is 1.0)
1.  **[OWASP Dependency Check score](#owasp-dependency-check-score)**: **N/A** (weight is 1.0)


### Fuzzing

Score: **N/A**, confidence is 10.0 (max), weight is 1.0 (high)





This sub-score is based on 2 features:

1.  Is it included to OSS-Fuzz? **No**
1.  Programming languages: **OTHER**

### Memory-safety testing

Score: **N/A**, confidence is 10.0 (max), weight is 1.0 (high)





This sub-score is based on 4 features:

1.  Does it use AddressSanitizer? **No**
1.  Does it use MemorySanitizer? **No**
1.  Does it use UndefinedBehaviorSanitizer? **No**
1.  Programming languages: **OTHER**

### Static analysis

Score: **N/A**, confidence is 8.0 (low), weight is 1.0 (high)





This sub-score is based on the following sub-scores:

1.  **[LGTM score](#lgtm-score)**: **N/A** (weight is 1.0)
1.  **[How a project uses CodeQL](#how-a-project-uses-codeql)**: **N/A** (weight is 1.0)
1.  **[FindSecBugs score](#findsecbugs-score)**: **N/A** (weight is 0.5)


### nohttp tool

Score: **0.0**, confidence is 10.0 (max), weight is 0.2 (low)





This sub-score is based on 2 features:

1.  Does it use nohttp? **No**
1.  Package managers: **None**

### Dependabot score

Score: **N/A**, confidence is 10.0 (max), weight is 1.0 (high)





This sub-score is based on 4 features:

1.  Does it use Dependabot? **No**
1.  Does it use GitHub as the main development platform? **Yes**
1.  Package managers: **None**
1.  Programming languages: **OTHER**

### OWASP Dependency Check score

Score: **N/A**, confidence is 10.0 (max), weight is 1.0 (high)





This sub-score is based on 3 features:

1.  How is OWASP Dependency Check used? **Not used**
1.  Package managers: **None**
1.  What is the threshold for OWASP Dependency Check? **Not specified**

### LGTM score

Score: **N/A**, confidence is 5.0 (low), weight is 1.0 (high)



The score is N/A because the project uses languages that are not supported by LGTM.

This sub-score is based on 2 features:

1.  Programming languages: **OTHER**
1.  The worst LGTM grade of the project: **unknown**

### How a project uses CodeQL

Score: **N/A**, confidence is 10.0 (max), weight is 1.0 (high)



The score is N/A because the project uses languages that are not supported by CodeQL.

This sub-score is based on 4 features:

1.  Does it run CodeQL scans? **No**
1.  Does it use CodeQL checks for pull requests? **No**
1.  Does it use LGTM checks? **No**
1.  Programming languages: **OTHER**

### FindSecBugs score

Score: **N/A**, confidence is 10.0 (max), weight is 0.5 (medium)





This sub-score is based on 2 features:

1.  Does it use FindSecBugs? **No**
1.  Programming languages: **OTHER**



## Known vulnerabilities

1.  [CVE-2020-6181](https://nvd.nist.gov/vuln/detail/CVE-2020-6181): Optional[Under some circumstances the SAML SSO implementation in the SAP NetWeaver (SAP_BASIS versions 702, 730, 731, 740 and SAP ABAP Platform (SAP_BASIS versions 750, 751, 752, 753, 754), allows an attacker to include invalidated data in the HTTP response header sent to a Web user, leading to HTTP Response Splitting vulnerability.]
1.  [CVE-2020-6280](https://nvd.nist.gov/vuln/detail/CVE-2020-6280): Optional[SAP NetWeaver (ABAP Server) and ABAP Platform, versions 731, 740, 750, allows an attacker with admin privileges to access certain files which should otherwise be restricted, leading to Information Disclosure.]
1.  [CVE-2020-6296](https://nvd.nist.gov/vuln/detail/CVE-2020-6296): Optional[SAP NetWeaver (ABAP Server) and ABAP Platform, versions - 700, 701, 702, 710, 711, 730, 731, 740, 750, 751, 753, 755, allows an attacker to inject code that can be executed by the application, leading to Code Injection. An attacker could thereby control the behavior of the application.]
1.  [CVE-2020-6318](https://nvd.nist.gov/vuln/detail/CVE-2020-6318): Optional[A Remote Code Execution vulnerability exists in the SAP NetWeaver (ABAP Server, up to release 7.40) and ABAP Platform (> release 7.40).Because of this, an attacker can exploit these products via Code Injection, and potentially enabling to take complete control of the products, including viewing, changing, or deleting data by injecting code into the working memory which is subsequently executed by the application. It can also be used to cause a general fault in the product, causing the products to terminate.]

