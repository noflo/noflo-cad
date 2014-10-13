
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

See [noflo-fab](http://github.com/jonnor/noflo-fab)

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


Holistically Integrated CAD/CAM
---------------------------------
Currently the 3d printing, CNC milling and laser cutting workflows are
awfully segmented, into different tools for the various steps, with poor integration.

Ideally, we'd want to:
* View 3d model render, generated toolpaths, and live production next to eachother.
* Have the views be mapped into the same 
* Automatically verify the produced version with respect to the 3d model/toolpath
Check that the model has not moved, that bridges were established correctly, that supports
keep overhangs from drooping, that the model is not warping
* Feed results back to tweak toolpath generation
* Perhaps even feed results back to modify the model (evolutionary generative modelling)
* Capture all print settings & environment data and correlate the data with structural or subjective tests


3d-printing workflow prototype
---------------------

        noflo-cad (STL) -> noflo-print3d/Clice -> $slicer (GCODE) -> noflo-print3d/Print -> $printer (3DMODEL)
        other 3d tools  ->   " - "             ->
                                            other toolpath generators ->      " - "    ->
                                        other printer/job controllers ->      " - "

[noflo-3dprint](http://github.com/jonnor/noflo-3dprint)
[cura-server](http://github.com/jonnor/CuraServer)


NoFlo & Grasshopper integration
-----------------------------------

Some interesting usecases:

* Having a GH node which represents a remote Flowhub service/runtime
* Having nodes developed in Flowhub which can execute in GH (but also outside)
* Representing a GH program as service and component that can be remotely accessed in Flowhub

[ghpython](https://github.com/mcneel/ghpython) allows to build Grasshopper components in Python,
and to access Grasshopper components from Python.

There is an (outdated) tutorial on building GrassHopper components
[here](http://www.grasshopper3d.com/forum/topics/guide-to-creating-custom)



Related projects
-----------------
* https://github.com/pboyer/flood
