<form action="" method="post">
    <input type="hidden" name="settingsGroup" value="mainsettings" />
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-cogs"></i> Ustawienia główne</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak
            zapytania.
        </div>

        <div class="margin-bottom:half">
            <label for="template_title" class="form-label form-label:bottom">
                Tytuł
            </label>

            <input type="text" TABINDEX=1 class="form-input form-full" id="template_title" name="template_title"
                value="{$config_title}" />

            <div class="form-desc">
                Tytuł wyświetlany na karcie przeglądarki.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="template_logo" class="form-label form-label:bottom">
                Ścieżka do logo
            </label>

            <input type="text" TABINDEX=2 class="form-input form-full" id="template_logo" name="template_logo"
                value="{$config_logo}" />

            <div class="form-desc">
                Podaj ścieżkę do własnego obrazu logo.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="config_password_minlength" class="form-label form-label:bottom">
                Minimalna długość hasła
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="config_password_minlength"
                name="config_password_minlength" value="{$config_min_password}" />

            <div class="form-desc">
                Najmniejsza dozwolona długość hasła.
            </div>

            <div id="minpasslength.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="config_dateformat" class="form-label form-label:bottom">
                Format daty <a href="http://www.php.net/date" target="_blank" rel="noopener">zob. PHP date()</a>
            </label>

            <input type="text" TABINDEX=4 class="form-input form-full" id="config_dateformat" name="config_dateformat"
                value="{$config_dateformat}" />

            <div class="form-desc">
                Format daty na liście banów i innych stronach.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="auth_maxlife" class="form-label form-label:bottom">
                Czas życia sesji (Auth Maxlife) <span class="text:italic">(w minutach)</span>
            </label>

            <input type="text" TABINDEX=4 class="form-input form-full" id="auth_maxlife" name="auth_maxlife"
                value="{$auth_maxlife}" />

            <div class="form-desc">
                Maksymalny czas życia tokenów uwierzytelniania.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="auth_maxlife_remember" class="form-label form-label:bottom">
                Czas życia sesji (zapamiętaj mnie) <span class="text:italic">(w minutach)</span>
            </label>

            <input type="text" TABINDEX=4 class="form-input form-full" id="auth_maxlife_remember"
                name="auth_maxlife_remember" value="{$auth_maxlife_remember}" />

            <div class="form-desc">
                Maksymalny czas życia tokenów przy włączonym „zapamiętaj mnie”.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="auth_maxlife_steam" class="form-label form-label:bottom">
                Czas życia sesji (logowanie Steam) <span class="text:italic">(w minutach)</span>
            </label>


            <input type="text" TABINDEX=4 class="form-input form-full" id="auth_maxlife_steam" name="auth_maxlife_steam"
                value="{$auth_maxlife_steam}" />

            <div class="form-desc">
                Maksymalny czas życia tokenów przy logowaniu przez Steam.
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=6 name="config_debug" class="form-check" id="config_debug" />

            <label for="config_debug" class="form-label form-label:left">
                Tryb debug
            </label>

            <div class="form-desc">
                Zaznacz, aby stale włączyć tryb debug.
            </div>
        </div>
    </div>

    <div class="admin_tab_content_title">
        <h2><i class="fas fa-home"></i> Panel główny</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label for="dash_intro_title" class="form-label form-label:bottom">
                Tytuł wprowadzenia
            </label>

            <input type="text" TABINDEX=7 class="form-input form-full" id="dash_intro_title" name="dash_intro_title"
                value="{$config_dash_title}" />

            <div class="form-desc">
                Tytuł sekcji wprowadzenia na panelu głównym.
            </div>

            <div id="dash.intro.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="dash_intro_text" class="form-label form-label:bottom">
                Tekst wprowadzenia
            </label>

            <textarea TABINDEX=6 cols="80" rows="20" class="form-text" id="dash_intro_text"
                name="dash_intro_text">{$config_dash_text}</textarea>

            <div class="form-desc">
                Treść sekcji wprowadzenia na panelu głównym.
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=8 name="dash_nopopup" class="form-check" id="dash_nopopup" />

            <label for="dash_nopopup" class="form-label form-label:left">
                Wyłącz popup dziennika
            </label>

            <div class="form-desc">
                Zaznacz, aby wyłączyć popup informacji z dziennika i używać bezpośredniego linku.
            </div>
        </div>
    </div>

    <div class="admin_tab_content_title">
        <h2><i class="fas fa-sliders-h"></i> Strony</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=9 name="enable_protest" class="form-check" id="enable_protest" />

            <label for="enable_protest" class="form-label form-label:left">
                Strona odwołania od bana
            </label>

            <div class="form-desc">
                Zaznacz, aby włączyć stronę odwołania od bana.
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=10 name="enable_submit" class="form-check" id="enable_submit" />

            <label for="enable_submit" class="form-label form-label:left">
                Strona zgłoszenia bana
            </label>

            <div class="form-desc">
                Zaznacz, aby włączyć stronę zgłoszenia bana.
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=10 name="enable_commslist" class="form-check" id="enable_commslist" />

            <label for="enable_commslist" class="form-label form-label:left">
                Lista blokad komunikacji
            </label>

            <div class="form-desc">
                Zaznacz, aby włączyć stronę listy blokad komunikacji (comms).
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=9 name="protest_emailonlyinvolved" class="form-check"
                id="protest_emailonlyinvolved" />

            <label for="protest_emailonlyinvolved" class="form-label form-label:left">
                Tylko jeden e-mail (odwołanie)
            </label>

            <div class="form-desc">
                Zaznacz, aby powiadomienie o odwołaniu trafiało tylko do administratora, który nadał bana.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="default_page" class="form-label form-label:bottom">
                Strona startowa
            </label>

            <select class="form-select form-full" TABINDEX=11 name="default_page" id="default_page">
                <option value="0">Panel główny</option>
                <option value="1">Lista banów</option>
                <option value="2">Serwery</option>
                <option value="3">Zgłoś bana</option>
                <option value="4">Odwołanie od bana</option>
            </select>

            <div class="form-desc">
                Pierwsza strona widoczna dla odwiedzających.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="clearcache" class="form-label form-label:bottom">
                Wyczyść pamięć podręczną
            </label>

            {sb_button text="Wyczyść cache" onclick="xajax_ClearCache();" class="button button-light" id="clearcache" submit=false}

            <div class="form-desc">
                Kliknij, aby wyczyścić folder cache.
            </div>

            <div id="clearcache.msg"></div>
        </div>
    </div>

    <div class="admin_tab_content_title">
        <h2><i class="fas fa-ban"></i> Lista banów</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label for="banlist_bansperpage" class="form-label form-label:bottom">
                Pozycji na stronę
            </label>

            <input type="text" TABINDEX=12 class="form-input form-full" id="banlist_bansperpage"
                name="banlist_bansperpage" value="{$config_bans_per_page}" />

            <div class="form-desc">
                Liczba wpisów na jednej stronie listy.
            </div>

            <div id="bansperpage.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=13 name="banlist_hideadmname" class="form-check" id="banlist_hideadmname" />

            <label for="banlist_hideadmname" class="form-label form-label:left">
                Ukryj nazwę administratora
            </label>

            <div class="form-desc">
                Zaznacz, aby ukryć nazwę administratora w szczegółach bana.
            </div>

            <div id="banlist_hideadmname.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=14 name="banlist_nocountryfetch" class="form-check"
                id="banlist_nocountryfetch" />

            <label for="banlist_nocountryfetch" class="form-label form-label:left">
                Bez geolokalizacji kraju
            </label>

            <div class="form-desc">
                Zaznacz, aby nie pokazywać kraju na podstawie IP (przy problemach z wyświetlaniem).
            </div>

            <div id="banlist_nocountryfetch.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=15 name="banlist_hideplayerips" class="form-check"
                id="banlist_hideplayerips" />

            <label for="banlist_hideplayerips" class="form-label form-label:left">
                Ukryj IP gracza
            </label>

            <div class="form-desc">
                Zaznacz, aby ukryć publicznie IP gracza.
            </div>

            <div id="banlist_hideplayerips.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="banlist_hideplayerips" class="form-label form-label:right">
                Własne powody banów
            </label>

            <table width="100%" border="0" style="border-collapse:collapse;" id="custom.reasons" name="custom.reasons">
                {foreach from=$bans_customreason item="creason"}
                    <tr>
                        <td><input type="text" class="textbox" name="bans_customreason[]" id="bans_customreason[]"
                                value="{$creason}" /></td>
                    </tr>
                {/foreach}
                <tr>
                    <td><input type="text" class="textbox" name="bans_customreason[]" id="bans_customreason[]" /></td>
                </tr>
                <tr>
                    <td><input type="text" class="textbox" name="bans_customreason[]" id="bans_customreason[]" /></td>
                </tr>
            </table>
            <a href="javascript:void(0)" onclick="MoreFields();" title="Dodaj pole">[+]</a>

            <div class="form-desc">
                Wpisz własne powody widoczne na liście wyboru przy dodawaniu bana.
            </div>

            <div id="bans_customreason.msg" class="message message:error margin-top:half" style="display: none;">
            </div>
        </div>
    </div>
    
	<div class="admin_tab_content_title">
        <h2><i class="fa-solid fa-paper-plane"></i> Poczta e-mail</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            Jeśli pozostawisz puste, funkcje poczowe nie zadziałają i mogą zwracać błąd 500.
        </div>

        <div class="margin-bottom:half">
            <label for="mail_host" class="form-label form-label:bottom">
                Host
            </label>

            <input type="text" TABINDEX=16 class="form-input form-full" id="mail_host" name="mail_host"
                value="{$config_smtp[0]}" />

            <div class="form-desc">
                Adres serwera SMTP.
            </div>
			
			<div id="mailhost.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="mail_user" class="form-label form-label:bottom">
                Nazwa użytkownika
            </label>

            <input type="text" TABINDEX=17 class="form-input form-full" id="mail_user" name="mail_user"
                value="{$config_smtp[1]}" />

            <div class="form-desc">
                Login do SMTP.
            </div>
			
			<div id="mail_user.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="mail_pass" class="form-label form-label:bottom">
                Hasło
            </label>

            <input type="text" TABINDEX=18 class="form-input form-full" id="mail_pass"
                name="mail_pass" placeholder="*******" />

            <div class="form-desc">
                Hasło do konta SMTP.
            </div>

            <div id="mail_pass.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>
		
		<div class="margin-bottom:half">
            <label for="mail_port" class="form-label form-label:bottom">
                Port
            </label>

            <input type="text" TABINDEX=19 class="form-input form-full" id="mail_port"
                name="mail_port" value="{$config_smtp[2]}" />

            <div class="form-desc">
                Port SMTP (np. 587, 465).
            </div>

            <div id="mail_port.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>
		
		<div class="margin-bottom:half">
			<input type="checkbox" TABINDEX=20 name="mail_verify_peer" class="form-check" id="mail_verify_peer" />
			
            <label for="mail_verify_peer" class="form-label form-label:bottom">
                Weryfikuj certyfikat SSL
            </label>

            <div class="form-desc">
                Wymagaj weryfikacji certyfikatu SSL serwera.
            </div>

            <div id="mail_verify_peer.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

    </div>

    <div class="padding flex flex-ai:center flex-jc:space-between">
        {sb_button text="Zapisz zmiany" class="button button-success" id="asettings" submit=true}
        {sb_button text="Wstecz" class="button button-light" id="aback"}
    </div>
</form>
<script type="text/javascript" src="./includes/tinymce/tinymce.min.js"></script>
{literal}
    <script language="javascript" type="text/javascript">
        tinyMCE.init({
            selector: "textarea",
            height: 500,
            theme : "silver",
            plugins : "advlist, autolink, lists, link, image, charmap, print, preview, hr, anchor, pagebreak, searchreplace, wordcount, visualblocks, visualchars, code, fullscreen, insertdatetime, media, nonbreaking, save, table, directionality, emoticons, template, paste, textpattern, imagetools, codesample, toc",
            extended_valid_elements : "a[name|href|target|title|onclick],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]"
        });
    </script>
{/literal}
