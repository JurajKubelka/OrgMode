# OrgMode [![Build Status](https://travis-ci.org/JurajKubelka/OrgMode.svg?branch=master)](https://travis-ci.org/JurajKubelka/OrgMode)

This is a [Pharo](http://pharo.org) parser of [Org mode](http://orgmode.org) file.

Org mode is for keeping notes, maintaining TODO lists, planning projects, and authoring documents with a fast and effective plain-text system.

Orignal source code is in [SmalltalkHub](http://www.smalltalkhub.com/#!/~JurajKubelka/OrgMode/).

## Installation 

It is tested on Pharo 5.0. For not it does not work on Pharo 6.0 (developement version), because Petit Parser configuration does not work properly (tested on August 12, 2016).

```
Metacello new
    baseline: #OrgMode;
    repository: 'github://JurajKubelka/OrgMode/repository';
    load.
```
