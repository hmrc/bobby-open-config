bobby-config
============

This contains configuration for bobby.

#### Releasing
Jenkins job must be run in order for these changes to be applied

#### Deprecated Dependencies

This is a json file containing the list of all the deprecated libraries in MDTP.
The file name is 'deprecated-dependencies.json'

The format is an array of JSON objects of the form:
```
   [
     { 
       "organisation" : "uk.gov.hmrc", 
       "name"         : "sbt-auto-build", 
       "range"        : "(,0.8.0)", 
       "reason"       : "Previous versions didn't work correctly", 
       "from"         : "2015-06-08" 
     }
   ]
```

###### Where:
* _organisation_ and _name_ identify the dependency
* _range_ is used to declare minimum, maximum allowed versions of a dependency (both min and max may be optional), and allow "holes" for known incompatible versions. See 'Supported Version Ranges' for more details
* _reason_ tells why the versions in range are deprecated
* _from_ tells when the versions in range become unsupported.


##### Supported Version Ranges
Please see https://github.com/hmrc/bobby#supported-version-ranges
