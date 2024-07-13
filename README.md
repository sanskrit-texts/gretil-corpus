# gretil-corpus

## Changes

### For the validation according to XML specification

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

### For the alidation according to TEI specification

* Replaced ```{http://www.tei-c.org/ns/1.0}NOTE``` tag with ```{http://www.tei-c.org/ns/1.0}note```.

* Replaced ```{http://www.tei-c.org/ns/1.0}p``` tag with ```{http://www.tei-c.org/ns/1.0}lg```.

* Added correct markers for divisions in file ```sa_viSNupurANa-crit.xml```.

## Work to do, on the semantic level of texts

* Further segmentation for the contents of ```lg``` elements that contain the delimiter ```|``` (see file ```sa_viSNupurANa-crit.xml```).

* There are ```lg``` elements without ```@xml:id```.

* Check ```@corresp```, to point to existing ID-s.

## Work to do, generally speaking

* The XML files have to be valid.

* The TEI files have to valid according to TEI schema.

## Resources

* [SwiftLaTeX, a WYSIWYG Browser-based LaTeX Editor](https://swiftlatex.com/) - maybe this can help with generation in the browser of a LaTeX file from a TEI file.

* [MuPDF WASM](https://mupdf.readthedocs.io/en/latest/mupdf-wasm.html) - maybe this can help with generation in the browser of a PDF file from a TEI file.

* [xml_schema_generator](https://docs.rs/xml_schema_generator/latest/xml_schema_generator/) - for generation of XML schema from XML files.




