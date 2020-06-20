

# vivado SMART CAMERA Project

#### Warning: Built for Vivado 2018.3 if newer version is used 'create_project' should be edithed
#### notice: mipi licence is requierd.

Lunch "project_smartcamera.tcl" to recreate the project.
(there are example scripts for Linux and Windows, create_project to run vivado script in these scripts default installation location has been used)
New project with the name "project_test" will be created. Go to project_test folder and run "project_test.xpr" (a Vivado Project File). To inspect the design open Block Design under IP INTEGRATOR. Click on Generate Bitstream to run Synthesis and Implementation. Under File tab click Export then Export Hardware, check include bitstream and then click ok to use hardware with yocto
