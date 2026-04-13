{if NOT $permission_addban}
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
        <h2><i class="fas fa-microphone-alt-slash"></i> Dodaj blokadę</h2>
    </div>

    <div class="padding">
        <div id="msg-green" class="message message:succes margin-bottom:half" style="display: none;">
            <h3>Dodano blokadę</h3>
            <div>Nowa blokada została pomyślnie dodana do systemu.</div>
            <div class="text:italic">Przekierowywanie z powrotem do strony komunikacji</div>
        </div>

        <div class="margin-bottom">
            Aby uzyskać więcej informacji lub pomoc dotyczącą danego tematu, najedź kursorem na znak zapytania.
        </div>

        <div class="margin-bottom:half">
            <label for="nickname" class="form-label form-label:bottom">
                Nick
            </label>

            <input type="hidden" id="fromsub" value="" />
            <input type="text" TABINDEX=1 class="form-input form-full" id="nickname" name="nickname" />

            <div class="form-desc">
                Wpisz nick osoby, którą chcesz zablokować.
            </div>
            <div id="nick.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="steam" class="form-label form-label:bottom">
                SteamID / Community ID
            </label>

            <input type="text" TABINDEX=3 class="form-input form-full" id="steam" name="steam" />

            <div class="form-desc">
                SteamID lub Community ID osoby do zablokowania.
            </div>
            <div id="steam.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="type" class="form-label form-label:bottom">
                Typ blokady
            </label>

            <select id="type" name="type" TABINDEX=2 class="form-select form-full">
                <option value="1">Głos</option>
                <option value="2">Czat</option>
                <option value="3">Czat i głos</option>
            </select>
        </div>

        <div class="margin-bottom:half">
            <label for="listReason" class="form-label form-label:bottom">
                Powód blokady
            </label>

            <select id="listReason" name="listReason" TABINDEX=4 class="form-select form-full"
                onChange="changeReason(this[this.selectedIndex].value);">
                <option value="" selected> -- Wybierz powód -- </option>
                <optgroup label="Naruszenie">
                    <option value="Obscene language">Wulgarne słownictwo</option>
                    <option value="Insult players">Obrażanie graczy</option>
                    <option value="Admin disrespect">Brak szacunku do administratora</option>
                    <option value="Inappropriate Language">Niestosowny język</option>
                    <option value="Trading">Handel</option>
                    <option value="Spam in chat/voice">Spam</option>
                    <option value="Advertisement">Reklama</option>
                </optgroup>
                <option value="other">Inny powód</option>
            </select>

            <div id="dreason" style="display:none;">
                <textarea class="form-text margin-top:half" TABINDEX=4 cols="30" rows="5" id="txtReason"
                    name="txtReason"></textarea>
            </div>

            <div class="form-desc">
                Opisz szczegółowo, dlaczego ta blokada jest nakładana.
            </div>
            <div id="reason.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="banlength" class="form-label form-label:bottom">
                Długość blokady
            </label>

            <select id="banlength" TABINDEX=5 class="form-select form-full">
                <option value="0">Permanentna</option>
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

            <div id="length.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between margin-top">
            {sb_button text="Dodaj blokadę" onclick="ProcessBan();" class="button button-success" id="aban" submit=false}
            {sb_button text="Wstecz" onclick="history.go(-1)" class="button button-light" id="aback"}
        </div>
    </div>
{/if}