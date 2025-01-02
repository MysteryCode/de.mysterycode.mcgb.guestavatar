{if MCGB_ENTRY_GUEST_AVATAR_CUSTOM}
	<div class="userAvatar mcgbGuestAvatar">
		<img src="{unsafe:MCGB_ENTRY_GUEST_AVATAR_CUSTOM}" style="width: 128px; height: 128px" alt="" class="userAvatarImage">
	</div>
{/if}

{if !$___guestAvatarJsInitated|isset}
	<script data-relocate="true">
      require([], function() {
        document.querySelectorAll('[data-user-id=""] .mcgbGuestAvatar + .userAvatar:not(.mcgbGuestAvatar)').forEach((element) => {
          element.remove();
        });
      });
	</script>
	{assign var='___guestAvatarJsInitated' value=true}
{/if}
