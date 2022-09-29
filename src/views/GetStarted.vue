<template>
 <article
   class='markdown-body'
   v-html='getStartedMd'
 >
 </article>
</template>

<script>
import getStartedMd from '../markdown/get-started.md'

export default {
  data() {
    return {
      getStartedMd
    }
  }
}
</script>