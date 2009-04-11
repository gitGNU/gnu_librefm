{include file='header.tpl'}

<h2>Welcome</h2>
<p><strong><span class='vcard fn org'>libre.fm</span></strong> is a free network service that will allow users to share their
musical tastes with other people.</p>

<h3>Now playing</h3>

<dl class='now-playing'>
  {section name=np loop=$nowplaying}
    <dt class='artist-name'>
        <a href='{$nowplaying[np].artisturl}'>{$nowplaying[np].artist|stripslashes|htmlspecialchars}</a>
    </dt>
    <dd class='track-name'>
        {if $nowplaying[np].mbid <> ''}
        <a href='http://musicbrainz.org/track/{$nowplaying[np].mbid}.html'>
        {/if}
        {$nowplaying[np].track|stripslashes|htmlspecialchars}
        {if $nowplaying[np].mbid <> ''}
        </a>
        {/if}
    </dd>
    <dd class='username'><a href='{$nowplaying[np].userurl}'>{$nowplaying[np].username|stripslashes|htmlspecialchars}</a></dd>
    <dd>using <span class='gobbler'>{$nowplaying[np].clientstr}</span></dd>
  {/section}
</dl>

<h3>What's hot? Recently gobbled.</h3>

<dl class='recent-tracks'>
  {section name=recent loop=$recenttracks}
      <dd class='artist-name'><a href='{$recenttracks[recent].artisturl}'>
        {$recenttracks[recent].artist|stripslashes|htmlspecialchars}</a>:
      <span class='track-name'>{$recenttracks[recent].track|stripslashes|htmlspecialchars}</span> &mdash;
      <span class='username'><a href='{$recenttracks[recent].userurl}'>{$recenttracks[recent].username|stripslashes|htmlspecialchars}</a></span></dd>

  {/section}
    </dl>
<div class='cleaner'>&nbsp;</div>
{include file='footer.tpl'}
