<template>
  <h1>Dialog 对话框</h1>
  <Demo :component='DialogDemo1' />
</template>

<script lang='ts'>
import Demo from './Demo.vue';
import DialogDemo1 from './DialogDemo1.vue'

export default {
  components: { Demo },
  setup() {
    return {
      DialogDemo1,
    }
  },
}
</script>