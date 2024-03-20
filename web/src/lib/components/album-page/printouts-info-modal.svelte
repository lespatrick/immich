<script lang="ts">
    import { createEventDispatcher, onMount } from 'svelte';
    import { getAlbumInfo, type AlbumResponseDto } from '@immich/sdk';
    import BaseModal from '../shared-components/base-modal.svelte';
    
    export let album: AlbumResponseDto;
    
    let smallCopiesNames: string[];
    let mediumCopiesNames: string[];
    let largeCopiesNames: string[];
    
    const dispatch = createEventDispatcher<{
      remove: string;
      close: void;
    }>();
    
    const formatFileNameWithCopies = (fileName: string, copies: number): string => {
      if (copies > 1) {
        return fileName + ' (' + copies + ')';
      }
      return fileName;
    };
    
    $: (async() => {
      const { assets } = await getAlbumInfo({ id: album.id });
  
      smallCopiesNames = assets
      .filter((x) => x.smallCopies > 0)
      .map((x) => formatFileNameWithCopies(x.originalFileName, x.smallCopies));
      
      mediumCopiesNames = assets
      .filter((x) => x.mediumCopies > 0)
      .map((x) => formatFileNameWithCopies(x.originalFileName, x.mediumCopies));
      
      largeCopiesNames = assets
      .filter((x) => x.largeCopies > 0)
      .map((x) => formatFileNameWithCopies(x.originalFileName, x.largeCopies));
      
    })();
    
  </script>
  
  <BaseModal on:close={() => dispatch('close')}>
    <svelte:fragment slot="title">
    <span class="flex place-items-center gap-2">
      <p class="font-medium text-immich-fg dark:text-immich-dark-fg">Printouts</p>
    </span>
  </svelte:fragment>
  
    <div class="gap-4 p-5">
      {#if (smallCopiesNames)}
      <p class="m-4 font-medium">10x15</p>
      {#each smallCopiesNames as copy}
      <p>{copy}</p>
      {/each}
      {/if}
      {#if (mediumCopiesNames)}
      <p class="m-4 font-medium">15x21</p>
      {#each mediumCopiesNames as copy}
      <p>{copy}</p>
      {/each}
      {/if}
      {#if (largeCopiesNames)}
      <p class="m-4 font-medium">21x30</p>
      {#each largeCopiesNames as copy}
      <p>{copy}</p>
      {/each}
      {/if}
    </div>
  </BaseModal>
