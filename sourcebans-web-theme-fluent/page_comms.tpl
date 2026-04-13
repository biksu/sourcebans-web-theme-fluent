{if $comment}
  <div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
      <div class="layout_box_title">
        <h2><i class="fa-solid fa-comment"></i> {$commenttype} Komentarz</h2>
      </div>

      <div class="padding">
        <textarea class="form-text" id="commenttext" name="commenttext" {if !$canedit}disabled{/if}>{$commenttext}</textarea>

        <div id="commenttext.msg" class="message message:error" style="display:none;"></div>

        <div class="margin-top:half flex flex-jc:space-between flex-ai:center">
          <input type="hidden" name="bid" id="bid" value="{$comment}">
          <input type="hidden" name="ctype" id="ctype" value="{$ctype}">

          {if $cid != ""}
            <input type="hidden" name="cid" id="cid" value="{$cid}">
          {else}
            <input type="hidden" name="cid" id="cid" value="-1">
          {/if}

          <input type="hidden" name="page" id="page" value="{$page}">

		{if $canedit}
          <a class="button button-important" onclick="history.go(-1)">Anuluj</a>
		  <a class="button button-success" onclick="ProcessComment();">Dodaj</a>
		{/if}
        </div>
        {foreach from=$othercomments item="com"}
            <div class="flex flex-jc:center flex-ai:center">
                <div class="layout_box layout_box_medium padding">
                    <hr>
                <div>
                    <span class=left><b>{$com.comname}</b></span>
                    <span class=right><b>{$com.added}</b></span> 	
                </div>
                    {$com.commenttxt}
                    {if $com.editname != ''}<br /><br /><i>Ostatnia edycja {$com.edittime} by {$com.editname}</i>{/if}
                </div>
            </div>
        {/foreach}
      </div>
    </div>
  </div>
{else}
  {load_template file="admin.comms.search"}

  <div class="layout_box margin-bottom padding:half flex flex-jc:space-between flex-ai:center m:flex-fd:column">
    <span>
      <a href="index.php?p=commslist&hideinactive={if $hidetext == 'Hide'}true{else}false{/if}{$searchlink|smarty_htmlspecialchars}"
        title="{$hidetext} inactive">{$hidetext} nieaktywne</a> | <i>Łączna liczba blokad: {$total_bans}</i>
    </span>
    <div class="pagination">
      <span>{$ban_nav}</span>
    </div>
  </div>

  <div class="layout_box">
    <div class="table padding">
      <div class="table_box">
        <table class="table_box">
          <thead>
            <tr>
              <th>MOD/Typ</th>
              <th class="text:left">Data</th>
              <th class="text:left">Gracz</th>
              {if !$hideadminname}
                <th class="text:left">Administrator</th>
              {/if}
              <th>Długość</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$ban_list item=ban name="banlist"}
                        <tr class="collapse" {if $ban.server_id != 0}
						onclick="xajax_ServerHostPlayers({$ban.server_id}, 'id', 'host_{$ban.ban_id}');"
						{/if}
						>
                <td class="text:center">{$ban.mod_icon}</td>
				<td>{$ban.ban_date}</td>
                  {if empty($ban.player)}
                    <td class="text:italic">Brak nicku</td>
                  {else}
				  <td>
                      {if $view_comments && $ban.commentdata != "None" && $ban.commentdata|@count > 0}
                          <div style="float:right">
                              {$ban.commentdata|@count} <i class="fas fa-clipboard-list fa-lg"></i>
                          </div>
                      {/if}
                      {if empty($ban.player)}
                        <span class="text:italic">Brak nickut</span>
                      {else}
                        <span>{$ban.player|escape:'html'|smarty_stripslashes}</span>
                      {/if}
                    </td>
                  {/if}

                {if !$hideadminname}
                  <td>
                    {if !empty($ban.admin)}
                      <span>
                        {$ban.admin|escape:'html'}
                      </span>
                    {else}
                      <span class="text:italic">Administrator usunięty</span>
                    {/if}
                  </td>
                {/if}

                <td class="{$ban.class}">{$ban.banlength}</td>
              </tr>

              <tr class="table_hide">
                <td colspan="8">
                  <div class="collapse_content">
                    <div class="padding flex flex-jc:start" style="overflow: auto;">
                      <ul class="ban_action responsive_show:desktop">
					  {if $view_bans}
                        {if ($ban.view_edit && (!isset($ban.unbanned) || !$ban.unbanned))}
                          <li class="button button-primary">{$ban.edit_link}</li>
                        {/if}
						{if $view_comments}
                        <li class="button button-success">{$ban.addcomment}</li>
						{/if}
						{if ($ban.unbanned == false && $ban.view_unban)}
                          <li class="button button-important">{$ban.unban_link}</li>
                        {/if}
						{if isset($ban.unbanned) && $ban.reban_link != false}
                          <li class="button button-important">{$ban.reban_link}</li>
                        {/if}
                        {if $ban.view_delete}
                          <li class="button button-important">{$ban.delete_link}</li>
                        {/if}
					{else}
						<li>
							<a class="button button-success" href='index.php?p=login'>Administrator? Zaloguj się</a>
						</li>
					{/if}
                      </ul>
                      <ul class="ban_list_detal">
                        <ul class="ban_action responsive_hide:desktop lists-mobile">
                          {if $view_bans}
                            {if ($ban.view_edit && (!isset($ban.unbanned) || !$ban.unbanned))}
                              <li class="button button-primary lists-mobile">{$ban.edit_link}</li>
                            {/if}
                            {if $view_comments}
                            <li class="button button-success lists-mobile">{$ban.addcomment}</li>
                            {/if}
                            {if ($ban.unbanned == false && $ban.view_unban)}
                              <li class="button button-important lists-mobile">{$ban.unban_link}</li>
                            {/if}
                            {if isset($ban.unbanned) && $ban.reban_link != false}
                              <li class="button button-important lists-mobile">{$ban.reban_link}</li>
                            {/if}
                            {if $ban.view_delete}
                              <li class="button button-important lists-mobile">{$ban.delete_link}</li>
                            {/if}
                          {/if}
                        </ul>
                        <li>
                          <span><i class="fas fa-user"></i> Player</span>

                          {if empty($ban.player)}
                            <span class="text:italic">No nickname present</span>
                          {else}
                            <span>{$ban.player|escape:'html'|smarty_stripslashes}</span>
                          {/if}
                        </li>
                        <li>
                          <span><i class="fab fa-steam-symbol"></i> Steam ID</span>

                          {if empty($ban.steamid)}
                            <span class="text:italic">Brak Steam ID</span>
                          {else}
                            <span>{$ban.steamid}</span>
                          {/if}
                        </li>
                        <li>
                          <span><i class="fab fa-steam-symbol"></i> Steam3 ID</span>

                          {if empty($ban.steamid)}
                            <span class="text:italic">Brak Steam3 ID</span>
                          {else}
                            <a href="http://steamcommunity.com/profiles/{$ban.steamid3}" target="_blank"
                              rel="noopener">{$ban.steamid3}</a>
                          {/if}
                        </li>
                        <li>
                          <span><i class="fab fa-steam-symbol"></i> Steam Community</span>
                          {if empty($ban.steamid)}
                            <span class="text:italic">Brak Steam Community ID</span>
                          {else}
                            <a href="http://steamcommunity.com/profiles/{$ban.communityid}" target="_blank"
                              rel="noopener">{$ban.communityid}</a>
                          {/if}
                        </li>
                        <li>
                          <span><i class="fas fa-play"></i> Nałożono</span>
                          <span>{$ban.ban_date}</span>
                        </li>
                        <li>
                          <span><i class="fas fa-hourglass-half"></i> Długość blokady</span>
                          <span>{$ban.banlength}</span>
                        </li>
                        {if isset($ban.unbanned) && ($ban.unbanned == true)}
                          <li>
                            <span><i class="fas fa-user-shield"></i> Powód odblokowania</span>
                            {if !isset($ban.ureason) || $ban.ureason == ""}
                              <span class="text:italic">No reason present</span>
                            {else}
                              <span>{$ban.ureason}</span>
                            {/if}
                          </li>
                          <li>
                            <span><i class="fas fa-user-shield"></i> Odblokowany przez admina</span>

                            {if empty($ban.removedby)}
                              <span class="text:italic">Admnistrator usunięty</span>
                            {else}
                              <span>{$ban.removedby|escape:'html'}</span>
                            {/if}
                          </li>
                        {/if}
                        <li>
                          <span><i class="fas fa-clock"></i> Wygasa</span>

                          {if $ban.expires == "never"}
                            <span class="text:italic">Nie dotyczy</span>
                          {else}
                            <span>{$ban.expires}</span>
                          {/if}
                        </li>
                        <li>
                          <span><i class="fas fa-question"></i> Powód</span>
						  {if $ban.reason == ""}
                              <span class="text:italic">Brak powodu</span>
                            {else}
                          <span>{$ban.reason}</span>
						  {/if}
                        </li>
                        {if !$hideadminname}
                          <li>
                            <span><i class="fas fa-ban"></i> Zablokowany przez administratora</span>

                            {if empty($ban.admin)}
                              <span class="text:italic">Admnistrator usunięty</span>
                            {else}
                              <span>{$ban.admin|escape:'html'}</span>
                            {/if}
                          </li>
                        {/if}
						<li>
                                                        <span><i class="fas fa-server"></i> Zablokowany na</span>
                                                            <span {if $ban.server_id != 0} id="host_{$ban.ban_id}"{/if}>
											{if $ban.server_id == 0}
											Ban z panelu WWW
											{else}
											Proszę czekać...
											{/if}</span>
                                                    </li>
                        <li>
                          <span><i class="fas fa-ban"></i> Łączna liczba blokad</span>
                          <span>{$ban.prevoff_link}
						  	{if $view_bans}
                          		{if $ban.counts > 0 || $ban.commentdata != "None"}
                              		<div>&nbsp;[{$ban.counts} ]</div>
								{/if}
                      		{/if}
						</span>
                        </li>
                      </ul>

                      {if $view_comments}
                        <div class="ban_list_comments margin-left responsive_show:desktop">
                          <div class="layout_box_title">
                            <h2>Komentarze</h2>
                          </div>
                          {if $ban.commentdata != "None"}
                            <ul>
                              {foreach from=$ban.commentdata item="commenta"}
                                <li>
                                  <div class="layout_box-child padding">
                                    <div class="ban_list_comments_header">
                                      {if !empty($commenta.comname)}
                                        <span class="text:bold">{$commenta.comname|escape:'html'}</span>
                                      {else}
                                        <span class="text:italic">Admnistrator usunięty</span>
                                      {/if}
                                      <span>{$commenta.added}</span>
                                      {if $commenta.editcomlink != ""}
                                        {$commenta.editcomlink} {$commenta.delcomlink}
                                      {/if}
                                    </div>

                                    <div class="margin-top flex flex-fd:column">
                                      {$commenta.commenttxt}

                                      {if !empty($commenta.edittime)}
                                        <span class="margin-top:half text:italic">
                                          <i class="fas fa-pencil-alt"></i> Last edit
                                          {$commenta.edittime} by {$commenta.editname}
                                        </span>
                                      {/if}
                                    </div>
                                  </div>
                                </li>
                              {/foreach}
                            </ul>
                          {else}
                            <div class="padding">
                              {$ban.commentdata}
                            </div>
                          {/if}
                        </div>
                      {/if}
                    </div>
                    {if $view_comments}
                        {if $ban.commentdata != "None"}
                            <ul class="ban_list_comments responsive_hide:desktop" style="display: contents;">
                                <div class="layout_box_title">
                                    <h2><i class="fa-solid fa-comments"></i> Comments <i style="font-weight: normal;font-size: smaller;">(od najnowszych do najstarszych)</i></h2>
                                </div>
                                <ul>
                                    {foreach from=$ban.commentdata item="commenta"}
                                        <li>
                                            <div class="layout_box-child padding">
                                                <div class="ban_list_comments_header">
                                                    {if !empty($commenta.comname)}
                                                        <span class="text:bold">{$commenta.comname|escape:'html'}</span>
                                                    {else}
                                                        <span class="text:italic">Admnistrator usunięty</span>
                                                    {/if}
                                                    <span>{$commenta.added}</span>
                                                    {if $commenta.editcomlink != ""}
                                                        {$commenta.editcomlink} {$commenta.delcomlink}
                                                    {/if}
                                                </div>            
                                                <div class="margin-top flex flex-fd:column">
                                                    {$commenta.commenttxt}
                                                    {if !empty($commenta.edittime)}
                                                        <span class="margin-top:half text:italic">
                                                            <i class="fas fa-pencil-alt"></i> Last edit
                                                            {$commenta.edittime} by {if !empty($commenta.editname)}{$commenta.editname}{else}<i>Admnistrator usunięty</i>{/if}
                                                        </span>
                                                    {/if}
                                                </div>
                                            </div>
                                        </li>
                                    {/foreach}
                                </ul>
                            {/if}
                        </ul>
                    {/if}
                  </div>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <div class="layout_box padding:half margin-top text:right">
    <span class="text:italic">SourceComms plugin &#038; zintegrowany z SourceBans przez <a
        href="https://github.com/ppalex7" class="text:bold" target="_blank" rel="noopener">Alex</a></span>
  </div>

  <script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>

  {literal}
    <script type="text/javascript">
      window.addEvent('domready', function() {
      {/literal}
      {if $view_bans}
        $('tickswitch').value = 0;
      {/if}
      {literal}
      });
    </script>
  {/literal}
{/if}