<div id="admin-page-content">
<form action="" method="post">
    <div id="0">
        <div id="msg-green" style="display:none;">
            <i class="fas fa-check fa-2x"></i>
            <b>Zaktualizowano bana</b>
            <br />
            Szczegóły bana zostały zaktualizowane.<br /><br />
            <i>Przekierowywanie z powrotem do strony banów</i>
        </div>
        <div class="admin_tab_content_title">
            <h2><i class="fas fa-user-edit"></i> Szczegóły bana</h2>
		</div>
		<div class="padding">
            Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.<br /><br />
            <input type="hidden" name="insert_type" value="add">
            <table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Nazwa gracza" message="To jest nazwa gracza, który został zbanowany."}-Nazwa gracza
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <input type="text" class="submit-fields" id="name" name="name" value="-{$ban_name}-" />
                        </div>
                        <div id="name.msg" class="badentry"></div></td>
                    </tr>
                    <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Typ bana" message="Wybierz, czy banować po SteamID czy po adresie IP."}-Typ bana
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="type" name="type" TABINDEX=2 class="submit-fields">
                                <option value="0">Steam ID</option>
                                <option value="1">Adres IP</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <div class="rowdesc">
                            -{help_icon title="SteamID" message="To jest SteamID zbanowanego gracza. Możesz też wpisać Community ID."}-SteamID
                        </div>
                    </td>
                <td>
                    <div align="left">
                        <input value="-{$ban_authid}-" type="text" TABINDEX=3 class="submit-fields" id="steam" name="steam" />
                    </div>
                        <div id="steam.msg" class="badentry"></div>
                </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="IP" message="To jest adres IP zbanowanego gracza"}-Adres IP
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <input value="-{$ban_ip}-" type="text" TABINDEX=3 class="submit-fields" id="ip" name="ip" />
                        </div>
                        <div id="ip.msg" class="badentry"></div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Powód" message="Powód, dla którego ten gracz został zbanowany."}-Powód
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="listReason" name="listReason" TABINDEX=4 class="submit-fields" onChange="changeReason(this[this.selectedIndex].value);">
                                <option value="" selected> -- Wybierz powód -- </option>
                                <optgroup label="Cheaty">
                                    <option value="Aimbot">Aimbot</option>
                                    <option value="Antirecoil">Antirecoil</option>
                                    <option value="Wallhack">Wallhack</option>
                                    <option value="Spinhack">Spinhack</option>
                                    <option value="Multi-Hack">Multi-Hack</option>
                                    <option value="No Smoke">Brak dymu</option>
                                    <option value="No Flash">Brak flesha</option>
                                </optgroup>
                                <optgroup label="Zachowanie">
                                    <option value="Team Killing">Zabijanie sojuszników</option>
                                    <option value="Team Flashing">Oślepianie sojuszników</option>
                                    <option value="Spamming Mic/Chat">Spam na mikrofonie/czacie</option>
                                    <option value="Inappropriate Spray">Niestosowny spray</option>
                                    <option value="Inappropriate Language">Niestosowny język</option>
                                    <option value="Inappropriate Name">Niestosowny nick</option>
                                    <option value="Ignoring Admins">Ignorowanie administratorów</option>
                                    <option value="Team Stacking">Nierówne drużyny</option>
                                </optgroup>
                                -{if $customreason}-
                                <optgroup label="Własne">
                                    -{foreach from=$customreason item="creason"}-
                                    <option value="-{$creason}-">-{$creason}-</option>
                                    -{/foreach}-
                                </optgroup>
                                -{/if}-
                                <option value="other">Inny powód</option>
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
                        <div class="rowdesc">-{help_icon title="Długość bana" message="Wybierz, na jak długo chcesz zbanować tę osobę."}-Długość bana </div>
                    </td>
                    <td>
                        <div align="left">
                            <select id="banlength" name="banlength" TABINDEX=5 class="submit-fields">
                                <option value="0">Permanentny</option>
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
                    <td valign="top" width="35%">
                        <div class="rowdesc">
                            -{help_icon title="Wgraj demo" message="Kliknij tutaj, aby wgrać demo do tego zgłoszenia bana."}-Wgraj demo
                        </div>
                    </td>
                    <td>
                        <div align="left">
                            -{sb_button text="Wgraj demo" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=no,width=300,height=130');" class="save" id="uploaddemo" submit=false}-
                        </div>
                        <div id="demo.msg" style="color:#CC0000;">
                            -{$ban_demo}-
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input type="hidden" name="did" id="did" value="" />
                        <input type="hidden" name="dname" id="dname" value="" />
                        -{sb_button text="Zapisz zmiany" class="ok" id="editban" submit=true}-
                        -{sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="back" submit=false}-
                    </td>
                </tr>
            </table>
            <script type="text/javascript">
                var did = 0;
                var dname = "";
                function demo(id, name)
                {
                    $('demo.msg').setHTML("Wgrano: <b>" + name + "</b>");
                    $('did').value = id;
                    $('dname').value = name;
                }
            </script>        
        </div>
    </div>
	</from>
</div>