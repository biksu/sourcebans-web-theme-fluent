<div class="layout_box margin-bottom">
    <div class="table padding">
        <div class="table_box">
            <table>
                <tbody>
                    <tr class="collapse">
                        <td class="text:center">
                            <span class="text:bold">Wyszukiwanie zaawansowane</span> (Kliknij)
                        </td>
                    </tr>

                    <tr class="table_hide">
                        <td colspan="1">
                            <div class="collapse_content flex flex-jc:center">
                                <div class="padding">
                                    <div class="flex m:flex-fd:column">
                                        <div class="flex:11 margin-right">
                                            <div class="margin-bottom:half">
                                                <input id="name" name="search_type" class="form-radio" type="radio"
                                                    value="name" />

                                                <label for="name" class="form-label form-label:bottom">
                                                    Nick
                                                </label>

                                                <input class="form-input form-full" type="text" id="nick" value=""
                                                    onmouseup="$('name').checked = true" />
                                            </div>

                                            <div class="margin-bottom:half">
                                                <input id="steam_" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="steam_"
                                                    class="form-label form-label:bottom form-label:right">
                                                    SteamID
                                                </label>

                                                <div class="flex">
                                                    <input class="form-input form-full margin-right" type="text"
                                                        id="steamid" value="" onmouseup="$('steam_').checked = true" />

                                                    <select class="form-select form-full" id="steam_match"
                                                        onmouseup="$('steam_').checked = true">
                                                        <option value="0" selected>Dokładne dopasowanie</option>
                                                        <option value="1">Częściowe dopasowanie</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="margin-bottom:half">
                                                <input id="reason_" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="ban_reason" class="form-label form-label:bottom">
                                                    Powód
                                                </label>

                                                <input class="form-input form-full" type="text" id="ban_reason" value=""
                                                    onmouseup="$('reason_').checked = true" />
                                            </div>

                                            <div class="margin-bottom:half">
                                                <input id="date" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="date" class="form-label form-label:bottom form-label:right">
                                                    Data
                                                </label>

                                                <div class="flex">
                                                    <input class="form-input form-full margin-right" type="text"
                                                        id="day" value="DD" onmouseup="$('date').checked = true"
                                                        maxlength="2" />
                                                    <input class="form-input form-full margin-right" type="text"
                                                        id="month" value="MM" onmouseup="$('date').checked = true"
                                                        maxlength="2" />
                                                    <input class="form-input form-full" type="text" id="year" value="YY"
                                                        onmouseup="$('date').checked = true" maxlength="4" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="flex:11">
                                            <div class="margin-bottom:half">
                                                <input id="ban_type_" type="radio" name="search_type" class="form-radio"
                                                    value="radiobutton" />

                                                <label for="ban_type"
                                                    class="form-label form-label:bottom form-label:right">
                                                    Typ
                                                </label>

                                                <select class="form-select form-full" id="ban_type"
                                                    onmouseup="$('ban_type_').checked = true">
                                                    <option value="1" selected>Mute</option>
                                                    <option value="2">Gag</option>
                                                </select>
                                            </div>

                                            {if !$hideadminname}
                                                <div class="margin-bottom:half">
                                                    <input id="admin" name="search_type" type="radio" class="form-radio"
                                                        value="radiobutton" />

                                                    <label for="ban_admin"
                                                        class="form-label form-label:bottom form-label:right">
                                                        Administrator
                                                    </label>

                                                    <select class="form-select form-full" id="ban_admin"
                                                        onmouseup="$('admin').checked = true">
                                                        {foreach from=$admin_list item="admin"}
                                                            <option label="{$admin.user}" value="{$admin.aid}">{$admin.user}
                                                            </option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                            {/if}

                                            <div class="margin-bottom:half">
                                                <input id="where_banned" name="search_type" class="form-radio"
                                                    type="radio" value="radiobutton" />

                                                <label for="server"
                                                    class="form-label form-label:bottom form-label:right">
                                                    Serwer
                                                </label>

                                                <select class="form-select form-full" id="server"
                                                    onmouseup="$('where_banned').checked = true">
                                                    <option label="Ban WWW" value="0">Ban WWW</option>
                                                    {foreach from=$server_list item="server"}
                                                        <option value="{$server.sid}" id="ss{$server.sid}">Pobieranie
                                                            nazwy hosta...
                                                            ({$server.ip}:{$server.port})</option>
                                                    {/foreach}
                                                </select>
                                            </div>

                                            {if $is_admin}
                                                <div class="margin-bottom:half">
                                                    <input id="comment_" type="radio" name="search_type" class="form-radio"
                                                        value="radiobutton" />

                                                    <label for="ban_comment"
                                                        class="form-label form-label:bottom form-label:right">
                                                        Komentarz
                                                    </label>

                                                    <input class="form-input form-full" type="text" id="ban_comment"
                                                        value="" onmouseup="$('comment_').checked = true" />
                                                </div>
                                            {/if}
                                        </div>
                                    </div>

                                    <div class="margin-bottom:half">
                                        <input id="length_" type="radio" name="search_type" class="form-radio"
                                            value="radiobutton" />

                                        <label for="other_length" class="form-label form-label:bottom form-label:right">
                                            Długość
                                        </label>

                                        <div class="flex">
                                            <select class="form-select form-full margin-right" id="length_type"
                                                onmouseup="$('length_').checked = true">
                                                <option value="e" title="equal to">=</option>
                                                <option value="h" title="greater">&gt;</option>
                                                <option value="l" title="smaller">&lt;</option>
                                                <option value="eh" title="equal to or greater">&gt;=</option>
                                                <option value="el" title="equal to or smaller">&lt;=</option>
                                            </select>

                                            <select class="form-select form-full margin-right" id="length"
                                                onmouseup="$('length_').checked = true" onchange="switch_length(this);"
                                                onmouseover="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '210px');if(this.options[this.selectedIndex].value=='other')this.focus();"
                                                onblur="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '20px');">
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
                                                    <option value="40320">1 miesiąc</option>
                                                    <option value="80640">2 miesiące</option>
                                                    <option value="120960">3 miesiące</option>
                                                    <option value="241920">6 miesięcy</option>
                                                    <option value="483840">12 miesięcy</option>
                                                </optgroup>
                                                <option value="other">Inna długość w minutach</option>
                                            </select>

                                            <input type="text" id="other_length" name="other_length"
                                                class="form-input form-full" onmouseup="$('length_').checked = true"
                                                style="display: none;" />
                                        </div>
                                    </div>

                                    <div class="flex">
                                        {sb_button text="Szukaj" onclick="search_blocks();" class="button button-primary flex:11" id="searchbtn" submit=false}
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
{$server_script}