<div class="layout_box flex:11 admin_tab_content tabcontent" id="View Permissions" style="display: block;">
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-address-card"></i> Twoje uprawnienia</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            Poniżej znajduje się lista uprawnień, które posiadasz w tym systemie.
        </div>

        <div class="flex m:flex-fd:column">
            <div class="flex:11">
                <h3 style="color: var(--table-permanent-text);">Uprawnienia WWW</h3>

                <ul>
                    -{if $web_permissions}-
                        -{foreach from=$web_permissions item="permission"}-
                            <li>-{$permission}-</li>
                        -{/foreach}-
                    -{else}-
                        <li class="text:italic">None</li>
                    -{/if}-
                </ul>
            </div>

            <div class="flex:11">
                <h3 style="color: var(--table-unbanned-text);">Uprawnienia serwera</h3>

                <ul>
                    -{if $server_permissions}-
                        -{foreach from=$server_permissions item="permission"}-
                            <li>-{$permission}-</li>
                        -{/foreach}-
                    -{else}-
                        <li class="text:italic">None</li>
                    -{/if}-
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="layout_box flex:11 admin_tab_content tabcontent" id="Change Password">
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-key"></i> Zmień hasło</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label for="current" class="form-label form-label:bottom">
                Obecne hasło
            </label>

            <input type="password" onblur="xajax_CheckPassword(-{$user_aid}-, $('current').value);"
                class="form-input form-full" id="current" name="current" />

            <div class="form-desc">
                Musimy znać Twoje obecne hasło, aby potwierdzić Twoją tożsamość.
            </div>

            <div id="current.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom">
            <label for="pass1" class="form-label form-label:bottom">
                Nowe hasło
            </label>

            <input class="form-input form-full" type="password" onkeyup="checkYourAcctPass();" id="pass1" value=""
                name="pass1" />

            <div class="form-desc">
                Wpisz tutaj nowe hasło.
            </div>

            <div id="pass1.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="pass2" class="form-label form-label:bottom">
                Potwierdź hasło
            </label>

            <input type="password" onkeyup="checkYourAcctPass();" class="form-input form-full" id="pass2"
                name="pass2" />

            <div class="form-desc">
                Wpisz tutaj nowe hasło.
            </div>

            <div id="pass2.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            <input type="submit" onclick="xajax_CheckPassword(-{$user_aid}-, $('current').value);dispatch();"
                name="button" class="button button-success" id="button" value="Zapisz" />
            <input type="submit" onclick="history.go(-1)" name="button" class="button button-light" id="button"
                value="Anuluj" />
        </div>
    </div>
</div>


<div class="layout_box flex:11 admin_tab_content tabcontent" id="Server Password">
    <div class="admin_tab_content_title">
        <h2><i class="fab fa-steam-symbol"></i> Zmień hasło serwera</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            <div>
                 Musisz ustawić to hasło na serwerze gry, aby móc korzystać z uprawnień administratora.
            </div>
            <div>
                Kliknij <a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords"
                    title="SourceMod Password Info" target="_blank" rel="noopener" class="text:bold">tutaj</a>, aby uzyskać więcej informacji. 
            </div>
        </div>

        -{if $srvpwset}-
            <div class="margin-bottom:half">
                <label for="scurrent" class="form-label form-label:bottom">
                    Obecne hasło serwera
                </label>

                <input type="password" onblur="xajax_CheckSrvPassword(-{$user_aid}-, $('scurrent').value);"
                    class="form-input form-full" id="scurrent" name="scurrent" />

                <div class="form-desc">
                    We need to know your current password to verify its you.
                </div>

                <div id="scurrent.msg" class="message message:error margin-top:half" style="display: none;"></div>
            </div>
        -{/if}-

        <div class="margin-bottom:half">
            <label for="spass1" class="form-label form-label:bottom">
                Nowe hasło
            </label>

            <input class="form-input form-full" type="password" onkeyup="checkYourSrvPass();" id="spass1" value=""
                name="spass1" />

            <div class="form-desc">
                Wpisz tutaj nowe hasło serwera.
            </div>

            <div id="spass1.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="spass2" class="form-label form-label:bottom">
                Potwierdź hasło
            </label>

            <input type="password" onkeyup="checkYourSrvPass();" class="form-input form-full" id="spass2"
                name="spass2" />

            <div class="form-desc">
                Wpisz ponownie nowe hasło serwera, aby uniknąć błędu.
            </div>

            <div id="spass2.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        -{if $srvpwset}-
            <div class="margin-bottom:half">
                <input type="checkbox" id="delspass" class="form-check" name="delspass" />

                <label for="delspass" class="form-label form-label:left">
                    Usuń hasło
                </label>

                <div class="form-desc">
                    Zaznacz to pole, jeśli chcesz usunąć hasło serwera.
                </div>
            </div>
        -{/if}-

        <div class="flex flex-ai:center flex-jc:space-between">
            <input type="submit"
                onclick="-{if $srvpwset}-xajax_CheckSrvPassword(-{$user_aid}-, $('scurrent').value);-{/if}-srvdispatch();"
                name="button" class="button button-success" id="button" value="Save" />
            <input type="submit" onclick="history.go(-1)" name="button" class="button button-light" id="button"
                value="Cancel" />
        </div>
    </div>
</div>


<div class="layout_box flex:11 admin_tab_content tabcontent" id="Change Email">
    <div class="admin_tab_content_title">
        <h2><i class="fas fa-envelope"></i> Zmień e-mail</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label class="form-label form-label:bottom">
                Obecny e-mail
            </label>

            <div class="text:bold">
                -{$email}-
            </div>

            <div class="form-desc">
                To jest Twój aktualnie zapisany adres e-mail.
            </div>
        </div>

        <div class="margin-bottom:half">
            <label for="emailpw" class="form-label form-label:bottom">
                Hasło
            </label>

            <input class="form-input form-full" type="password" id="emailpw" value="" name="emailpw" />

            <div class="form-desc">
                 Wpisz tutaj swoje hasło.
            </div>

            <div id="emailpw.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="email1" class="form-label form-label:bottom">
                Nowy e-mail
            </label>

            <input class="form-input form-full" type="text" id="email1" value="" name="email1" />

            <div class="form-desc">
                Wpisz tutaj nowy adres e-mail.
            </div>

            <div id="email1.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="email2" class="form-label form-label:bottom">
                Potwierdź e-mail
            </label>

            <input type="text" class="form-input form-full" id="email2" name="email2" />

            <div class="form-desc">
                 Wpisz ponownie nowy adres e-mail, aby uniknąć błędu.
            </div>

            <div id="email2.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between">
            <input type="submit" onclick="checkmail();" name="button" class="button button-success" id="button"
                value="Save" />
            <input type="submit" onclick="history.go(-1)" name="button" class="button button-light" id="button"
                value="Cancel" />
        </div>
    </div>
</div>

<script>
    let error = 0;

    const set_error = (count) => {
        error = count;
    }

    const checkYourAcctPass = () => {
        let err = 0;

        if($('pass1').value.length < -{$min_pass_len}-)
        {
            $('pass1.msg').setStyle('display', 'block');
            $('pass1.msg').setHTML('Hasło musi mieć co najmniej -{$min_pass_len}- znaków');
            err++;
        } else {
            $('pass1.msg').setStyle('display', 'none');
        }
        if ($('pass2').value != "" && $('pass2').value != $('pass1').value) {
            $('pass2.msg').setStyle('display', 'block');
            $('pass2.msg').setHTML('Hasła nie są zgodne');
            err++;
        } else {
            $('pass2.msg').setStyle('display', 'none');
        }
        if (err > 0) {
            set_error(1);
            return false;
        } else {
            set_error(0);
            return true;
        }
    }

    const dispatch = () => {
        if ($('current.msg').innerHTML == "Incorrect password.") {
            alert("Nieprawidłowe hasło");
            return false;
        }
        if (checkYourAcctPass() && error == 0) {
            xajax_ChangePassword(-{$user_aid}-, $('pass2').value, $('current').value);
        }
    }

    const checkYourSrvPass = () => {
        if (!$('delspass') || $('delspass').checked == false) {
            var err = 0;

            if($('spass1').value.length < -{$min_pass_len}-)
            {
                $('spass1.msg').setStyle('display', 'block');
                $('spass1.msg').setHTML('Hasło musi mieć co najmniej -{$min_pass_len}- znaków');
                err++;
            } else {
                $('spass1.msg').setStyle('display', 'none');
            }
            if ($('spass2').value != "" && $('spass2').value != $('spass1').value) {
                $('spass2.msg').setStyle('display', 'block');
                $('spass2.msg').setHTML('Hasła nie są zgodne');
                err++;
            } else {
                $('spass2.msg').setStyle('display', 'none');
            }
            if (err > 0) {
                set_error(1);
                return false;
            } else {
                set_error(0);
                return true;
            }
        } else {
            set_error(0);
            return true;
        }
    }

    const srvdispatch = () => {
        -{if $srvpwset}-
            if ($('scurrent.msg').innerHTML == "Incorrect password.") {
                alert("Nieprawidłowe hasło");
                return false;
            }
        -{/if}-
        if (checkYourSrvPass() && error == 0 && (!$('delspass') || $('delspass').checked == false)) {
            xajax_ChangeSrvPassword(-{$user_aid}-, $('spass2').value);
        }
        if ($('delspass').checked == true) {
            xajax_ChangeSrvPassword(-{$user_aid}-, 'NULL');
        }
    }

    const checkmail = () => {
        let err = 0;
        if ($('email1').value == "") {
            $('email1.msg').setStyle('display', 'block');
            $('email1.msg').setHTML('Wpisz nowy adres e-mail.');
            err++;
        } else {
            $('email1.msg').setStyle('display', 'none');
        }

        if ($('email2').value == "") {
            $('email2.msg').setStyle('display', 'block');
            $('email2.msg').setHTML('Wpisz ponownie nowy adres e-mail.');
            err++;
        } else {
            $('email2.msg').setStyle('display', 'none');
        }

        if (err == 0 && $('email2').value != $('email1').value) {
            $('email2.msg').setStyle('display', 'block');
            $('email2.msg').setHTML('Wpisane adresy e-mail nie są zgodne.');
            err++;
        }

        if ($('emailpw').value == "") {
            $('emailpw.msg').setStyle('display', 'block');
            $('emailpw.msg').setHTML('Wpisz swoje hasło.');
            err++;
        } else {
            $('emailpw.msg').setStyle('display', 'none');
        }

        if (err > 0) {
            set_error(1);
            return false;
        } else {
            set_error(0);
        }
        if (error == 0) {
            xajax_ChangeEmail(-{$user_aid}-, $('email2').value, $('emailpw').value);
        }
    }
</script>