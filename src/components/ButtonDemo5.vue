<demo>
加载中状态
</demo>

<template>
  <div>
    <Button loading level='loading'>加载中</Button>
    <Button size="small" loading level='loading'>加载中</Button>
  </div>
</template>

<script lang='ts'>
import Button from '../lib/Button.vue'

export default {
  components: {
    Button
  }
}
</script>