<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2><i class="fas fa-flag-checkered"></i> Zgłoś gracza</h2>
        </div>

        <div class="padding">
            <div>
                Aby utrzymać porządek na serwerach, osoby łamiące zasady muszą być karane, a administracja nie zawsze może reagować natychmiast.
            </div>
            <div>
                Podczas zgłaszania gracza prosimy o jak najdokładniejsze wypełnienie formularza — ułatwi to szybkie rozpatrzenie zgłoszenia.
            </div>

            <div class="margin-top:half margin-bottom">
                Jeśli nie wiesz, jak nagrać dowód w grze, kliknij 
                <a href="javascript:void(0)"
                    onclick="ShowBox('Jak nagrać dowód', ' Najlepszym sposobem na nagranie dowodu na osobę łamiącą zasady jest użycie ShadowPlay lub Plays.TV. Oba programy nagrywają rozgrywkę 24/7 z minimalnym wpływem na wydajność gry, a Ty wystarczy, że naciśniesz przypisany klawisz, aby zapisać ostatnie X minut rozgrywki — idealne do łapania osób łamiących zasady.<br /><br /> Alternatywnie możesz skorzystać ze starej metody, czyli nagrywania dem. Podczas obserwowania podejrzanego gracza naciśnij klawisz ` na klawiaturze, aby otworzyć konsolę deweloperską. Jeśli się nie pojawi, musisz włączyć ją w ustawieniach gry. Następnie wpisz `record [nazwadema]` i naciśnij Enter — plik zostanie zapisany w folderze moda w katalogu gry.', 'blue', '', true);">tutaj</a>
                , aby zobaczyć instrukcję.
            </div>

            <form action="index.php?p=submit" method="post" enctype="multipart/form-data">
                <input type="hidden" name="subban" value="1">

                <div class="margin-bottom:half">
                    <label for="Type" class="form-label form-label:bottom">
                        Typ bana
                    </label>
                    <select id="Type" name="Type" class="form-select form-full"
                        onChange="changeType(this[this.selectedIndex].value);">
                        <option value="0">Steam ID</option>
                        <option value="1">IP Address</option>
                    </select>
                </div>

                <div class="margin-bottom:half">
                    <label for="SteamID" class="form-label form-label:bottom">
                       Steam ID gracza
                    </label>
                    <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$STEAMID}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanIP" class="form-label form-label:bottom">
                        Adres IP gracza
                    </label>
                    <input type="text" id="BanIP" name="BanIP" size="40" maxlength="64" value="{$ban_ip}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="PlayerName" class="form-label form-label:bottom">
                        Nick gracza <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanReason" class="form-label form-label:bottom">
                        Komentarz <span class="mandatory">*</span> (Opisz dokładnie sytuację — nie pisz ogólników typu „cheaty”)
                    </label>
                    <textarea id="BanReason" name="BanReason" class="form-text form-full">{$ban_reason}</textarea>
                </div>

                <div class="margin-bottom:half">
                    <label for="SubmitName" class="form-label form-label:bottom">
                        Twoja nazwa
                    </label>
                    <input type="text" id="SubmitName" size="40" maxlength="70" name="SubmitName"
                        value="{$subplayer_name}" class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="EmailAddr" class="form-label form-label:bottom">
                        Twój e-mail <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="server" class="form-label form-label:bottom">
                        Serwer <span class="mandatory">*</span>
                    </label>
                    <select id="server" name="server" class="form-select form-full">
                        <option value="-1">-- Wybierz serwer --</option>
                        {foreach from=$server_list item="server"}
                            <option value="{$server.sid}" {if $server_selected==$server.sid}selected{/if}>
                                {$server.hostname}</option>
                        {/foreach}
                        <option value="0">Inny serwer / Nie ma na liście</option>
                    </select>
                </div>

                <div class="margin-bottom:half">
                    <label for="demo_file" class="form-label form-label:bottom">
                        Prześlij demo
                    </label>

                    <input name="demo_file" id="demo_file" type="file" size="25" class="form-file form-full" />
                    <div class="form-desc">
                         Uwaga: Dozwolone są tylko pliki DEM, ZIP, RAR, 7Z, BZ2 lub GZ.
                    </div>
                </div>

                <div class="flex">
                    {sb_button text="Wyślij" class="button button-primary flex:11" id="save" submit=true}
                </div>
            </form>

            <div class="margin-top">
                <h3>Co się stanie, jeśli gracz zostanie zbanowany?</h3>
                <p>
                    Jeśli zgłoszony przez Ciebie gracz zostanie zbanowany, jego SteamID lub IP trafi na listę banów.
                    Przy każdej próbie wejścia na serwer zostanie zablokowany, a zdarzenie zostanie zapisane w naszej bazie danych.
                </p>
            </div>
        </div>
    </div>
</div>