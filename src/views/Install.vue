<template>
  <article
    class='markdown-body'
    v-html='installMd'
  >
  </article>
</template>

<script>
import installMd from '../markdown/install.md'

export default {
  data() {
    return {
      installMd
    }
  }
}
</script>