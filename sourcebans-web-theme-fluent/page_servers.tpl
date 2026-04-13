<div class="layout_box">
	<div class="table table_box">
		{if $IN_SERVERS_PAGE && $access_bans}
		<div class="responsive_show:desktop" style="text-align:right; width:100%">
			<small> Wskazówka: Kliknij prawym przyciskiem myszy na graczu, aby otworzyć menu kontekstowe z opcjami wyrzucenia, zbanowania lub kontaktu z graczem.</small>
		</div>
		{/if}
		<table>
			<thead>
				<tr>
					<th>MOD</th>
					<th>OS</th>
					<th>VAC</th>
					<th class="text:left">Nazwa serwera</th>
					<th class="text:left">Adres IP</th>
					<th>Gracze</th>
					<th>Mapa</th>
					<th class="responsive_show:desktop">Połącz</th>
				</tr>
			</thead>
			<tbody>
				{foreach from=$server_list item=server}
				<tr id="opener_{$server.sid}" class="opener tbl_out" style="cursor:pointer;" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'"{if !$IN_SERVERS_PAGE} onclick="{$server.evOnClick}"{/if}>
				<td class="text:center">
					<img src="images/games/{$server.icon}" alt="{$server.icon}" style="width: auto !important;height: auto !important;"/>
				</td>
				<td id="os_{$server.sid}" class="text:center"></td>
				<td id="vac_{$server.sid}" class="text:center"></td>
				<td id="host_{$server.sid}"><i> Pobieranie danych serwera...</i></td>
				<td>{$server.ip}:{$server.port}</td>
				<td id="players_{$server.sid}" class="text:center">Brak danych</td>
				<td id="map_{$server.sid}" class="text:center">Brak danych</td>
				<td class="text:center responsive_show:desktop">
					<a class="button button-success" href="steam://connect/{$server.ip}:{$server.port}"><i
						class="fa fa-sign-in"></i> Połącz</a>
				</td>
				</tr>
				<tr>
					<td colspan="8" align="center">
						{if $IN_SERVERS_PAGE}
						<div class="opener">
							<div id="sinfo_{$server.sid}" class="table_hide">
								<table width="100%" border="0" class="">
									<td valign="top">
										<table width="100%" border="0" class="table" id="playerlist_{$server.sid}" name="playerlist_{$server.sid}">
										</table>
									</td>
									<td width="355px" class="responsive_show:desktop" valign="top" style="padding-right: 0px; padding-left: 13px; padding-top: 12px;">
										<img id="mapimg_{$server.sid}" style="border-radius: 6px;padding-left: 1px;width: 340px !important;height: auto !important;"' src='images/maps/nomap.jpg'>
									</td>
								</table>
							</div>
							<div id="noplayer_{$server.sid}" name="noplayer_{$server.sid}" style="display:none;">
								<br />
								<h2>Brak graczy na serwerze</h2>
								<br />
							</div>
						</div>
						{/if}
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</div>
{if $IN_SERVERS_PAGE}
<script type="text/javascript">
	InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
</script>
{/if}
