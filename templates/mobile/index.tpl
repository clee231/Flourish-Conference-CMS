{config_load file='default.conf' section=$site}
{include file="header.tpl" title="Main"}
<div data-role="page" id="main">

        <div data-role="header">
		<p style="text-align:center;">
			<img style="padding:5px;align:center;" src="images/mobile/logo-lightgrey.png" alt="Flourish! 2012" />
		</p>
        </div><!-- /header -->

        <div data-role="content">
		<div data-role="collapsible" data-collapsed="true">
			<h3>Introduction</h3>
			<p>Welcome to the Flourish 2012 Open Source Conference website! This is Flourish Conference's <strong>sixth</strong> annual student-led conference hosted at the <a href="http://uic.edu" ref="external">The University of Illinois at Chicago</a>. We are proud to help promote the use of open source and provide a gathering place for open source enthusiasts in the Chicagoland area.</p>
			<p>Throughout the weekend, we will bring speakers from around the country to talk about their contributions to the open source community. Topics ranging from the development of free and open source software to the issues with software patents and copyright will be discussed. Then after all the speeches are over, join us in our workshop to gain some hands-on experience.</p>
			<p>Flourish Conference is <strong>FREE</strong> to attend and there will be free T-Shirts to those who register in advance. We really appreciate everyone for coming to Flourish Conference for the past several years and we hope to bring another great and educating year!</p>
			<p>In the mean time, follow <a href="http://twitter.com/flourishconf" ref="external">@flourishconf</a> for updates and check our website regularly!</p>
			</p>
		</div><!-- /collapsible -->

        <ul data-role="listview" data-inset="true" data-filter="false">

                <li><a href="registration.php" data-ajax="false">Registration</a></li>
                <li><a href="speakers.php" data-ajax="true">Speakers</a></li>
                <li><a href="schedule.php" data-ajax="false">Schedule</a></li>
                <li><a href="miniexpo.php" data-ajax="true">Mini-Expo</a></li>
                <li><a href="about.php" data-ajax="true">About</a></li>
                <li><a href="directions.php" data-ajax="true">Directions</a></li>
                <li><a href="#pastevents" data-ajax="true">Past Events</a></li>
                <li><a href="#sponsored" data-ajax="true">Sponsors</a></li>
                <li><a href="#credits" data-ajax="true">Credits</a></li>

        </ul><!-- /listview  sitenav-->
	<a href="index.php?viewFullSite=1" data-role="button" rel="external" data-theme="a">Switch to Full Site</a>

        </div><!-- /content -->
</div><!-- page -->
<div data-role="page" id="pastevents"  data-add-back-btn="true">
        <div data-role="header">
                <h1>Past Events</h1>
		<a href="./" class="ui-btn-right" data-icon="home" data-iconpos="notext" data-direction="reverse">Home</a>
        </div><!-- /header -->
        <div data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="a" data-split-theme="a">
			<li><a href="/2011" rel="external">2011</a></li>
			<li><a href="/flourish2010" rel="external">2010</a></li>
			<li><a href="/flourish2009" rel="external">2009</a></li>
			<li><a href="/flourish2008" rel="external">2008</a></li>
			<li><a href="/index2007.php" rel="external">2007</a></li>
		</ul>
	</div>
</div><!-- page -->
<div data-role="page" id="sponsored" data-add-back-btn="true">
        <div data-role="header">
                <h1>Sponsored by:</h1>
		<a href="./" class="ui-btn-right" data-icon="home" data-iconpos="notext" data-direction="reverse">Home</a>
        </div><!-- /header -->
        <div data-role="content">
		<ul data-theme="d" data-role="listview" data-filter="true">
			<li><a href="http://fused.com/" rel="external"><img src="images/flourish-helpers/fused.png"/></a></li>
			<li><a href="http://www.orbitz.com/" rel="external"><img src="images/flourish-helpers/orbitz.png"/></a></li>
			<li><a href="http://www.uic.edu/depts/chcc/programs/Campus/Files/SAFC.html" rel="external"><img src="images/flourish-helpers/safc-black.png"/></a></li>
			<li><a href="http://linuxjournal.com/" rel="external"><img src="images/flourish-helpers/ljcolor.jpg"/></a></li>
			<li><a href="http://cs.uic.edu/" rel="external"><img src="images/flourish-helpers/csdepartment.png"/></a></li>
			<li><a href="http://www.spantree.net/" rel="external"><img src="images/flourish-helpers/spantree.png"/></a></li>
			<li><a href="http://www.dotomi.com/" rel="external"><img src="images/flourish-helpers/dotomi.jpg"/></a></li>
			<li><a href="http://www.nextag.com/" rel="external"><img src="images/flourish-helpers/nextag.gif"/></a></li>
			<li><a href="http://www.linux-magazine.com/" rel="external"><img src="images/flourish-helpers/linux-magazine.jpg"/></a></li>
			<li><a href="http://bullcitymobile.com/" rel="external"><img src="images/flourish-helpers/bcm-redblack.png" /></a></li>
			<li><a href="http://illinoistech.org/" rel="external"><img src="images/flourish-helpers/ita.png" /></a></li>
		</ul>
	</div>
</div><!-- page -->
<div data-role="page" id="credits" data-add-back-btn="true">
        <div data-role="header">
                <h1>Credits</h1>
		<a href="./" class="ui-btn-right" data-icon="home" data-iconpos="notext" data-direction="reverse">Home</a>
        </div><!-- /header -->
        <div data-role="content">
		<ul data-role="listview" data-inset="true" data-filter="true" data-theme="d" data-divider-theme="a">
			<li data-role="list-divider">Organizers and Support Staff</li>
				<li>Stephen Liang - Co-chair, Desktop Web Administrator</li>
 				<li>Aisha Halim - Co-chair, Mobile Web Administrator</li>
 				<li>Leticia Gomes - Graphic Design</li>
 				<li>Chase Lee - Web Developer</li>
 				<li>Carl Karsten - Video Recording, Speaker Contact</li>
 				<li>Samir Faci - Community Liaison, Speaker Contact</li>
 				<li>Roberto Serrano - Speaker Contact</li>
 				<li>Beth Lynn Eicher - Speaker Contact</li>
 				<li>Walter Dworak - Technical Support, System Administrator</li>
 				<li>Phil Gomes - Community Liaison</li>
 				<li>Mitchell Theys - Student Advisor<br />
			<li data-role="list-divider">Volunteers</li>
				<li>Alex Slawniak</li>
 				<li>Andrew Sennebogen</li>
 				<li>Ashley Riley</li>
 				<li>Avinash Kunaparaju</li>
 				<li>Brett Heinkel</li>
 				<li>Calin Lupas </li>
 				<li>Daniel Keasler</li>
 				<li>Daniel Uber</li>
 				<li>David Chadwell</li>
 				<li>Garrett Padera</li>
 				<li>Gary Turovsky</li>
 				<li>Greg Neumarke</li>
 				<li>Gus Richardson</li>
 				<li>Jeanine Storbeck</li>
 				<li>Joel Luellwitz - Community Liaison, Speaker Contact</li>
 				<li>Joseph Rodriguez</li>
 				<li>Joshua Herman - Speaker Contact</li>
 				<li>Marcos Alzati</li>
 				<li>Matthew Kurowski</li>
 				<li>Sami Siddiqui</li>
 				<li>Sean Deitz</li>
 				<li>Shiva Balara</li>
 				<li>Sruti Bhagavatula</li>
 				<li>Walter Dworak<br />
			</ul>
	</div>
</div><!-- page -->

{include file="footer.tpl" title="Main"}
