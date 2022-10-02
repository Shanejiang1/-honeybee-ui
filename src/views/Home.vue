<template>
  <div>
    <div class='topnavAndBanner'>
      <Topnav />
      <div class='banner'>
        <h1>蜜蜂UI</h1>
        <h2>一个 Vue 3 的 UI 框架</h2>
        <p class='actions'>
          <router-link to='/doc'>开始使用</router-link>
          <a href='https://github.com' class='actions-git'>GitHub</a>
        </p>
      </div>
    </div>

    <div class='features'>
      <ul>
        <li>
          <svg class='icon'>
            <use xlink:href='#icon-Vue'></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>使用了 Vue 3 Composition API</p>
        </li>


        <li>
          <svg class='icon'>
            <use xlink:href='#icon-ts'></use>
          </svg>
          <h3>基于 TypeScript</h3>
          <p>源代码采用 TypeScript 书写</p>
        </li>

        <li>
          <svg class='icon'>
            <use xlink:href='#icon-rocket'></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>


    </div>
  </div>
</template>

<script lang='ts'>
import Topnav from '../components/Topnav.vue';

export default {
  components: { Topnav },
}
</script>

<style lang='scss' scoped>
$green: #0170fe;
$border-radius: 24px;
$color: #1a2b3b;

.topnavAndBanner {
  background-color: #f2f9ff;
  //background: linear-gradient(145deg, rgba(227, 255, 253, 1) 0%, rgba(183, 233, 230, 1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}

.features {
  margin: 64px auto;
  padding: 0 16px;

  @media (min-width: 800px) {
    width: 800px;

    > ul {
      > li {
        width: 50%;
      }
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;

    > ul {
      > li {
        width: 33.3333%;
      }
    }
  }

  > ul {
    display: flex;
    flex-wrap: wrap;

    > li {
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        'icon title'
        'icon text';
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;

      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }

      > h3 {
        grid-area: title;
        font-size: 28px;
      }

      > p {
        grid-area: text;
      }
    }
  }
}

.banner {
  color: $color;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;

  > .actions {
    padding: 8px 0;

    .actions-git{
      color: #0170fe;
      background: #fafdff;
      border-style: solid;
      border-color: #0170fe;
    }

    a {
      border: 1px solid $green;
      margin: 0 8px;
      background: $green;
      color: #ffffff;
      display: inline-block;
      padding: 8px 24px;
      border-radius: $border-radius;

      &:hover {
        text-decoration: none;
      }
    }
  }
}

</style>

