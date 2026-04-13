{if NOT $permission_add}
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
        <h2><i class="fas fa-plus"></i> Dodaj mod</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.
        </div>

        <div class="margin-bottom:half">
            <label for="name" class="form-label form-label:bottom">
                Nazwa moda
            </label>

            <input type="hidden" id="fromsub" value="" />
            <input type="text" TABINDEX=1 class="form-input form-full" id="name" name="name" />

            <div class="form-desc">
                Wpisz nazwę moda, którego dodajesz.
            </div>

            <div id="name.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="folder" class="form-label form-label:bottom">
                Folder moda
            </label>

            <input type="text" TABINDEX=2 class="form-input form-full" id="folder" name="folder" />

            <div class="form-desc">
                Wpisz nazwę folderu tego moda. Na przykład folder moda Counter-Strike: Source to 'cstrike'.
            </div>

            <div id="folder.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="steam_universe" class="form-label form-label:bottom">
                Numer Steam Universe
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="steam_universe" name="steam_universe"
                value="0" />

            <div class="form-desc">
                (STEAM_<span class="text:bold">X</span>:Y:Z) Niektóre gry wyświetlają SteamID inaczej niż inne. Wpisz
                pierwszą cyfrę SteamID (<span class="text:bold">X</span>) zależnie od tego, jak renderuje go ten
                mod. (Domyślnie: 0).
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=4 id="enabled" name="enabled" class="form-check" value="1" checked="checked" />

            <label for="enabled" class="form-label form-label:left">
                Mod włączony
            </label>

            <div class="form-desc">
                Wybierz, czy ten mod ma być włączony i dostępny do przypisywania banom oraz serwerom.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="upload" class="form-label form-label:button">
                Wgraj ikonę
            </label>

            {sb_button text="Wgraj ikonę moda" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="button button-primary" id="upload"}

            <div class="form-desc">
                Kliknij tutaj, aby wgrać ikonę przypisaną do tego moda.
            </div>

            <div id="icon.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="padding flex flex-ai:center flex-jc:space-between">
            {sb_button text="Dodaj mod" onclick="ProcessMod();" class="button button-success" id="amod"}
            {sb_button text="Wstecz" onclick="history.go(-1)" class="button button-light" id="aback"}
        </div>
    </div>
{/if}