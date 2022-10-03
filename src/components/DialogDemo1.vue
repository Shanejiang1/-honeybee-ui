<demo>
基本用法
</demo>

<template>
  <div>
    <Button @click='toggle' level='main'>打开对话框</Button>
    <Dialog
      v-model:visible='visibleDialog'
      :closeOnClickOverlay='false'
      :ok='f1'
      :cancel='f2'
    >
      <template v-slot:content>
        <div>对话框的内容...</div>
        <div>对话框的内容...</div>
        <div>对话框的内容...</div>
      </template>
      <template v-slot:title>
        <strong>标题</strong>
      </template>
    </Dialog>
  </div>
</template>

<script lang='ts'>
import Dialog from '../lib/Dialog.vue'
import Button from '../lib/Button.vue';
import { ref } from 'vue';

export default {
  components: { Button, Dialog },
  setup() {
    const visibleDialog = ref(false)
    const toggle = () => {
      visibleDialog.value = !visibleDialog.value
    }
    const f1 = () => {}
    const f2 = () => {}
    return {
      visibleDialog,
      toggle,
      f1,
      f2,
    }
  },
}
</script>