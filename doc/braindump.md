
TODO
---------
* Expose all primitives objects
* Expose all transforms
* Expose all operators
* Expose the WebGL-based viewer as component
* Write tests

Libraries
-----------
* https://github.com/Spiritdude/OpenJSCAD.org
* https://github.com/kaosat-dev/CoffeeSCad
* https://github.com/joostn/OpenJsCad/tree/gh-pages

None of these however are nice/easy to reuse.
TODO: talk to the developers, make into one or a set of nice libraries,
with node/npm and component.io integration.

CAM (Computer Assisted Manufacturing)
----------------------------------
When we have CAD in NoFlo, next logical step is to consider CAM,
so that we can send our model directly to a CNC mill or 3d printer to realize our creation.

What exists of hosted, web accessible, web APIs, and/or JavaScript solutions for
slicing, toolpath, gcode generation, communicating with machine?

For 3d-printing, Slic3r and Cura seems to be the go-to solutions. Both have
(C++) libraries available, under the AGPLv3:
* https://github.com/alexrj/Slic3r/tree/master/xs
* https://github.com/Ultimaker/CuraEngine

For CNC milling, the ShopBot file format is supposedly open:
* http://www.opensbp.com/
* https://github.com/bdiesel/OpenSBP

There are tons of gcode generators around, for instance based on Python
* http://sourceforge.net/apps/mediawiki/pycam/index.php?title=Main_Page
* http://sourceforge.net/projects/pycam/
* https://code.google.com/p/dxf2gcode/
* https://github.com/joewalnes/gcode-viewer
* http://reprap.org/wiki/Printrun

Some based on JavaScript
* https://github.com/tempoautomation/nodejs-gcode
* https://www.npmjs.org/package/gcode-simulator
* http://opensourcedesigntools.blogspot.no/2013/07/javascript-g-code-generator.html
* https://github.com/tmpvar/svgmill

People are playing with services/web
* https://github.com/Spiritdude/RepRapCloud
* http://www.slicercloud.com/main
* https://github.com/foosel/OctoPrint

Grbl project is also interesting
* https://github.com/grbl/grbl/wiki
* https://github.com/chamnit/preGrbl
* http://zapmaker.org/projects/grbl-controller-3-0/
* https://github.com/tmpvar/node-grbl

Perhaps also Repetier project
* https://github.com/repetier/Repetier-Host
* 


