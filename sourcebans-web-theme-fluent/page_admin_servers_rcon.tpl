-{if NOT $permission_rcon}-
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
-{else}-
<div id="admin-page-content">
  <div class="admin_tab_content_title">
    <h2><i class="fas fa-laptop-code"></i> Konsola RCON</h2>
  </div>

  <div class="padding">
    <div id="rcon" class="form-text form-text:rcron">
      <pre>
        <div id="rcon_con">***********************************************************<br />*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />*&nbsp;Konsola RCON SourceBans&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />*&nbsp;Wpisz polecenie poniżej i naciśnij Enter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />*&nbsp;Wpisz clr, aby wyczyścić konsolę&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*<br />***********************************************************<br />
        </div>
        </pre>
    </div>

    <div class='flex flex-ai:end flex-jc:space-between margin-top'>
      <div class="flex:11 margin-right">
        <label for="cmd" class="form-label form-label:bottom">Polecenie:</label>
        <input type="text" class="form-input form-full" id="cmd" name="cmd" />
      </div>

      <input type="button" onclick="SendRcon();" class="button button-success btn" id="rcon_btn" value="Wyślij">
    </div>
  </div>
</div>

<script>
  $E('html').onkeydown = function(event) {
    var event = new Event(event);
    if (event.key == 'enter') SendRcon();
  };

  function SendRcon() {
    xajax_SendRcon('-{$id}-', $('cmd').value, true);
    $('cmd').value = 'Wykonywanie, proszę czekać...';
    $('cmd').disabled = 'true';
    $('rcon_btn').disabled = 'true';

  }

  var scroll = new Fx.Scroll($('rcon'),{duration: 500, transition: Fx.Transitions.Cubic.easeInOut});
    if (scroll) scroll.toBottom();
  </script>
-{/if}-