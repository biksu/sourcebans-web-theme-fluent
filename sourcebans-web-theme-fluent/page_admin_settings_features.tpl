<div class="admin_tab_content_title">
    <h2><i class="fas fa-cogs"></i> Funkcje SourceBans++</h2>
</div>

<div class="padding">
    <div class="margin-bottom">
        Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.
    </div>

    <form action="" method="post">
        <input type="hidden" name="settingsGroup" value="features" />

        <div class="margin-bottom:half">
            <input type="checkbox" name="export_public" class="form-check" id="export_public" />

            <label for="export_public" class="form-label form-label:left">
                Publiczna lista banów do pobrania
            </label>

            <div class="form-desc">
                Zaznacz, aby udostępnić publiczne pobieranie i udostępnianie całej listy banów.
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_kickit" class="form-check" id="enable_kickit" />

            <label for="enable_kickit" class="form-label form-label:left">
                Włącz KickIt
            </label>

            <div class="form-desc">
                Zaznacz, aby wyrzucać gracza po dodaniu bana.
            </div>
        </div>

        <div class="margin-bottom:half">
            {if $steamapi}
                <input type="checkbox" name="enable_groupbanning" class="form-check" id="enable_groupbanning" />
            {else}
                <input type="checkbox" name="enable_groupbanning" class="form-check" id="enable_groupbanning" disabled />
            {/if}

            <label for="enable_groupbanning" class="form-label form-label:left">
                Bany grupowe Steam
            </label>

            {if !$steamapi}
                <div class="message message:error margin-top:half">
                    Nie ustawiono prawidłowego klucza Steam API w konfiguracji.
                </div>
            {/if}

            <div class="form-desc">
                Zaznacz, aby umożliwiać banowanie całych grup społeczności Steam.
            </div>

            <div id="enable_groupbanning.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_friendsbanning" class="form-check" id="enable_friendsbanning" />

            <label for="enable_friendsbanning" class="form-label form-label:left">
                Bany znajomych Steam
            </label>

            <div class="form-desc">
                Zaznacz, aby umożliwiać banowanie wszystkich znajomych danego gracza w społeczności Steam.
            </div>

            <div id="enable_friendsbanning.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_adminrehashing" class="form-check" id="enable_adminrehashing" />

            <label for="enable_adminrehashing" class="form-label form-label:left">
                Odświeżanie listy adminów (rehash)
            </label>

            <div class="form-desc">
                Zaznacz, aby po każdej zmianie administratora lub grupy odświeżać uprawnienia adminów na serwerze.
            </div>

            <div id="enable_adminrehashing.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_steamlogin" class="form-check" id="enable_steamlogin" />

            <label for="enable_steamlogin" class="form-label form-label:left">
                Klasyczne logowanie
            </label>

            <div class="form-desc">
                Zaznacz, aby pokazać na formularzu logowania opcję logowania klasycznego (login/hasło).
            </div>

            <div id="enable_steamlogin.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" name="enable_publiccomments" class="form-check" id="enable_publiccomments" />

            <label for="enable_publiccomments" class="form-label form-label:left">
                Publiczne komentarze
            </label>

            <div class="form-desc">
                Zaznacz, aby komentarze administratorów przy banach były widoczne dla wszystkich.
            </div>

            <div id="enable_publiccomments.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            {sb_button text="Zapisz zmiany" class="button button-success" id="fsettings" submit=true}
            {sb_button text="Wstecz" class="button button-light" id="fback"}
        </div>
    </form>
</div>
