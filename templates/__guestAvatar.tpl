{if MCGB_ENTRY_GUEST_AVATAR_CUSTOM}
	<div class="userAvatar mcgbGuestAvatar">
		<img src="{@MCGB_ENTRY_GUEST_AVATAR_CUSTOM}" style="width: 128px; height: 128px" alt="" class="userAvatarImage">
	</div>
{/if}

{if !$___guestAvatarJsInitated|isset}
	<script>
		$(function () {
			$('[data-user-id=""] .mcgbGuestAvatar+.userAvatar:not(.mcgbGuestAvatar)').remove();
		})
	</script>
	{assign var='___guestAvatarJsInitated' value=true}
{/if}
