Title: Wasatch Work Log Timeline
Date: 2016-10-14
Category: About
save_as: pages/wasatch_work_log_timeline.html
status: hidden

2016-12-09 07:07 performance review, scheduling updates, detailed
processing and review of algorithm removal from it systems.
Investigation into cigna healthcare changes. Website down detection.
Startup page setting on command line. Start with laser communication and
command and control queues in multiprocessing simulator. Correction of
delay and non-exit with terminate and join in sub processes.

    afa808c shallow copy
    890f1d9 non increasing copy of data
    d99ce88 startup setting command line
    ac7779e laser with record setting reading and writing
    fedaefc strip down of older simulatespectra test cases

2016-12-08 06:24 vtt 1000 manual discovery, it support, processing
shipments. Mid-milestone demo of simulatd plug, unplug of device in
dash. Determination of valid and invalid firmware configurations on test
hardware. Recovery and documentation of Dash.py vs. Dash with no suffix
build issue on appveyor machine. Log level case management on command
line

    c2f61a1 recovery of dash.py for pyinstaller
    aea97ec tests recovered in appveyor
    bc936d9 case management of log level on command line
    858c389 log level in controller

2016-12-08 16:31

2016-12-07 07:12 pw booth review, setup of testing systems for dark current rma
validation. Dash runtime error after 2 days investigation on windows 10
and windows 7. Rebuild of appveyor configuration to isolate build flaw
and executable non-inclusion. Setup of secondary virtualization system .
Validation of appveyor vs. local system build differences.  Log-level
default to INFO, setup on executable for linux and windows.

    f701cc6 no tests, just build
    24dcd37 dash.py renamed in appveyor builds
    664aaf6 corrected log level required for windows tests
    398dbbe default log level INFO, runtime assignment

2016-12-07 16:34


2016-12-06 06:42 identification and removal of algorithm storage. Year
review plan, plumbing issue recovery.  Search for comptabile fonts for
the multiprocessing demonstration tests. Specification of data
structures and api's for controlling multiple devices with
multiprocessing and wasatchusb with libusb drivers, finish power control
with web power switch.

    195a60f style recovery

2016-12-06 16:15


2016-12-05 06:38 production meeting. adding of send routing rules
inhibit to prevent name conflicts. Dash runtime error on windows 7
investigation. Configuration parser, ini file of Dash simulated device
control. Testing of simulation script and demo, project planning.

    a2973d4 restoration of default startup
    50ba7a9 name cleanup

2016-12-06 16:30

2016-12-02 06:31 attempting to decipher 401k puzzle, update historical
software to support new serial numbers.  Setup of new Dash long term
executable checks, validation of virtualization setup. Desk reconfigure
for simultaneous tests and support

e7f14e9 exception handling in css styler
2a32bb3 faded gray on disconnect
0cb345f grayed graphs, stopping
68e61d4 bare bones init file read simulator for connections tatus
75dd852 lower requirements for system simulation speeds

2016-12-02 16:30

2016-12-01 06:34 addition of logging tab. removal of tabwidget which has
unsupported hide tab functionality in pyside. Tests to uncover various
issues with adding a handler to signal the qt interface for new log
entries. Settled on a pygtail implementation with custom stackedwidget
control with tab widget sytled buttons. This gets around the repaint
events of signals triggered from a handler added to a logging module
that has other subprocess handlers. Continued refinment of long term
power cycling tests and hardware setups.

    e371efc test correction
    8b9bc0e recover of log queue variable
    0b5c9d7 bare switch between hardware and logging simulated tabs
    156f848 pygtail integration in appveyor and travis and setup.py
    b950da7 pygtail integration to text edit control
    1bd65b1 pygtail
    1e9d346 showing inhibit of qt interface when logging post subprocess
    setup
    0ad10f8 display log text crash
    2fffb02 various attempts at signal logging
    8a3777e removal of pyside-unsupported qtabwidget, addition of custom
    button solution layout

2016-12-01 16:30

2016-11-30 06:58 review demo requirements for photonics west, Detailed
demo meeting with screenshots. transformation of raman testing platform.
Investigation of web power switch reset mechanisms. Milestone updates
for next dash demo. Selection and ordering of new testing computer
components. Initiation of new test schedule to meet PW requirements.

    acceef5 slight interface mods
    40fa949 new hardware capture layout
    2c93fe7 raman capture by default

2016-11-30 17:00

2016-11-29 06:50 it asset system review and investigation. Setup of
meeting and communications with customer visit. Debug and testing of csv
dictreader failure in sub-process on windows. Switch to raw csv
processing with context for simulated raman data. Layout of raman
controls and line plots for raman setup screen.

    47f690a with raw file load instead of dictreader which was causing a
        multiprocess exit inhibit
    56392be simulated raman data
    0c36f41 simulated raman data
    0cb1dd6 layout of raman capture controls
    8cfaf6f control to defaults for test passing


2016-11-29 18:13

2016-11-28 06:32 manufacturing meeting notes, setup of OCT sample
storage area, review of power management options for failed UPS. Find
headshots and email. Raman graph layout and placeholders. Addition of
setup and capture navigational signals. Default geometry changes,
expansion of css loading of runtime components. Multi-os verificationa
nd spacing consistencies.

    434b24f base level graph placeholders
    c7e29f7 baseline raman capture placeholder graphs
    7b313be through raman capture layout
    096e031 techniques in utils
    ...
    d13afbe raman setup layout tests with saved area iconagraphy
    dc8d6df adding controls to setup catpure
    657486d partial raman setup capture

2016-11-28 16:33

2016-11-20 06:42
remote software diagnosis and support for Layne Bradley at UGA -
addressed with driver signature enforcement disabling. Project planning
for Dash releases to coincide with hard dates. Detailed setup and long
term testing of newest build deploy level for inter-vacation testing

    6700dd0 change right side control layout to have consistent width
    with left side saved data area
    da4dd83 upand down icons
    c7dd0bd upand down icons
    6c90b6c hardware setup by defaul
    d5b7be6 simulated temperatures
    249ee6e simulated temperatures
    236793c Merge branch 'winmaster'
    2da0999 corrected build ordering

2016-11-21 16:30

2016-11-18 06:13 research and location of chevelle product documentation
and actual specifications and availablility. reconfiguration of
remotetest system to support remote system access and portability.
Isolation and correction of build compatability issues 32bit python vs.
64bit python. Put mechanisms in place to force 32bit python in
documentation and build environments. Updated iconagraphy names, setup
for second long term iteration pass on virtualization tester.

    133deab Merge branch 'winmaster'
    d1578fe designer updates, uic imagery name correction
    0186885 uic and designer imagery updates
    a1dd7cb matching 32bit build instructions
    ae9014c files renamed
    1daf2a7 restoration of expected startup states
    4f28096 building updates
    a22f238 documentation notes, example data

2016-11-18 16:30

2016-11-17 06:48 Interview of ME candidate. Summary of notes and review
meeting with team. Sprint demo debug issues with a pure windows
installation on actual hardware compared to virutal machine. Traced down
to mkl_avx2 and other appveyor custom-build files. Setup virtual machine
to verify installation build differentiations. Continued full
development through hardware capture and setup.

    0ff19b1 with minimum height
    b34ac5d updated instructions
    81f2efb pre-local merge
    38c1ac2 rebuilt to merge
    e5d7ac6 mkl_p4m3.dll and mkl_p4.dll
    7c8ac08 mkl_avx2.dll on appveyor
    aa18d55 appveyor non windowed
    cc3e7cb temporary removal of windowed parameter for debug
    0d16cec through basic hardware setup, updating iconagraphy for buttons
    and resources
    55a6f74 placehodler iamgery
    9662f45 hide interface from design time

2016-11-17 17:15

2016-11-16 06:38 bi-weekly engineering update meeting. postfix system
management emails for root and non-root accounts. self assesments,
mustard tree inventory search. User account management, suspension of
report indicated users. Full linkage checks and border layout
experiements for hardware capture portion of interface. Simulated and
multi-component data.

    0a0ea84 second level border removed on hardware capture details
    62bb9db geometry on command line
    24ba70f deep naming, through hardware capture details layout
    55027bc image view included
    5405d1d hard border investigation
    d3d88af hard border investigation
    3bd7bfb partial way through hardware setup details layout conversion
    55ba8fe defined devices.qrc location, hardware capture layouts

2016-11-16 16:44


2016-11-15 06:33 creation of uptime monitor trackers on cookbook
replication system at linode. full reload of database and environment
setup. change of firewall rules and prerequisites updates for cookbook
instructions. will come back in two weeks to validate. Removal of lambda
calls to address segfaults on application exits. Re-insertion of test
driven concepts for interface components.

    123c529 include stylesheets at runtime
    ead80ea updated initial state, start of hardware capture realtime graphs
    968ad6e control correct close
    643231c lambda removed, no more segfaults, now trying to get test
    control windows to exit after single tests
    b97f7b5 with lambda enabled
    9d91a7c back to seg fault and core dump
    6940773 restore of debug log print in devices
    799f24d files are important
    399bc06 toggle through buttons in operations with style sheets changing
    f8bc117 through basic load css testing in styles
    65077e5 start of styles testing group
    aca863b populate stylesheets- segfault was in empty function return

2016-11-15 16:30

2016-11-14 06:38 Manufacturing meeting and notes. Segfault on
environment reconfiguration onto zenbook with hiDpi display. Various
debugging tests with strace and valgrind for isolation. Start of
sytlesheet integration and read from file.

2016-11-14 17:00

2016-11-11 06:41 Deeply nested name space alterations. Start of complete
build through hardware setup and capture. Full integration and
commitment to current build process on appveyor. Linkage and detaile
system notes for iteration cycles. Merge with agile tracking structure
in asana.

    4612f58 start of initial setup
    a9d51cd move to long polling widget
    dda1a00 start application maximized
    f6693a6 start application maximized
    a4c424d full screen graph layout for tests

2016-11-11 16:30

2016-11-10 06:56 Execution of linode ssd mitigation plan for cookbook 
failure issues at digital ocean. Start of server replication and outage
monitoring setup. Noise isolation options and evaluation. Tracking of
long term Dash stability metrics. Transition to longer nomenclature
scheme. Testing with runtime generated widgets for saving components.
Refinement of user interface complexity. Practice with deeply nested
widget options

2016-11-10 16:30

2016-11-09 06:19 Remote support of incorrect board level documentation
for FX2 vs. ARM customer development. Detailed evaluation of namespace
testing issues and long term repurcusssions for Dash inteface. Tested
with various nesting methods and custom widget development schemes.
Research into common mechanisms for deeply nested widget interfaces in
QT.

2016-11-09 16:30

2016-11-08 06:47 long term timing and visualization setup. Triple
visualizer for windows 10, and 7 in place. Built version of Dash
straight from appveyor installer on virgin systems in virtualization.
Investigation of testing as a service providers. Noise reduction and
interruption compensation options and long term plans.

    50dcd74 full screen auto timer updates
    547df15 autofalloff typo

2016-11-08 16:30

2016-11-07 06:45 UPS system installation for networking and servers.
Manufacturing meeting and notes. Setup of Dash long term testing system
and virtualization with W530 laptop. rclone encrypted backup recovery
and verification. Corrupted disk restorations. Timeline preparations,
paystub questions.

2016-11-07 17:00

2016-11-04 07:32 Scheduled system maintenance for battery backup
installation. update team on cookbook and dash project management in
asana. odrive and backup systems selection and purchase. Collation and
assignment of licensing resources. Virtualization attempts at securing
environment auto-lock. 

2016-11-04 14:30

2016-11-03 07:13 Detailed progress review meeting. Environment
distraction reduction plans. Matched replication of autofalloff
pyqtgraph and numpy appveyor configuration with new dash codebase.
Segmentation of Win10 Dash3 and Win10 Dash4 virtual machine development
environments. Communication and sprints, plans, and focus.

    7070fed environment typo fixes
    0590a2a mkl_avx in appvyeor conda env
    42dd55d conda install cle4anup in appvyeor
    373f3cb different order of appveyor install
    fb535a4 pyside with no python version at install
    88ac8d8 with conda list and pip freeze
    51fa6df init restore
    3f262c8 direct copy match of autofalloff appveyor
    987fcc3 built with pyqtgraph included
    fe75d2e documentation updates
    77bf625 designer installation notes

2016-11-03 16:35

2016-11-02 07:15 second set of ME prep, setup and ME interview.  Staff
meetings. Setup and integration of full build on minimal system with
appveyor and matching virtualbox win10 development environment with svg
support. Established baseline procedures for new system development all
the way through svg inclusion, qt designer cross platform development,
and completed applications with included libraries.

    841a280 with svg and uifile from windows designer
    ...
    76c686a corrected travis, add appveyor
    54e4e06 travis update
    0b7f47e updated environment in readme
    ...
    65ef3dd rebuild instruction and uic rcc in conda


2016-11-02 18:47

2016-11-01 07:06 prep, setup and review of ME interview. Detailed
evaluation and environment match of svg-utilization in python setup for
windows and linux cross platform variations. Evaluated back through
wheel builds, build from sources for versions 1.2.0, 1.2.1 and 1.2.4.
Established baseline functionality for png iconagraphy only

    04248f5 package list comparisons
    020f5ee png only resource file
    cb0c86c rebuilt on windows
    8573c3c resources file

2016-11-02 17:54 

2016-10-31 07:19 detailed mac integration plan for milestone support.
Full nested layout tests of qt designer with new dash integration. Start
of software test platform recovery plan and integration into
production. Beginning of ME addition interview process. VPN setup and
zemax remote support. Transmission integration steps

    3386581 manual addition of hardware capture
    8bbb5e9 recovery of resources
    8fdaff0 scroll bars by default with deep named nesting and resource
    correction
    78e6984 names for all hsd components
    3621325 start of hardware setup display details
    3d5a711 scroll area embedded reverse order for hardware setup

2016-10-31 16:30

2016-10-28 10:12 mac preparation of dash integration. Full project
rebuild of dash from pysideapp basics. Recovery of test and integration
badges and auto build capability for pysideapp, autofalloff, and Dash

    4c6bffc first layer of layout updates
    ddd748a rebuild check
    24d24bd resources specified
    ae6a970 realignment of filesystem
    a1ccc27 cleanup
    4dfb32b structure files
    fc36978 cleanup
    fe30fbe tracking of generated files
    4046fcd compensation for pyside-uic failure
    e66318d asset segmentation
    8ab5a06 asset segmentation
    4674f16 detailed testing instructions
    f3e3bf4 corrected badges
    a2816d0 badgets
    f4b9a41 build check
    6144f4e setup file
    414b100 manual conversion structure
    ddf4da1 cleanup


2016-10-28 16:30

2016-10-27 08:28 Gource visualization of source code repositories.
SSD integration and kernel update failure correction for W530. Pysideapp
roll back of changes for appveyor support scripts and msvcr include
cleanup. MTI product recovery for inventory. Remote supoprt of software
locations for customers. (sick day)

2016-10-27 16:30

2016-10-26 06:37 Asana project tracking integration demo meeting.
Detailed setup and evaluation of upgrades to customer stray light
tracking systems. MTI discussion and recovery of detector options for
drop in replacement.

2016-10-26 16:41

2016-10-25 06:26 Investigation into msvcr100.dll missing after appveyor
build install. Merge of AutoFallOff back up the chain into a deployable
application with no missing dependencies. Spectroscopy training.
Recreation of fully deployable application from appveyor with
environment required mkl_avx.dll from system in innosetup instead of
direct tracking. Training on customer stray light detection systems.

2016-10-25 16:35

2016-10-24 06:38 Createion of placeholder Dash conversion project. Reset
of computational environments to support simultaneous virtualization
testing. Continued task population and forecasting integration with
asana dashboard for Dash development. VPN Support and configuration.
Backup power system identification and recovery.

2016-10-24 16:30

2016-10-21 06:38 Detailed setup and training with Asana progress
dashboard. Split of milestones and individual components. Preparation
for google sheet integration and display on company dashboard.
Compensation and work on github outage. 

2016-10-21 16:32 

2016-10-20 06:26 ISO IT requirements consideration. Test computer
resource realignment. Setup of asana task project tracking structure.
Review of new postiion candidates. 830 Product updates. Debug and test
of SVISNIR-00002 with Transmission software project.

2016-10-20 17:02

2016-10-19 06:27 Transmission setup and coordination for SVIS_0002
recovery at HQ. 401k review and documentation. Printer fixes. OBP
firmware load onto 830 product. OceanView training.

2016-10-19 15:30 

2016-10-18 06:44 Refinement of asana dashboards and alignment with
software roadmap plan. Down select of interface items for new version of
Dash. Architecture build and design limitation review. Available IT
hardware resources review for accelerated development.A

    830 product documentation and deconflict

2016-10-18 18:57

2016-10-17 06:38 Creation of wasatch work log for better production tracking.
Review of 401K plan. Reconfiguration of remote systems with hybrid ssd,
       spinning disk to verify ram or disk lockups. live new dash
       software demo with Jason. Driver signature process notes
       refinement and publish. UPS setup and email checks for primary
       workstation.

2016-10-17 18:00 


2016-10-14 06:34 Initial software prototype demonstration with David,
      Michael, and Chris.

      c22b999  for demo
      ee9ac8c light and dark steps navigation bar exmaple
      39a0d0e green color status fix
      868da8c start of major rework for wider bar at top
      5eca8a2 reflance and absorbance clean
      a28dbf8 loads o iconagraphy and layout updates


2016-10-14 16:30

