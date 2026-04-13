<div class="layout_box flex:11 admin_tab_content tabcontent" id="List admins" style="display: block;">
    {if not $permission_listadmin}
        Brak dostępu
    {else}
        <div class="admin_tab_content_title">
            <h2><i class="fas fa-user-shield"></i> Administratorzy - {$admin_count}</h2>
        </div>

        <div class="padding">
            <span>Kliknij administratora, aby zobaczyć szczegółowe informacje oraz dostępne działania.</span>

            {load_template file="admin.admins.search"}

            <div class="flex flex-jc:end flex-ai:center margin-bottom:half">
                {$admin_nav}
            </div>

            <div class="table">
                <div class="table_box">
                    <table class="table_box">
                        <thead>
                            <tr>
                                <th class="text:left">Nazwa</th>
                                <th class="text:left">Grupa administratorów serwera</th>
                                <th class="text:left">Grupa administratorów WWW</th>
                                <th class="text:left">Poziom immunitetu</th>
                                <th class="text:left">Ostatnia wizyta</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$admins item="admin"}
                                <tr class="collapse">
                                    <td>{$admin.user} (<a href="./index.php?p=banlist&advSearch={$admin.aid}&advType=admin"
                                            title="Pokaż bany">{$admin.bancount} banów</a> | <a
                                            href="./index.php?p=banlist&advSearch={$admin.aid}&advType=nodemo"
                                            title="Pokaż bany bez demka">{$admin.nodemocount} b.b.d.</a>)</td>
                                    <td>{$admin.server_group}</td>
                                    <td>{$admin.web_group}</td>
                                    <td>{$admin.immunity}</td>
                                    <td>{$admin.lastvisit}</td>
                                </tr>
                                <tr class="table_hide">
                                    <td colspan="8">
                                        <div class="collapse_content">
                                            <div class="padding:half flex">
                                                <ul class="ban_action">
                                                    {if $permission_editadmin}
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editdetails&id={$admin.aid}">
                                                                <i class="fas fa-clipboard-list"></i> Edytuj szczegóły
                                                            </a>
                                                        </li>
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editpermissions&id={$admin.aid}">
                                                                <i class="fas fa-edit fa-lg"></i> Edytuj uprawnienia
                                                            </a>
                                                        </li>
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editservers&id={$admin.aid}">
                                                                <i class="fas fa-server"></i> Edytuj dostęp do serwerów
                                                            </a>
                                                        </li>
                                                        <li class="button button-light">
                                                            <a href="index.php?p=admin&c=admins&o=editgroup&id={$admin.aid}">
                                                                <i class="fas fa-users"></i> Edytuj grupy
                                                            </a>
                                                        </li>
                                                    {/if}
                                                    {if $permission_deleteadmin}
                                                        <li class="button button-important">
                                                            <a href="#" onclick="RemoveAdmin({$admin.aid}, '{$admin.user}');">
                                                                <i class="fas fa-trash"></i> Usuń administratora
                                                            </a>
                                                        </li>
                                                    {/if}
                                                </ul>

                                                <div class="flex:11 margin-right">
                                                    <h3>Uprawnienia administratora serwera</h3>
                                                    <ul>
                                                        {if $admin.server_flag_string}
                                                            {foreach from=$admin.server_flag_string item="permission"}
                                                                <li>{$permission}</li>
                                                            {/foreach}
                                                        {else}
                                                            <li>Brak</li>
                                                        {/if}
                                                    </ul>
                                                </div>

                                                <div class="flex:11">
                                                    <h3>Uprawnienia administratora WWW</h3>
                                                    <ul>
                                                        {if $admin.web_flag_string}
                                                            {foreach from=$admin.web_flag_string item="permission"}
                                                                <li>{$permission}</li>
                                                            {/foreach}
                                                        {else}
                                                            <li>Brak</li>
                                                        {/if}
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>
    {/if}
</div>