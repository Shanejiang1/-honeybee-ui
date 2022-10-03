<demo>
基础用法
</demo>

<template>
  <Tabs v-model:selected='x'>
    <Tab title='标签 1'>标签的内容 1</Tab>
    <Tab title='标签 2'>标签的内容 2</Tab>
    <Tab title='标签 3'>标签的内容 3</Tab>
  </Tabs>
</template>

<script lang='ts'>
import Tabs from '../lib/Tabs.vue'
import Tab from '../lib/Tab.vue'
import { ref } from 'vue';

export default {
  components: {
    Tabs,
    Tab,
  },
  setup() {
    const x = ref('标签 1')
    return { x }
  },
}

</script>