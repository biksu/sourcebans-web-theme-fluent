{if NOT $permission_listgroups}
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
        <h2><i class="fas fa-users"></i> Grupy</h2>
    </div>

    <div class="padding">
        <div>
            Kliknij grupę, aby zobaczyć jej uprawnienia.
        </div>

        <h3 style="color: var(--table-permanent-text);">Grupy administratorów WWW ({$web_group_count})</h3>

        <div class="table table_box">
            <table>
                <thead>
                    <tr>
                        <th class="text:left">Nazwa grupy</th>
                        <th class="text:left">Administratorzy w grupie</th>
                        <th>Akcja</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$web_group_list item="group" name="web_group"}
                        <tr class="collapse">
                            <td style="width: 350px;">
                                {$group.name}
                            </td>

                            <td>
                                {$web_admins[$smarty.foreach.web_group.index]}
                            </td>

                            <td class="flex flex-jc:center flex-ai:center">
                                {if $permission_editgroup}
                                    <a class="button button-light margin-right:half"
                                        href="index.php?p=admin&c=groups&o=edit&type=web&id={$group.gid}">
                                        Edytuj
                                    </a>
                                {/if}

                                {if $permission_deletegroup}
                                    <button class="button button-important"
                                        onclick="RemoveGroup({$group.gid}, '{$group.name}', 'web');">
                                        Usuń
                                    </button>
                                {/if}
                            </td>
                        <tr class="table_hide">
                            <td colspan="8">
                                <div class="collapse_content">
                                    <div class="padding:half flex m:flex-fd:column">
                                        <div class="flex:11">
                                            <h4>Uprawnienia</h4>

                                            <ul>
                                                {if $group.permissions}
                                                    {foreach from=$group.permissions item="permission"}
                                                        <li>{$permission}</li>
                                                    {/foreach}
                                                {else}
                                                    <li class="text:italic">Brak</li>
                                                {/if}
                                            </ul>
                                        </div>

                                        <div class="flex:11">
                                            <h4>Członkowie</h4>

                                            <div class="table table_box">
                                                <table>
                                                    <tbody>
                                                        {foreach from=$web_admins_list[$smarty.foreach.web_group.index] item="web_admin"}
                                                            <tr>
                                                                <td>
                                                                    {$web_admin.user}
                                                                </td>
                                                                {if $permission_editadmin}
                                                                    <td class="flex flex-jc:center flex-ai:center">
                                                                        <a class="button button-light margin-right:half"
                                                                            href="index.php?p=admin&c=admins&o=editgroup&id={$web_admin.aid}"
                                                                            title="Edytuj grupy">
                                                                            Edytuj
                                                                        </a>

                                                                        <a class="button button-infos"
                                                                            href="index.php?p=admin&c=admins&o=editgroup&id={$web_admin.aid}&wg="
                                                                            title="Usuń z grupy">
                                                                            Usuń
                                                                        </a>
                                                                    </td>
                                                                {/if}
                                                            </tr>
                                                        {/foreach}
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        	<h3 style="color: var(--table-unbanned-text);">Grupy administratorów serwera ({$server_admin_group_count})</h3>

        <div class="table table_box">
            <table>
                <thead>
                    <tr>
                        <th class="text:left">Nazwa grupy</th>
                        <th class="text:left">Administratorzy w grupie</th>
                        <th>Akcja</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$server_group_list item="group" name="server_admin_group"}
                        <tr class="collapse">
                            <td style="width: 350px;">
                                {$group.name}
                            </td>

                            <td>
                                {$server_admins[$smarty.foreach.server_admin_group.index]}
                            </td>

                            <td class="flex flex-jc:center flex-ai:center">
                                {if $permission_editgroup}
                                    <a class="button button-light margin-right:half"
                                        href="index.php?p=admin&c=groups&o=edit&type=srv&id={$group.id}">
                                        Edytuj
                                    </a>
                                {/if}

                                {if $permission_deletegroup}
                                    <button class="button button-important" onclick="RemoveGroup({$group.id}, '{$group.name}', 'srv');">
                                        Usuń
                                    </button>
                                {/if}
                            </td>
                        <tr class="table_hide">
                            <td colspan="8">
                                <div class="collapse_content">
                                    <div class="padding:half flex m:flex-fd:column">
                                        <div class="flex:11">
                                            <h4>Uprawnienia</h4>

                                            <ul>
                                                {if $group.permissions}
                                                    {foreach from=$group.permissions item="permission"}
                                                        <li>{$permission}</li>
                                                    {/foreach}
                                                {else}
                                                    <li class="text:italic">Brak</li>
                                                {/if}
                                            </ul>
                                        </div>

                                        <div class="flex:11">
                                            <h4>Członkowie</h4>

                                            <div class="table table_box">
                                                <table>
                                                    <tbody>
                                                        {foreach from=$server_admins_list[$smarty.foreach.server_admin_group.index] item="server_admin"}
                                                            <tr>
                                                                <td>
                                                                    {$server_admin.user}
                                                                </td>
                                                                {if $permission_editadmin}
                                                                    <td class="flex flex-jc:center flex-ai:center">
                                                                        <a class="button button-light margin-right:half"
                                                                            href="index.php?p=admin&c=admins&o=editgroup&id={$server_admin.aid}"
                                                                            title="Edytuj grupy">
                                                                            Edytuj
                                                                        </a>

                                                                        <a class="button button-important"
                                                                            href="index.php?p=admin&c=admins&o=editgroup&id={$server_admin.aid}&sg="
                                                                            title="Usuń z grupy">
                                                                            Usuń
                                                                        </a>
                                                                    </td>
                                                                {/if}
                                                            </tr>
                                                        {/foreach}
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    {if $server_overrides_list[$smarty.foreach.server_admin_group.index]}
                                        <div class="table table_box padding:half">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th class="text:left">Typ</th>
                                                        <th class="text:left">Nazwa</th>
                                                        <th class="text:left">Dostęp</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {foreach from=$server_overrides_list[$smarty.foreach.server_admin_group.index] item="override"}
                                                        <tr>
                                                            <td>{$override.type}</td>
                                                            <td>{$override.name|smarty_htmlspecialchars}</td>
                                                            <td>{$override.access}</td>
                                                        </tr>
                                                    {/foreach}
                                                </tbody>
                                            </table>
                                        </div>
                                    {/if}
                                </div>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>

        <h3>Grupy serwerów ({$server_group_count})</h3>

        <div class="table table_box">
            <table>
                <thead>
                    <tr>
                        <th class="text:left">Nazwa grupy</th>
                        <th class="text:left">Administratorzy w grupie</th>
                        <th>Akcja</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$server_list item="group" name="server_group"}
                        <tr class="collapse">
                            <td style="width: 350px;">
                                {$group.name}
                            </td>

                            <td>
                                {$server_counts[$smarty.foreach.server_group.index]}
                            </td>

                            <td class="flex flex-jc:center flex-ai:center">
                                {if $permission_editgroup}
                                    <a class="button button-light margin-right:half"
                                        href="index.php?p=admin&c=groups&o=edit&type=server&id={$group.gid}">
                                        Edytuj
                                    </a>
                                {/if}

                                {if $permission_deletegroup}
                                    <button class="button button-important"
                                        onclick="RemoveGroup({$group.gid}, '{$group.name}', 'server');">
                                        Usuń
                                    </button>
                                {/if}
                            </td>
                        <tr class="table_hide">
                            <td colspan="8">
                                <div class="collapse_content">
                                    <div class="padding">
                                        <h3>Serwery w tej grupie</h3>

                                        <ul>
                                            <li id="servers_{$group.gid}">Proszę czekać!</li>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>

        <script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>
        <script>
            document.querySelectorAll('.button').forEach(e => e.addEventListener('click', el => el.stopPropagation()));
        </script>
    </div>
{/if}