{include file='header.tpl'}

<h2>Welcome</h2>
<p><strong><span class='vcard fn org'>libre.fm</span></strong> is a free network service that will allow users to share their
musical tastes with other people.</p>

<h3>Now playing</h3>

<ul id="nowplaying" class="listcloud">
  {section name=np loop=$nowplaying}
   <li>
    <dl>
      <dt><a href="{$nowplaying[np].artisturl}">
        {$nowplaying[np].artist|stripslashes|htmlspecialchars}</a></dt>
      <dd>
{if $nowplaying[np].mbid <> ""}
<a href="http://musicbrainz.org/track/{$nowplaying[np].mbid}.html">
{/if}
{$nowplaying[np].track|stripslashes|htmlspecialchars}
{if $nowplaying[np].mbid <> ""}
</a>
{/if}
</dd>
      <dd><a href="{$nowplaying[np].userurl}">{$nowplaying[np].username|stripslashes|htmlspecialchars}</a></dd>
      <dd>{$nowplaying[np].clientstr}</dd>
    </dl>
    </li>
  {/section}
</ul>

<h3>What's hot? Recently gobbled.</h3>

<ul id="recenttracks" class="listcloud">
  {section name=recent loop=$recenttracks}
   <li>
    <dl>
      <dt><a href="{$recenttracks[recent].artisturl}">
        {$recenttracks[recent].artist|stripslashes|htmlspecialchars}</a></dt>
      <dd>{$recenttracks[recent].track|stripslashes|htmlspecialchars}</dd>
      <dd><a href="{$recenttracks[recent].userurl}">{$recenttracks[recent].username|stripslashes|htmlspecialchars}</a></dd>
    </dl>
    </li>
  {/section}
</ul>
<div class="cleaner">&nbsp;</div>
{include file='footer.tpl'}
