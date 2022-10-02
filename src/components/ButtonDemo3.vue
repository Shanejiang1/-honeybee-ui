<demo>
危险按钮
</demo>

<template>
  <div>
    <div>
      <Button level="danger">危险按钮</Button>
      <Button theme="text" level="danger">文本按钮</Button>
      <Button theme="link" level="danger">链接按钮</Button>
    </div>
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