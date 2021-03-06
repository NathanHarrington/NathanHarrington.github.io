Title: IBM History
Date:  2009-03-01
Category: articles
tags: ibm
thumbnail_image: /images/ibm-images/wearableBBC_full.jpg

<div class="container">
    <div class="row spaced_rows">
        <div class="col-md-8">
            Highlights from 8 years at IBM:
            <ul>
            <li>35 articles demonstrating new technologies</li>
            <li>13 patents from RFID to cloud management</li>
            <li>14 IBM Thanks peer recognition awards</li>
            <li>IBM Thinkplace Innovator Award</li>
            <li>38 IBM Bravo/Ovation awards</li>
            <li>IBM Bravo award for technical achievement</li>
            <li>19 Invention achievement awards, 5 patent plateau awards</li>
            <li>Selection to the Early Career Conference</li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row spaced_rows">
        <div class="col-md-8">
            My first opportunity with <a href="http://www.ibm.com">IBM</a> came as a Co-Op through <a href="http://www.rit.edu">R.I.T</a> with the
            Personal Computing Division Executive Briefing Center in Research
            Triangle Park. This was a fantastic opportunity where I helped
            administer PC's and Laptops representing all of IBM's consumer grade
            hardware. In addition to technical support, I had the opportunity to
            demonstrate the Wearable PC to customers. (Photo credit: BBC), more
            coverage at the
            <a href="http://news.bbc.co.uk/2/hi/science/nature/538072.stm">BBC</a> and <a href="http://domino.research.ibm.com/library/cyberdig.nsf/0/122b8399b43ea4348525701c0073005a?OpenDocument&Highlight=0,RC23622">IBM Research</a>. This was a great working experience
            with <a href="https://www.linkedin.com/in/david-laubscher-36639a2?">David Laubscher</a>, <a href="https://www.linkedin.com/in/jeffrey-walls-1ba0797?">Jeff Walls</a>, <a href="https://www.linkedin.com/in/doug-baldwin-54019a?">Doug Baldwin</a> and many others.
        </div>
    </div>
    <div class="row spaced_rows">
        <div class="col-md-8">
            After the co-op and graduation from R.I.T. I began work with IBM as a
            full time 'regular' employee with Global Services. I worked closely with
            <a href="https://www.linkedin.com/in/levandos?">Andrew Levandoski</a> doing Java programming. Among other projects, I worked
            on adding multi-threaded support to a data processing application.

            As part of the Customer Database team, I helped manage the batch
            processing data identification, matching and cleansing systems. This
            role focused on managing the Trillium software system on
            <a
            href="http://www-03.ibm.com/systems/power/software/aix/">AIX</a>

        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-2">
            <img width="200px" src="/images/ibm-images/fftool-screenshot.jpg"/>
        </div>
        <div class="col-md-6">
            Managing tens of gigabytes of customer data in a flat
            file format with the existing tools was inadequate, so I created the
            'Flat File Tool', which is useful for managing and visualizing large
            plain text files with no line delimiters. You can read more about the
            fftool program at [SourceForge](http://fftool.sourceforge.net/)
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-2">
            <img width="200px" src="/images/ibm-images/SametimePlus_logo_110.jpg"/>
        </div>
        <div class="col-md-6">
            After a few months at IBM, I began work on an instant
            messaging client using the
            <a href="http://www-03.ibm.com/software/products/en/ibmsame">Sametime</a> SDK. I wanted many of the features
            available in other clients, but IBM's internal feature release schedule
            was not as fast as expected. I used my experiences with Windows
            Application development in college and at TM Technology to create
            Sametime Plus. As of March 2009, it still has features not available in
            the internal IBM Sametime client.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            There was a distinct need for a hardware and software environment local
            to our administrators instead of in [Ehningen,
            Germany](https://www.google.com/maps/place/IBM+Ehningen/@48.6502964,8.9364503,2062m/data=!3m1!1e3!4m8!1m2!2m1!1sibm+ehningen+data+center!3m4!1s0x0000000000000000:0x3b35d9ef4bbf614c!8m2!3d48.6519571!4d8.9467496). I created some
            specifications and acquired IBM-surplus AIX "medium-big iron" for faster
            processing of data. This project involved the setup of
            [7017-S80](http://www.coworthtechnologies.com/products/ibm/system-p/rs-6000/ibm-rs-6000-s80)'s and
            terabytes of storage in a raised floor data center environment.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            Setting up systems, applications and database connections with the data
            quality analysis team gave me unique exposure to IBM's internal customer
            data. Beyond the challenges of duplication, entity relationship
            modelling and analysis methods, there were significant data quality
            issues. I worked with Enya Garcia and Alex Jankowsky to address many of
            these data quality issues. We created business rules, worked with the
            data custodians for each geography, and created actionable reports and a
            web application. IBM'ers worldwide could fix their own mis-entering of
            data, from typographical errors to business rule violations and
            placeholder entries. Moreover, violations could be tracked from an
            individual to mid management and corporate head level, leading to much
            greater visibility of data quality issues.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            Visualizing terabytes of data can be a significant challenge. To address
            some of these issues I used surplus systems to create a minimalist
            'display wall' of 9 monitors. This led to the beginnings of many IBM
            [developerWorks articles](http://www.ibm.com/developerworks/opensource/library?sort_by=&show_abstract=true&show_all=&search_flag=&contentarea_by=All+Zones&search_by=nathan+harrington&topic_by=-1&industry_by=-1&type_by=All+Types&ibm-search=Search).
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            Various steps in the [Trillium](https://www.trilliumsoftware.com/) Batch process respond well to simple
            parallelization, as their is no shared data between the records. I used
            surplus systems gathered from the data center environment and custom
            Perl scripts to automatically divide the processed data amongst servers.
            Each server would run the parser process on its data, and send the
            information back to the central processing server. This simple approach
            reduced the processing time linearly - the more servers you add the
            faster the overall process.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            An organization as large as IBM exposes the employee to a wide variety
            of bureaucratic and logistic issues. I worked on various projects in the
            data center to address these needs. Mapping the locations of people
            within buildings and creating automatic reporting structure graphs were
            created for the broader IBM community.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-2">
            <img width="200px"
            src="/images/ibm-images/watchPad_thumbnail0.png"/>
        </div>
        <div class="col-md-6">
            In addition to world class consumer grade hardware and
            software, IBM has access to some of the worlds most interesting device
            prototypes. I contacted IBM Research and asked for access to the
            WatchPad prototype. [M. T.
            Raghunath](https://in.linkedin.com/in/m-t-raghunath-a98600)  and
            [Chandrasekhar
            Narayanaswami](http://researcher.watson.ibm.com/researcher/view.php?person=us-chandras) were a fantastic help getting
            me up and running with the IBM WatchPad environment. Working with this
            hardware was a unique learning experience, which you can read more about
            on the WatchPad page. I also had experience with the IBM [Tetra](http://archive.linuxgizmos.com/device-profile-cdl-paron-secure-pda/) smart
            phone, which included a fingerprint reader and lightweight Linux
            environment.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-2">
            <img width="200px"
            src="/images/ibm-images/soulPad_thumbnail0.png"/>
        </div>
        <div class="col-md-6">
            After working on the IBM WatchPad, Chandra approached me to
            consider helping out with the IBM SoulPad. This was another great
            opportunity to work on a Linux software stack that represented the
            leading edge of virtualization. you can read more about my experiences
            with this project on the SoulPad page.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            Exposure with management through the success of these and other projects
            led to my involvement with a wide variety of groups within IBM. Among
            these were the EBI Innovation Team, Autonomic Technology Cohorts, NC
            Green Team, and the IGS Invention Development team.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-2">
            <img width="200px"
            src="/images/ibm-images/resourceLocator_thumbnail0.png"/>
        </div>
        <div class="col-md-6">
            Addressing a sales idea from Derrick Brown
            led to the Resource Locator project, and the many successes and awards
            it produced for the Resource Locator team.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-2">
            <img width="200px"
            src="/images/ibm-images/blueberry_thumbnail0.png"/>
        </div>
        <div class="col-md-6">
            Expanding on the procedural and technical success
            of the Resource Locator project was the goal of the BlueBerry enterprise
            data search application. Click the link above for further details
            including what a 120+ laptop processing cluster looks like.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            During this time I also worked as a System Administrator for the Central
            Customer Master System project. In this role I configured and
            administered dozens of systems in diverse geographical locations for a
            multi-national team supporting test and development efforts across
            multiple platforms. I also did a little J2EE development to support
            features in various releases for the project.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            Over the past three years, I have written 38 IBM developerWorks
            articles, completed patent applications for innovations in 19 different
            areas, and participated in multiple podcast interviews with Scott
            Laningham. You can read more about these projects and their associated
            Awards and Recognition from IBM.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
            The successes within IBM described above and on other pages led me to
            begin the "Innovation that Matters - for your career and your bank
            account" talk to various organizations within IBM. This presentation was
            unique in that it would be more than someone just reading slides to you.
            I'd go through the pages of the Presentation, and tailor the spoken
            component to the audience. Using some of the tools described on these
            pages, I would give specific examples of innovation for the organization
            and individuals of that organization based on the corporate goals and
            personal skill sets of the listeners.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-8">
        </div> <!--left side column-->
    </div><!-- row -->
</div><!-- container -->









<div class="container">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
        </div> <!--left side column-->
    </div><!-- row -->
</div><!-- container -->

