<template>
  <div>
    导航栏 |
    <router-link to='/'>Shane</router-link> |
    <router-link to='/xxx'>Shane2</router-link>
  </div>
  <hr />
  <router-view />
</template>

<script>

export default {
  name: 'App',
}
</script>
