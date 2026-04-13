<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box_small layout_box">
        <div class="layout_box_title">
            <h2><i class="fas fa-key"></i> Nie pamiętasz hasła</h2>
        </div>
        <div class="padding">
            <div class="margin-bottom:half">
                 Wpisz swój adres e-mail poniżej, aby zresetować hasło.
            </div>

            <div id="msg-blue msg-red" class="message message:info margin-bottom:half" style="display:none;">
                Jeśli Twój e-mail jest zarejestrowany, wkrótce otrzymasz link do resetu hasła. Sprawdź swoją skrzynkę (również spam).
            </div>

            <div class="margin-bottom:half">
                <label for="email" class="form-label form-label:bottom">
                    Adres e-mail
                </label>
                <input id="email" class="form-input form-full" type="text" name="email" />
            </div>

            <div class="flex margin-top">
                {sb_button text="Zresetuj hasło" onclick="xajax_LostPassword($('email').value);" class="button button-success flex:11" id="alogin" submit=false}
            </div>
        </div>
    </div>
</div>