import { createApp } from 'vue'
import App from './App.vue'
import './index.css'
import { createWebHashHistory, createRouter } from 'vue-router'
import Shane from './components/Shane.vue'
import Shane2 from './components/Shane2.vue'

const history = createWebHashHistory()
const router = createRouter({
  history: history,
  routes: [
    { path: '/', component: Shane },
    {path:'/xxx', component: Shane2}
  ],
})

const app = createApp(App)
app.use(router)
app.mount('#app')
