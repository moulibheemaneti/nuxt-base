<template>
   <span class="material-symbols-outlined vq-icon">
      {{ icon.toLowerCase() }}
   </span>
</template>

<script setup lang="ts">
const props = withDefaults(defineProps<{
   icon: string;
   size?: number;
}>(), {
   size: 24,
});

const size = computed(() => `${props.size || 24}px`);
</script>

<style lang="scss">
.material-symbols-outlined {
   font-size: v-bind('size');
   font-variation-settings:
      'FILL' 0,
      'wght' 400,
      'GRAD' 0,
      'opsz' 24
}
</style>
