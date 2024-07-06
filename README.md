# gretil-corpus

## Changes

### Validation according to XML specification

* Some ```xml:id``` atributes had invalid values (e.g., ```"**HV_App.I,2.7**1:1"```) in files ```sa_harivaMza-app1.xml```, ```sa_brahmapurANa-1-246.xml```, which were invalid according to the XML specification for NCNames. I did renamed those attributes as ```{http://www.tei-c.org/ns/1.0}n```.

* Some ```@xml:id``` were duplicated within the same document.

* For ```@xml:id``` attributes that have to be kept even if they were not valid NCNames, I did the following replacements:

    * ```,``` with ```_comma_```;
    * ```*``` with ```_asterisk_```;    

### Validation according to TEI specification

* Replaced ```{http://www.tei-c.org/ns/1.0}NOTE``` tag with ```{http://www.tei-c.org/ns/1.0}note```.

* Replaced ```{http://www.tei-c.org/ns/1.0}p``` tag with ```{http://www.tei-c.org/ns/1.0}lg```.

* Added correct markers for divisions in file ```sa_viSNupurANa-crit.xml```.

### Work to do, on the semantic level of texts

* Further segmentation for the contents of ```lg``` elements that contain the delimiter ```|``` (see file ```sa_viSNupurANa-crit.xml```).

* There are ```lg``` elements without ```@xml:id```.

### Work to do

* The XML files have to be valid.

* The TEI files have to valid according to TEI schema.



