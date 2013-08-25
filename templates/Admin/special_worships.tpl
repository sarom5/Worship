{pageaddvar name='javascript' value='jquery-ui'}
{pageaddvar name='stylesheet' value='javascript/jquery-ui/themes/base/jquery-ui.css'}
{pageaddvar name='javascript' value='javascript/jquery-plugins/jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.js'}
{pageaddvar name='stylesheet' value='javascript/jquery-plugins/jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.css'}

{include file='Admin/Header.tpl' __title='Worships' icon='display'}

<form class="z-form" method="post" action="{modurl modname='Worship' type='Admin' func='specialworshipManage'  id=$day->getDid()}">

	<h2>{gt text="Worships"}</h2>
	<h3><u>{$day->getwDateFormatted()} : {$day->getdtitle()}</u></h3>
	<br/>
		<table class="z-datatable">
			<thead>
				<tr>
					<th>{gt text='ID'}</th>
					<th>{gt text='Title'}</th>
					<th>{gt text='Time'}</th>
					<th>{gt text='Church'}</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				{foreach from=$dayworships item='dayworship'}
					<tr>
						<td>{$dayworship->getWid()}</td>
						<td>{$dayworship->getwtitle()}</td>
						<td>{$dayworship->getwtimeFormatted()}</td>
						<td>{$dayworship->getCname()}</td>
						<td><button onclick="document.getElementById('action').value = 'del'; document.getElementById('id').value = {$dayworship->getWid()};">{img src='14_layer_deletelayer.png' modname='core' set='icons/extrasmall'}</button></td>
					</tr>
				{/foreach}
				<tr> 
					<td></td>
					<td><input type="text" name="intitle" id="intitle"/></td>
					<td><input type="text" name="intime" id="intime"/></td>
					<script>
						jQuery(function() {
							/*jQuery('#indate').datetimepicker({
							  dateFormat: 'dd.mm.yy',
							  separator: ' ',
							  minDate: new Date()
							});*/
						});
					</script>
					<td>{modapifunc modname='Worship' type='Admin' func='getChurchSelector' name='inchurch'}{*<input type="text" name="inchurch" />*}</td>
					<td>
						<button onclick="document.getElementById('action').value = 'add';">{img src='button_ok.png' modname='core' set='icons/extrasmall'}</button>
						<button onclick="document.getElementById('action').value = ''">{img src='button_cancel.png' modname='core' set='icons/extrasmall'}</button>
					</td>
				</tr>
			</tbody>
		</table>
		<button onclick="document.getElementById('action').value = 'back';">{img src='1leftarrow_inactive.png' modname='core' set='icons/extrasmall'}{gt text="Back to special days"}</button>
	<input name="action" id="action" type="hidden" />
	<input name="id" id="id" type="hidden" />
</form>

{include file='Admin/Footer.tpl'} 
