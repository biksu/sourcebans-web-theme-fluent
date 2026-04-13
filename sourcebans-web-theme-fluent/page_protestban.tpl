<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2><i class="fas fa-user-clock"></i> Odwołanie od bana</h2>
        </div>

        <div class="padding">
            <div>
                Aby złożyć odwołanie, upewnij się, że masz bana — kliknij <a href="index.php?p=banlist"
                    class="text:bold">tutaj</a> ,aby sprawdzić za co został nałożony.
            </div>
            <div class="margin-bottom">
                Jeśli znajdujesz się na liście banów i uważasz, że jest on niesłuszny, wypełnij poniższy formularz odwołania.
            </div>

            <form action="index.php?p=protest" method="post">
                <input type="hidden" name="subprotest" value="1">

                <div class="margin-bottom:half">
                    <label for="Type" class="form-label form-label:bottom">
                        Typ bana
                    </label>
                    <select id="Type" name="Type" class="form-select form-full"
                        onChange="changeType(this[this.selectedIndex].value);">
                        <option value="0">Steam ID</option>
                        <option value="1">Adres IP</option>
                    </select>
                </div>

                <div id="steam.row" class="margin-bottom:half">
                    <label for="SteamID" class="form-label form-label:bottom">
                        Twój SteamID <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$steam_id}"
                        class="form-input form-full" />
                </div>

                <div id="ip.row" class="margin-bottom:half" style="display: none;">
                    <label for="Ip" class="form-label form-label:bottom">
                        Twój adres IP
                    </label>
                    <input type="text" id="Ip" name="IP" size="40" maxlength="64" value="{$ip}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="PlayerName" class="form-label form-label:bottom">
                        Nazwa <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}"
                        class="form-input form-full" />
                </div>

                <div class="margin-bottom:half">
                    <label for="BanReason" class="form-label form-label:bottom">
                        Powód, dla którego powinieneś zostać odbanowany <span class="mandatory">*</span>: (Opisz jak najdokładniej)
                    </label>
                    <textarea id="BanReason" name="BanReason" cols="30" rows="5"
                        class="form-text form-full input">{$reason}</textarea>
                </div>

                <div class="margin-bottom:half">
                    <label for="EmailAddr" class="form-label form-label:bottom">
                        Twój e-mail <span class="mandatory">*</span>
                    </label>
                    <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}"
                        class="form-input form-full" />
                </div>

                <div class="flex">
                    {sb_button text="Wyślij" class="button button-primary flex:11" id="alogin" submit=true}
                </div>
            </form>

            <div class="margin-top">
                <h3>Co się stanie po wysłaniu odwołania?</h3>
                <p>
                    Administracja zostanie powiadomiona o Twoim odwołaniu. Następnie sprawdzona zostanie zasadność bana.
                    Po weryfikacji otrzymasz odpowiedź — zazwyczaj w ciągu 24 godzin.
                </p>

                <h3>Uwaga:</h3>
                <p>
                    Wysyłanie wiadomości z groźbami, obrażanie lub wyzywanie administracji nie spowoduje odbanowania i może skutkować trwałą blokadą dostępu do naszych usług.
                </p>
            </div>
        </div>
    </div>
</div>