<main>
  <div class="layout_topBar">
    <div class="layout_container flex flex-jc:end flex-ai:center">
      <ul class="SocialMedia layout_topBar_action flex">
        <li>
          <button id="user_action_change_dark" aria-label="Tryb ciemny"><i class="fas fa-moon"></i></button>
        </li>
        <li class="jscolor_li">
          <button data-jscolor aria-label="Kolor"></button>
        </li>
        <li id="jscolor_reset" class="jscolor_li" style="display: none;">
          <button aria-label="Resetuj kolor"><i class="fa fa-refresh"></i></button>
        </li>
        
<!-- Remove the comments balise if you to enable some SocialMedia Icons -->
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://steamcommunity.com/groups/bastion-cs" rel="noopener" title="Nasza grupa Steam">
              <i class="fab fa-steam-symbol"></i>
            </a>
          </li>

          <li class="responsive_show:desktop">
            <a target="_blank" href="https://www.facebook.com/ostatnibastion.csgo" rel="noopener" data-ipstooltip="" _title="Obserwuj nas na Facebooku">
              <i class="fab fa-facebook"></i>
            </a>
          </li>

          <li class="responsive_show:desktop">
            <a target="_blank" href="https://x.com/bastion_cs" rel="noopener" data-ipstooltip="" _title="Obserwuj nas na X.com">
              <i class="fab fa-twitter"></i>
            </a>
          </li>
        
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://www.instagram.com/ostatnibastion_csgo" rel="noopener" data-ipstooltip="" _title="Obserwuj nas na Instagramie">
              <i class="fab fa-instagram"></i>
            </a>
          </li>

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://www.twitch.tv/zevent" rel="noopener" data-ipstooltip="" _title="Obserwuj nas na Twitchu">
              <i class="fab fa-twitch"></i>
            </a>
          </li>
        -->

          <li class="responsive_show:desktop">
            <a target="_blank" href="https://discord.com/invite/6Ys5924B" rel="noopener" data-ipstooltip="" _title="Dołącz do nas na Discordzie">
              <i class="fab fa-discord"></i>
            </a>
          </li>

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://telegram.org/" rel="noopener" data-ipstooltip="" _title="Dołącz do nas na Telegramie">
              <i class="fab fa-telegram"></i>
            </a>
          </li>
        -->

        <!--
          <li class="responsive_show:desktop">
            <a target="_blank" href="https://youtube.com/embed/dQw4w9WgXcQ?rel=0;&amp;autoplay=1" rel="noopener" data-ipstooltip="" _title="Obserwuj nas na YouTube">
              <i class="fab fa-youtube"></i>
            </a>
          </li>
        -->
      </ul>

      <ul class="layout_topBar_userBar responsive_show:desktop flex flex-ai:center">
        {if $login}
          <li class="margin-right">
            Witaj, <a href='index.php?p=account'><i class="fas fa-user"></i> {$username}</a>
          </li>
          <li>
            <a class="button button-important" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i>
               Wyloguj się</a>
          </li>
        {else}
          <li>
            <a class="button button-success" href='index.php?p=login'>Masz konto? Zaloguj się</a>
          </li>
        {/if}
      </ul>

      <button id="button_mobile_open" class="nav_mobile_open responsive_hide:desktop" aria-label="Otwórz menu mobilne">
        <i class="fas fa-bars"></i>
      </button>
    </div>
  </div>

  <div id="layout_mobile" class="nav_mobile">
    <button id="button_mobile_close" class="nav_mobile_close" aria-label="Zamknij menu mobilne">
      <i class="fas fa-times"></i>
    </button>
    <div class="nav_mobile_content">

      <div class="nav_mobile_tab_top padding flex">
        {if $login}
          <a class="button button-important button:full" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i>
            Logout</a>
        {else}
          <a class="button button-success button:full" href='index.php?p=login'>Masz konto? Zaloguj się</a>
        {/if}
      </div>
      <nav class="nav_mobile_tab_nav">
        <ul>
            {foreach from=$navbar item="nav"}
                <li class="{$nav.state}">
                    <a href="index.php?p={$nav.endpoint}" data-nav="{$nav.endpoint}">
                        {$nav.title}
                    </a>
                </li>
            {/foreach}
		    {if $isAdmin}
                {foreach from=$adminbar item="admin"}
			        <li class="{$nav.state}">
				        <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">
					        {$admin.title}
				        </a>
			        </li>
                {/foreach}	
            {/if}
        </ul>
      </nav>

    </div>
    <div class="nav_mobile_background"></div>
  </div>

    <nav id="navBar" class="nav responsive_show:desktop">
        <div class="nav_tab">
            <ul>
                {if $login}
                    <li class="margin-right">
                        <a href='index.php?p=account'><i class="fa-solid fa-gear"></i> Ustawienia konta</a>
                    </li>
                {/if}
                    {foreach from=$navbar item="nav"}
                    <li class="{$nav.state}">
                        <a href="index.php?p={$nav.endpoint}" data-nav="{$nav.endpoint}">
                        {$nav.title}
                        </a>
                    </li>
                    {/foreach}
                {if $isAdmin}
                    {foreach from=$adminbar item="admin"}
                        <li class="{$nav.state}">
                            <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">
                                {$admin.title}
                            </a>
                        </li>
                    {/foreach}	
                {/if}
            </ul>
        </div>
  </nav>
  <div id="mainwrapper" class="layout_body flex:11">
