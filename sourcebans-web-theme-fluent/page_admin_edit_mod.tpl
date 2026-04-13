<div class="admin_tab_content_title">
    <h2><i class="fas fa-cogs"></i> Szczegóły moda</h2>
</div>

<div class="padding">
    <div class="margin-bottom">
        Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.
    </div>

    <form action="" method="post">
        <input type="hidden" name="insert_type" value="add">

        <div class="margin-bottom:half">
            <label for="name" class="form-label form-label:bottom">
                Nazwa moda
            </label>

            <input type="hidden" id="icon_hid" name="icon_hid" value="{$mod_icon}">
            <input type="text" TABINDEX=1 class="form-input form-full" id="name" name="name" value="{$name}" />

            <div class="form-desc">
                Wpisz nazwę moda, którego dodajesz.
            </div>

            <div id="name.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="folder" class="form-label form-label:bottom">
                Folder moda
            </label>

            <input type="text" TABINDEX=2 class="form-input form-full" id="folder" name="folder" value="{$folder}" />

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
                value="{$steam_universe}" />

            <div class="form-desc">
                (STEAM_<span class="text:bold">X</span>:Y:Z) Niektóre gry wyświetlają SteamID inaczej niż inne.
                Wpisz pierwszą cyfrę SteamID (<span class="text:bold">X</span>) zależnie od tego, jak jest renderowana
                przez ten mod. (Domyślnie: 0).
            </div>
        </div>

        <div class="margin-bottom:half">
            <input type="checkbox" TABINDEX=4 id="enabled" class="form-check" name="enabled" value="1" />

            <label for="enabled" class="form-label form-label:left">
                Mod włączony
            </label>

            <div class="form-desc">
                Wybierz, czy ten mod ma być włączony i dostępny do przypisywania banom oraz serwerom.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="enabled" class="form-label form-label:button">
                Wgraj ikonę
            </label>

            {sb_button text="Wgraj ikonę MOD" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="button button-primary" id="upload" submit=false}

            <div class="form-desc">
                Kliknij tutaj, aby wgrać ikonę przypisaną do tego moda.
            </div>

            {if $mod_icon}
                <div id="icon.msg" class="message message:info margin-top:half">
                    <span class="text:bold">Wgrano:</span> {$mod_icon}
                </div>
            {/if}
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            {sb_button text="Zapisz zmiany" class="button button-success" id="editmod" submit=true}
            {sb_button text="Wstecz" onclick="history.go(-1)" class="button button-light" id="back" submit=false}
        </div>
    </form>
</div>