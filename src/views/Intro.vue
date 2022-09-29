<template>
  <article
    class='markdown-body'
    v-html='introMd'
  >
  </article>
</template>

<script lang='ts'>
import introMd from '../markdown/intro.md';

export default {
  data() {
    return { introMd }
  },
}
</script>