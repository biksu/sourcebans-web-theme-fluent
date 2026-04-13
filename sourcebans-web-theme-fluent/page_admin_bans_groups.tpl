{if NOT $permission_import}
    <section class="error padding">
        <i class="fas fa-exclamation-circle"></i>
        <div class="error_title">Ups, wystąpił problem (╯°□°）╯︵ ┻━┻</div>

        <div class="error_content">
            Brak dostępu!
        </div>

        <div class="error_code">
            Kod błędu: <span class="text:bold">403 Forbidden</span>
        </div>
    </section>
{else}
    {if NOT $groupbanning_enabled}
        <section class="error padding">
            <i class="fas fa-exclamation-circle"></i>
            <div class="error_title">Ups, wystąpił problem (╯°□°）╯︵ ┻━┻</div>

            <div class="error_content">
                Ta funkcja jest wyłączona!<br />
                Brak dostępu!
            </div>

            <div class="error_code">
                Kod błędu: <span class="text:bold">423 Locked</span>
            </div>
        </section>
    {else}
        <div class="admin_tab_content_title">
            <h2><i class="fa-solid fa-people-group"></i> Dodaj bana grupowego</h2>
        </div>

        <div class="padding">
            <div class="margin-bottom">
                {if NOT $list_steam_groups}
                    <div class="margin-bottom">
                        Tutaj możesz dodać bana dla całej grupy społeczności Steam.<br />
                        np. <code>http://steamcommunity.com/groups/interwavestudios</code>
                    </div>
                    <table width="90%" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                        <tr>
                            <td valign="top" width="35%">
                                <div class="rowdesc">
                                    {help_icon title="Link grupy" message="Wpisz link do grupy społeczności Steam."}Link grupy
                                </div>
                            </td>
                            <td>
                                <div align="left">
                                    <input type="text" TABINDEX=1 class="textbox" id="groupurl" name="groupurl" style="width: 229px" />
                                </div>
                                <div id="groupurl.msg" class="badentry"></div>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="35%">
                                <div class="rowdesc">
                                    {help_icon title="Powód bana grupowego" message="Wpisz powód, dla którego chcesz zbanować tę grupę społeczności Steam."}Powód
                                    bana grupowego
                                </div>
                            </td>
                            <td>
                                <div align="left">
                                    <textarea class="textbox" TABINDEX=2 cols="30" rows="5" id="groupreason"
                                        name="groupreason" /></textarea>
                                </div>
                                <div id="groupreason.msg" class="badentry"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                {sb_button text="Dodaj bana grupowego" onclick="ProcessGroupBan();" class="ok" id="agban" submit=false}
                                &nbsp;
                                {sb_button text="Wstecz" onclick="history.go(-1)" class="cancel" id="aback"}
                            </td>
                        </tr>
                    </table>
                    {else}
                        Wszystkie grupy, których członkiem jest gracz {$player_name}, są tutaj wylistowane.<br />
                        Wybierz grupy Steam, które chcesz zbanować.<br /><br />
                        <div id="steamGroupsText" name="steamGroupsText">
                            <i class="fa-solid fa-spinner fa-spin fa-2x" style="font-size: 24px; margin-bottom: 10px;"></i>
                            <span>Ładowanie grup. Proszę czekać...</span>
                        </div>
                        <div id="steamGroups" name="steamGroups" style="display:none;">
                            <table id="steamGroupsTable" name="steamGroupsTable" border="0" width="500px">
                                <tr>
                                    <td height="16" class="listtable_1" style="padding:0px;width:3px;" align="center">
                                        <div class="form-check" id="tickswitch" name="tickswitch" onclick="TickSelectAll();"></div>
                                    </td>
                                    <td height="auto" class="listtable_top" align="left"><b> Wszystkie grupy Steam</b></td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;L&nbsp;&nbsp;<a href="#" onclick="TickSelectAll();return false;" title="Zaznacz wszystkie"
                                name="tickswitchlink" id="tickswitchlink">Zaznacz wszystkie</a><br /><br />
                            <div class="rowdesc">
                                {help_icon title="Powód bana grupowego" message="Wpisz powód, dla którego chcesz zbanować tę grupę społeczności Steam."}Powód
                                bana grupowego
                            </div><br />
                            <div align="left">
                                <textarea class="submit-fields" TABINDEX=2 cols="30" rows="5" id="groupreason"
                                    name="groupreason" /></textarea>
                            </div>
                            <div id="groupreason.msg" class="badentry"></div>
                            <input type="button" class="btn ok" onclick="CheckGroupBan();" name="gban" id="gban"
                                onmouseover="ButtonOver('gban');" onmouseout="ButtonOver('gban');" value="Dodaj bana grupowego">
                        </div>
                        <div id="steamGroupStatus" name="steamGroupStatus" width="100%"></div>
                        <script type="text/javascript">
                            $('tickswitch').value = 0;xajax_GetGroups('{$list_steam_groups}');
                        </script>
                {/if}
            </div>
        </div>
    {/if}
{/if}