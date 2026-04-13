<div class="layout_box flex:11 admin_tab_content tabcontent" id="Overrides">
    {if NOT $permission_addadmin}
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
        <div class="admin_tab_content_title">
            <h2><i class="fas fa-cogs"></i> Nadpisania</h2>
        </div>

        <div class="padding">
            {if $overrides_error != ""}
                <script type="text/javascript">
                    ShowBox("Błąd", "{$overrides_error}", "red");
                </script>
            {/if}
            {if $overrides_save_success}
                <script type="text/javascript">
                    ShowBox("Zaktualizowano nadpisania", "Zmiany zostały zapisane pomyślnie.", "green",
                        "index.php?p=admin&c=admins");
                </script>
            {/if}

            <div>
                Nadpisania pozwalają zmieniać flagi lub uprawnienia dowolnej komendy — globalnie lub dla konkretnej
                grupy — bez edycji kodu źródłowego wtyczki.
            </div>
            <div>
                Czytaj na temat: <a href="http://wiki.alliedmods.net/Overriding_Command_Access_%28SourceMod%29"
                    title="Nadpisywanie dostępu do komend (SourceMod)" target="_blank" class="text:bold text:italic"
                    rel="noopener">nadpisywania dostępu
                    do komend</a> na AlliedModders Wiki!
            </div>
            <p class="text:italic">Wyczyszczenie nazwy nadpisania spowoduje jego usunięcie.</p>

            <form action="" method="post">
                <div class="table table_box">
                    <table>
                        <thead>
                            <tr>
                                <th>Typ</th>
                                <th>Nazwa</th>
                                <th>Flagi</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$overrides_list item="override"}
                                <tr>
                                    <td>
                                        <select class="form-select form-full" name="override_type[]">
                                            <option{if $override.type == "command"} selected="selected" {/if} value="command">
                                                Komenda</option>
                                                <option{if $override.type == "group"} selected="selected" {/if} value="group">
                                                    Grupa</option>
                                        </select>
                                        <input type="hidden" name="override_id[]" value="{$override.id}" />
                                    </td>
                                    <td>
                                        <input name="override_name[]" value="{$override.name|smarty_htmlspecialchars}"
                                            class="form-input form-full" />
                                    </td>
                                    <td>
                                        <input name="override_flags[]" value="{$override.flags|smarty_htmlspecialchars}"
                                            class="form-input form-full" />
                                    </td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td>
                                    <select class="form-select form-full" name="new_override_type">
                                        <option value="command">Komenda</option>
                                        <option value="group">Grupa</option>
                                    </select>
                                </td>
                                <td>
                                    <input class="form-input form-full" name="new_override_name" />
                                </td>
                                <td>
                                    <input class="form-input form-full" name="new_override_flags" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="flex flex-ai:center flex-jc:space-between margin-top">
                    <button type="submit" name="oversave" class="button button-success"
                        onmouseover="ButtonOver(&quot;oversave&quot;)" onmouseout="ButtonOver(&quot;oversave&quot;)"
                        id="oversave">Zapisz</button>
                    <button onclick="history.go(-1)" name="oback" class="button button-light"
                        onmouseover="ButtonOver(&quot;oback&quot;)" onmouseout="ButtonOver(&quot;oback&quot;)"
                        id="oback">Wstecz</button>
                </div>
            </form>
        </div>
    {/if}
</div>
</div>