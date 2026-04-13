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
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-file-import"></i> Import banów</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.
        </div>
        <form action="" method="post" enctype="multipart/form-data">
            <input type="hidden" name="action" value="importBans" />
            <div class="margin-bottom:half">
                <label for="importFile" class="form-label form-label:bottom">
                    Plik
                </label>

                <input type="file" TABINDEX=1 class="form-input form-full" id="importFile" name="importFile" />
                <div class="form-desc">
                    Wybierz plik <span class="text:bold">banned_users.cfg</span> lub <span
                        class="text:bold">banned_ip.cfg</span>, aby wgrać i dodać bany.
                </div>

                <div id="file.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>

            <div class="margin-bottom:half">
                <input type="checkbox" class="form-check" name="friendsname" id="friendsname" />
                <label for="friendsname" class="form-label form-label:left">
                    Pobierz nazwy
                </label>

                <div class="form-desc">
                    Zaznacz to pole, jeśli chcesz pobrać nazwy graczy z ich profilu Steam Community. <span
                        class="text:italic">(działa tylko z banned_users.cfg)</span>.
                </div>

                <div id="friendsname.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>

            <div class="flex flex-ai:center flex-jc:space-between margin-top">
                {sb_button text="Importuj" class="button button-success" id="iban" submit=true}
                {sb_button text="Wstecz" onclick="history.go(-1)" class="button button-light" id="iback"}
            </div>
        </form>
    </div>
    {if !$extreq}
        <script type="text/javascript">
            $('friendsname').disabled = true;
        </script>
    {/if}
{/if}