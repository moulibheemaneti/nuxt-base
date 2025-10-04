<template>
   <div class="vq-header">
      <h1 class="vq-header__title">Settings</h1>
      <vq-logo class="vq-header__logo" primary-color="#73A9AD" accent-color="#006769" />
   </div>
</template>

<script lang="ts" setup>
import VqLogo from "~/assets/components/VqLogo.vue";
</script>

<style lang="scss">
.vq-header {
   display: flex;
   justify-content: space-between;
   align-items: center;
   color: semantic-color("text-accent");

   &__title {
      animation: slideInFromLeft 0.8s ease-out;
      transform-origin: left center;
   }

   &__logo {
      animation: slideInFromRight 0.8s ease-out;
      transform-origin: right center;
   }
}
</style>
