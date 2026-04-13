<div id="admin-page-content">
<form action="" method="post">
    <div id="0">
        <div id="msg-green" style="display:none;">
            <i class="fas fa-check fa-2x"></i>
            <b>Zaktualizowano blokadę</b>
            <br />
            Szczegóły blokady komunikacji zostały zaktualizowane.<br /><br />
            <i>Przekierowywanie z powrotem do strony blokad komunikacji</i>
        </div>
        <div class="admin_tab_content_title">
            <h2><i class="fas fa-user-edit"></i> Szczegóły blokady komunikacji</h2>
		</div>
		<div class="padding">
            Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.<br /><br />
            <input type="hidden" name="insert_type" value="add">
            <table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Nazwa gracza" message="To jest nazwa gracza, który został zablokowany."}-Nazwa gracza
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="text" class="submit-fields" id="name" name="name" value="-{$ban_name}-" />
                        </div>
                        <div id="name.msg" class="badentry"></div></td>
                    </tr>
                <tr>
                    <td valign="top">
                        <div class="rowdesc">
                            -{help_icon title="SteamID" message="To jest SteamID zablokowanego gracza. Możesz też wpisać Community ID."}-SteamID
                        </div>
                    </td>
                <td>
                    <div align="left">
                        <input value="-{$ban_authid}-" type="text" TABINDEX=2 class="submit-fields" id="steam" name="steam" />
                    </div>
                        <div id="steam.msg" class="badentry"></div>
                </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Typ blokady" message="Wybierz, co zablokować - czat, głos lub oba"}-Typ blokady
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="type" name="type" TABINDEX=2 class="submit-fields">
                                    <option value="1">Głos</option>
                                    <option value="2">Czat</option>
                                </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Powód blokady" message="Opisz szczegółowo, dlaczego ta blokada jest nakładana."}-Powód blokady
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="listReason" name="listReason" TABINDEX=4 class="submit-fields" onChange="changeReason(this[this.selectedIndex].value);">
                                <option value="" selected> -- Wybierz powód -- </option>
                                <optgroup label="Zachowanie">
                                    <option value="Obscene language">Wulgarne słownictwo</option>
                                    <option value="Insult players">Obrażanie graczy</option>
                                    <option value="Admin disrespect">Brak szacunku do administratora</option>
                                    <option value="Inappropriate Language">Niestosowny język</option>
                                    <option value="Trading">Handel</option>
                                    <option value="Spam in chat/voice">Spam</option>
                                    <option value="Advertisement">Reklama</option>
                                </optgroup>
                               	    <option value="other">Własny</option>
                           </select>
                                <div id="dreason" style="display:none;">
                                    <textarea class="submit-fields" TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
                                </div>
                            </div>
                            <div id="reason.msg" class="badentry"></div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">-{help_icon title="Długość blokady" message="Wybierz, na jak długo chcesz zablokować tę osobę."}-Długość blokady </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="banlength" name="banlength" TABINDEX=4 class="submit-fields">
                                <option value="0">Permanentna</option>
                                <optgroup label="minuty">
                                    <option value="1">1 minuta</option>
                                    <option value="5">5 minut</option>
                                    <option value="10">10 minut</option>
                                    <option value="15">15 minut</option>
                                    <option value="30">30 minut</option>
                                    <option value="45">45 minut</option>
                                </optgroup>
                                <optgroup label="godziny">
                                    <option value="60">1 godzina</option>
                                    <option value="120">2 godziny</option>
                                    <option value="180">3 godziny</option>
                                    <option value="240">4 godziny</option>
                                    <option value="480">8 godzin</option>
                                    <option value="720">12 godzin</option>
                                </optgroup>
                                <optgroup label="dni">
                                    <option value="1440">1 dzień</option>
                                    <option value="2880">2 dni</option>
                                    <option value="4320">3 dni</option>
                                    <option value="5760">4 dni</option>
                                    <option value="7200">5 dni</option>
                                    <option value="8640">6 dni</option>
                                </optgroup>
                                <optgroup label="tygodnie">
                                    <option value="10080">1 tydzień</option>
                                    <option value="20160">2 tygodnie</option>
                                    <option value="30240">3 tygodnie</option>
                                    </optgroup>
                                <optgroup label="miesiące">
                                    <option value="43200">1 miesiąc</option>
                                    <option value="86400">2 miesiące</option>
                                    <option value="129600">3 miesiące</option>
                                    <option value="259200">6 miesięcy</option>
                                    <option value="518400">12 miesięcy</option>
                                </optgroup>
                            </select>
                        </div>
                        <div id="length.msg" class="badentry"></div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input type="hidden" name="did" id="did" value="" />
                        <input type="hidden" name="dname" id="dname" value="" />
						&nbsp;
                        -{sb_button text="Zapisz zmiany" class="ok" id="editban" submit=true}-
                        -{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="back" submit=false}-
                    </td>
                </tr>
            </table>
        </div>
    </div>
	</from>
</div>