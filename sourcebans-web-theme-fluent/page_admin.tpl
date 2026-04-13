<h2 class="title text-center">Select an option to administer</h2>
<div class="admin_nav">
    <ul class="flex">
		{if $access_admins}
			 <li>
					<a href="index.php?p=admin&amp;c=admins">
					  <i class="fas fa-user"></i>
					  <span>Administrator</span>
				  </a>
			 </li>
    	{/if}
        {if $access_bans}
            <li>
                <a href="index.php?p=admin&amp;c=bans">
                    <i class="fas fa-ban"></i>
                    <span>Bany</span>
                </a>
            </li>
        {/if}
		{if $access_bans}
            <li>
                <a href="index.php?p=admin&amp;c=comms">
                    <i class="fas fa-microphone-alt-slash"></i>
                    <span>Komunikacja</span>
                </a>
            </li>
        {/if}
        {if $access_groups}
            <li>
                <a href="index.php?p=admin&amp;c=groups">
                    <i class="fas fa-users"></i>
                    <span>Grupa</span>
                </a>
            </li>
        {/if}
		 {if $access_servers}
            <li>
                <a href="index.php?p=admin&amp;c=servers">
                    <i class="fas fa-server"></i>
                    <span>Serwer</span>
                </a>
            </li>
        {/if}
        {if $access_settings}
            <li>
                <a href="index.php?p=admin&amp;c=settings">
                    <i class="fas fa-tools"></i>
                    <span>Panel internetowy</span>
                </a>
            </li>
        {/if}
        {if $access_mods}
            <li>
                <a href="index.php?p=admin&amp;c=mods">
                    <i class="fas fa-cubes"></i>
                    <span>Zarządzaj modami</span>
                </a>
            </li>
        {/if}
    </ul>
</div>

<div class="admin_dashboard margin-top">
<div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-ban"></i> Bany – Komunikacja</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <!-- WARNING: To fully fix this part use https://github.com/Rushaway/sourcebans-pp/commit/f05a4bcdfa59002970daeb0b8231ffc1b13c834c -->
                <li>Wszystkich banów : <span class="text:bold">{$total_bans}</span></li>
                <li>Łączna komunikacja : <span class="text:bold">{$total_comms}</span></li>
                <li>Zablokowane połączenia : <span class="text:bold">{$total_blocks}</span></li>
            </ul>
        </div>
    </div>


    <div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-user-shield fa-1x"></i> Informacje o administratorze</h2>
        </div>
        <div class="padding">
		<ul class="list-reset" align="center">
					<li>Na wszystkich serwerach <span class="text:bold" style="font-size:xx-large"> <i style="color:#dd6b20">{$total_admins}</i></span> mamy łącznie administratorów!!</li>
					&nbsp;
					<li><i class="fas fa-rocket fa-1x"></i> Praca zespołowa sprawia, że <span class="text-primary">marzenia się spełniają</span>!</li>
					</ul>
				</div>
    </div>
	
	<div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-exclamation-circle"></i> Statystyki zgłoszeń</h2>
        </div>
        <div class="padding">
            <ul class="list-reset" align="right">
                <li>W toku : <span class="text:bold">{$total_submissions}</span></li>
                <li>Zarchiwizowane : <span class="text:bold">{$archived_submissions}</span></li>
            </ul>
        </div>
    </div>
	
    <div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-angry"></i> Statystyki protestów</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>>W toku : <span class="text:bold">{$total_protests}</span></li>
                <li>Zarchiwizowane : <span class="text:bold">{$archived_protests}</span></li>
            </ul>
        </div>
    </div>
	
	<div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-server"></i> Informacje o serwerze</h2>
        </div>
        <div class="padding" align="center">
            <ul class="list-reset">
				<li>W sumie mamy <span class="text:bold" style="font-size:x-large"> <i style="color:#dd6b20">{$total_servers}</i></span> serwerów zarejestrowanych na SourceBans.</li>
				<li>Cała wersja demonstracyjna jest<span class="text:bold" style="font-size:x-large"> <i style="color:#dd6b20">{$demosize}</i></span> udostępniona na naszym serwerze internetowym.</li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2 align="center"><i class="fas fa-code-branch"></i> Informacje o wersji</h2>
        </div>
        <div class="padding" align="right">
            <ul class="list-reset">
                <li>Latest release: <span id='relver' class="text:bold">Proszę czekać...</span></li>
                {if $dev}
                    <li>Latest Git: <span id='svnrev' class="text:bold">Proszę czekać...</span></li>
                {/if}
                <li><span id='versionmsg'>Proszę czekać...</span></li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">
        xajax_CheckVersion();
    </script>
</div>