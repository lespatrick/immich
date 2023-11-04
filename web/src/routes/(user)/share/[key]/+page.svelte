<script lang="ts">
  import AlbumViewer from '$lib/components/album-page/album-viewer.svelte';
  import IndividualSharedViewer from '$lib/components/share-page/individual-shared-viewer.svelte';
  import { SharedLinkType } from '@api';
  import type { PageData } from './$types';
  import BaseModal from '$lib/components/shared-components/base-modal.svelte';
  import Button from '$lib/components/elements/buttons/button.svelte';
  import LoadingSpinner from '$lib/components/shared-components/loading-spinner.svelte';
  import FullscreenContainer from '$lib/components/shared-components/fullscreen-container.svelte';
  import { serverConfig } from '$lib/stores/server-config.store';
  
  export let data: PageData;
  const { sharedLink } = data;

  let password = '';
  let loading = false;
  
  let isOwned = data.user ? data.user.id === sharedLink.userId : false;
</script>

{#if sharedLink.passwordProtected == true && isOwned == false}
<FullscreenContainer title={data.meta.title} showMessage={!!$serverConfig.loginPageMessage}>
    <form class="mt-5 flex flex-col gap-5">
      <div class="flex flex-col gap-2">
        <label class="immich-form-label" for="password">Password</label>
        <input
          class="immich-form-input"
          id="password"
          name="password"
          type="password"
          autocomplete="current-password"
          bind:value={password}
          required
        />
      </div>
  
      <div class="my-5 flex w-full">
        <Button type="submit" size="lg" fullwidth disabled={loading}>
          {#if loading}
            <span class="h-6">
              <LoadingSpinner />
            </span>
          {:else}
            Login
          {/if}
        </Button>
      </div>
    </form>
</FullscreenContainer>
{/if}

{#if sharedLink.passwordProtected == false || isOwned}
  {#if sharedLink.type == SharedLinkType.Album}
    <AlbumViewer {sharedLink} />
  {/if}

  {#if sharedLink.type == SharedLinkType.Individual}
    <div class="immich-scrollbar">
      <IndividualSharedViewer {sharedLink} {isOwned} />
    </div>
  {/if}
{/if}
