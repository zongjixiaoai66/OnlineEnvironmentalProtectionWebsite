import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

     import users from '@/views/modules/users/list'
    import binweishengwu from '@/views/modules/binweishengwu/list'
    import binweishengwuCollection from '@/views/modules/binweishengwuCollection/list'
    import binweishengwuLiuyan from '@/views/modules/binweishengwuLiuyan/list'
    import dictionary from '@/views/modules/dictionary/list'
    import forum from '@/views/modules/forum/list'
    import huanbaojiankang from '@/views/modules/huanbaojiankang/list'
    import huanbaojiankangCollection from '@/views/modules/huanbaojiankangCollection/list'
    import huanbaojiankangLiuyan from '@/views/modules/huanbaojiankangLiuyan/list'
    import huanjingbaohu from '@/views/modules/huanjingbaohu/list'
    import huanjingbaohuCollection from '@/views/modules/huanjingbaohuCollection/list'
    import huanjingbaohuLiuyan from '@/views/modules/huanjingbaohuLiuyan/list'
    import huanjingbaohufa from '@/views/modules/huanjingbaohufa/list'
    import news from '@/views/modules/news/list'
    import yonghu from '@/views/modules/yonghu/list'
    import config from '@/views/modules/config/list'
    import dictionaryAddress from '@/views/modules/dictionaryAddress/list'
    import dictionaryBinweishengwuCollection from '@/views/modules/dictionaryBinweishengwuCollection/list'
    import dictionaryForumState from '@/views/modules/dictionaryForumState/list'
    import dictionaryHuanbaojiankang from '@/views/modules/dictionaryHuanbaojiankang/list'
    import dictionaryHuanbaojiankangCollection from '@/views/modules/dictionaryHuanbaojiankangCollection/list'
    import dictionaryHuanjingbaohuCollection from '@/views/modules/dictionaryHuanjingbaohuCollection/list'
    import dictionaryHuanjingbaohufa from '@/views/modules/dictionaryHuanjingbaohufa/list'
    import dictionaryNews from '@/views/modules/dictionaryNews/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    } ,{
        path: '/users',
        name: '管理信息',
        component: users
      }
    ,{
        path: '/dictionaryAddress',
        name: '地区',
        component: dictionaryAddress
    }
    ,{
        path: '/dictionaryBinweishengwuCollection',
        name: '收藏表类型',
        component: dictionaryBinweishengwuCollection
    }
    ,{
        path: '/dictionaryForumState',
        name: '帖子状态',
        component: dictionaryForumState
    }
    ,{
        path: '/dictionaryHuanbaojiankang',
        name: '环保健康类型',
        component: dictionaryHuanbaojiankang
    }
    ,{
        path: '/dictionaryHuanbaojiankangCollection',
        name: '收藏表类型',
        component: dictionaryHuanbaojiankangCollection
    }
    ,{
        path: '/dictionaryHuanjingbaohuCollection',
        name: '收藏表类型',
        component: dictionaryHuanjingbaohuCollection
    }
    ,{
        path: '/dictionaryHuanjingbaohufa',
        name: '保护法类型',
        component: dictionaryHuanjingbaohufa
    }
    ,{
        path: '/dictionaryNews',
        name: '公告类型',
        component: dictionaryNews
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/binweishengwu',
        name: '濒危生物',
        component: binweishengwu
      }
    ,{
        path: '/binweishengwuCollection',
        name: '濒危生物收藏',
        component: binweishengwuCollection
      }
    ,{
        path: '/binweishengwuLiuyan',
        name: '濒危生物留言',
        component: binweishengwuLiuyan
      }
    ,{
        path: '/dictionary',
        name: '字典表',
        component: dictionary
      }
    ,{
        path: '/forum',
        name: '论坛',
        component: forum
      }
    ,{
        path: '/huanbaojiankang',
        name: '环保健康',
        component: huanbaojiankang
      }
    ,{
        path: '/huanbaojiankangCollection',
        name: '环保健康收藏',
        component: huanbaojiankangCollection
      }
    ,{
        path: '/huanbaojiankangLiuyan',
        name: '环保健康留言',
        component: huanbaojiankangLiuyan
      }
    ,{
        path: '/huanjingbaohu',
        name: '环境保护',
        component: huanjingbaohu
      }
    ,{
        path: '/huanjingbaohuCollection',
        name: '环境保护收藏',
        component: huanjingbaohuCollection
      }
    ,{
        path: '/huanjingbaohuLiuyan',
        name: '环境保护留言',
        component: huanjingbaohuLiuyan
      }
    ,{
        path: '/huanjingbaohufa',
        name: '环境保护法',
        component: huanjingbaohufa
      }
    ,{
        path: '/news',
        name: '公告信息',
        component: news
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
