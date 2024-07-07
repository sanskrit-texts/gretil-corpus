# gretil-corpus

## Changes

### Validation according to XML specification

* Fixed some duplicated ```@xml:id``` within the same document.

* For the ```@xml:id``` attributes that were invalid NCNames, I did the following replacements:

    * ```,``` with ```_comma_```;
    * ```*``` with ```_asterisk_```;
    * ```@``` with ```_at-sign_```;
    * ```:``` with ```_colon_```;
    * ```[``` with ```_left-square-bracket_```;
    * ```]``` with ```_right-square-bracket_```;
    * ```|``` with ```_pipeline_```;
    * ```/``` with ```_forward-slash_```;
    * ```(``` with ```_left-parenthesis_```;
    * ```)``` with ```_right-parenthesis_```;
    * space with nothing.

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



