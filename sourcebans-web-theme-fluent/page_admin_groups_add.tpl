{if NOT $permission_addgroup}
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
        <h2><i class="fas fa-users"></i> Nowa grupa</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom:half">
            <label for="groupname" class="form-label form-label:bottom">
                Nazwa grupy
            </label>

            <input type="text" TABINDEX=1 class="form-input form-full" id="groupname" name="groupname" />

            <div class="form-desc">
                Wpisz nazwę nowej grupy, którą chcesz utworzyć.
            </div>
            <div id="name.msg" class="message message:error margin-top:half" style="display: none;"></div>
        </div>

        <div class="margin-bottom:half">
            <label for="grouptype" class="form-label form-label:bottom">
                Typ grupy
            </label>

            <select onchange="UpdateGroupPermissionCheckBoxes()" TABINDEX=2 class="form-select form-full" name="grouptype"
                id="grouptype">
                <option value="0">Wybierz...</option>
                <option value="1">Grupa administratorów WWW</option>
                <option value="2">Grupa administratorów serwera</option>
                <option value="3">Grupa serwera</option>
            </select>

            <div class="form-desc">
                Określa typ grupy, którą tworzysz. Ułatwia identyfikację i kategoryzację listy grup.
            </div>
            <div id="type.msg" class="message message:info margin-top:half" style="display: none;"></div>

            <div class="test" colspan="2" id="perms" valign="top" style="height:5px;overflow:hidden;"></div>
        </div>

        <div class="flex flex-ai:center flex-jc:space-between margin-top">
            {sb_button text="Zapisz zmiany" onclick="ProcessGroup();" class="button button-success" id="agroup" submit=false}
            {sb_button text="Wstecz" onclick="history.go(-1)" class="button button-light" id="back" submit=false}
        </div>
    </div>
{/if}