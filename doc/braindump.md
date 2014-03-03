
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

Desktop stylee apps
* http://openscam.com/
* http://www.makercam.com/ (Flash based)
* https://github.com/Heeks/heekscnc

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


Usecases
----------

Digital manufacturing
* Having a parametric model that customer can tweak and see live changes of in webshop, then
allow him/her to order their custom model. Could be produced automatically, manually, or sent to a production service.
* Run a webserver on 3d-printer/CNC-machine which serves either Flowhub or custom web-based tool as the main
application for making the CAD drawing and CAM toolpaths. End-user device could be desktop/laptop or tablet/mobile device.

Interactive art
* Use sensors, either via browser interfaces or WebSocket/WebRTC to parametrize models, generating 3d that react to people/environment.
Output could for instance be multi-plane projections.

Data viz/Infographics
* Use online or imported datasources to parametrize 3d models to create 3d infographics and or animation/movies.


Connecting/related SW
--------------
* Draw/import vector paths, direct in browser
* Convert bitmaps to vector paths and thus models
* Do feature detection of audio, allow to use as vectors and scalars for parametrizing model
* Better, possibly custom, on-graph-canvas widgets for manipulating IIPs
* Directly manipulate the combined primitives on-model-preview
* A way to preview CNC toolpaths in browser
