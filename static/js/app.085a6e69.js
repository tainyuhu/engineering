(function(){var e={5603:function(e,t,n){"use strict";var o=n(9374);const r=o.Z.create({baseURL:"http://127.0.0.1:8000/"});r.interceptors.request.use((e=>{const t=localStorage.getItem("access_token");return t&&(e.headers.Authorization=`Bearer ${t}`),e}),(e=>Promise.reject(e))),t.Z=r},7970:function(e,t,n){"use strict";var o=n(9963),r=n(6252),a=n(3577),i=n(2262),s=(n(560),n(5694)),u=n(5317),c=n(2139),l=n(7506),m=n(9003),d=n(7737),f=n(3378),h=n(5082),g=n(3881);const p={class:"font-weight-black text-black text-h6"},v={class:"font-weight-bold"},b={name:"Navigation",methods:{logout(){this.$store.dispatch("auth/logout"),this.$router.push({name:"Login"})}}};var k=Object.assign(b,{setup(e){const t=localStorage.getItem("user"),n=((0,i.iH)("mdi"),(0,i.iH)([{title:"首頁",icon:u.vgA,routeName:"home"},{title:"工程進度總覽",icon:u.Qk0,routeName:"Browse_Project_Progress"},{title:"工程進度填寫",icon:u.Qk0,routeName:"Fillin_Project_Progress"}]));return(e,o)=>((0,r.wg)(),(0,r.iD)("div",null,[(0,r.Wm)(g.C,{color:"grey-lighten-4",class:"px-6 py-8"},{default:(0,r.w5)((()=>[(0,r.Wm)(m.o,{align:"center",style:{"column-gap":"0.5rem"}},{default:(0,r.w5)((()=>[(0,r.Wm)(c.V,{color:"grey-darken-2",size:"48"},{default:(0,r.w5)((()=>[(0,r.Wm)(d.t,{icon:"mdi-account"})])),_:1}),(0,r._)("h6",p,(0,a.zw)((0,i.SU)(t)),1)])),_:1})])),_:1}),(0,r.Wm)(l.J),(0,r.Wm)(f.i,null,{default:(0,r.w5)((()=>[((0,r.wg)(!0),(0,r.iD)(r.HY,null,(0,r.Ko)(n.value,(e=>((0,r.wg)(),(0,r.j4)(h.l,{link:"",nav:"",key:e["title"],to:{name:e["routeName"]},value:e["routeName"],"active-class":"bg-primary white--text font-weight-black"},{prepend:(0,r.w5)((()=>[(0,r.Wm)((0,i.SU)(s.Z),{type:"mdi",path:e["icon"],class:"mr-2"},null,8,["path"])])),default:(0,r.w5)((()=>[(0,r._)("h3",v,(0,a.zw)(e["title"]),1)])),_:2},1032,["to","value"])))),128))])),_:1}),(0,r.Wm)(l.J),(0,r._)("div",null,[(0,r._)("button",{onClick:o[0]||(o[0]=(...t)=>e.logout&&e.logout(...t))},"登出")])]))}});const w=k;var y=w,_=n(1457),j=n(2683),P=n(4520),O=n(4806),T=n(9289),C=n(3890);const N={name:"Navigation",components:{Navigation:y},created(){const e=localStorage.getItem("access_token");e&&this.$store.commit("auth/setToken",e)},computed:{isAuthenticated(){return this.$store.getters["auth/isAuthenticated"]}}};var A=Object.assign(N,{setup(e){const t=(0,i.iH)(null),n=(0,i.iH)("工程進度系統");return(e,o)=>{const i=(0,r.up)("router-view");return(0,r.wg)(),(0,r.j4)(_.q,{id:"inspire"},{default:(0,r.w5)((()=>[e.isAuthenticated?((0,r.wg)(),(0,r.j4)(C.V,{key:0,modelValue:t.value,"onUpdate:modelValue":o[0]||(o[0]=e=>t.value=e)},{default:(0,r.w5)((()=>[(0,r.Wm)(y)])),_:1},8,["modelValue"])):(0,r.kq)("",!0),(0,r.Wm)(j.L,null,{default:(0,r.w5)((()=>[(0,r.Wm)(P.g,{onClick:o[1]||(o[1]=e=>t.value=!t.value)}),(0,r.Wm)(O.o,{class:"text-h4 font-weight-bold"},{default:(0,r.w5)((()=>[(0,r.Uk)((0,a.zw)(n.value),1)])),_:1})])),_:1}),(0,r.Wm)(T.O,null,{default:(0,r.w5)((()=>[((0,r.wg)(),(0,r.j4)(r.Ob,null,[e.$route.meta.keepAlive?((0,r.wg)(),(0,r.j4)(i,{key:0})):(0,r.kq)("",!0)],1024)),e.$route.meta.keepAlive?(0,r.kq)("",!0):((0,r.wg)(),(0,r.j4)(i,{key:0}))])),_:1})])),_:1})}}});const S=A;var L=S,E=n(2201),F=n(9374);function x(e){return()=>n(2513)(`./${e}.vue`)}const W=[{path:"/",name:"home",component:x("Home"),meta:{requiresAuth:!0}},{path:"/login",name:"Login",component:x("Login")},{path:"/Browse_Project_Progress",name:"Browse_Project_Progress",component:x("Browse_Project_Progress"),meta:{requiresAuth:!0}},{path:"/Fillin_Project_Progress",name:"Fillin_Project_Progress",component:x("Fillin_Project_Progress"),meta:{requiresAuth:!0}},{path:"/:pathMatch(.*)*",name:"404NotFound",component:x("404NotFound")}],q=(0,E.p7)({history:(0,E.PO)("/"),routes:W});q.beforeEach(((e,t,n)=>{const o=localStorage.getItem("access_token"),r=localStorage.getItem("user");"Login"===e.name&&o?n({name:"home"}):(e.matched.some((e=>e.meta.requiresAuth))&&(o?F.Z.get("/api/check_permission/",{params:{auth:r,resource:e.path,action:"read"}}).then((t=>{console.log("response:",t.data.permission),t.data.permission?n({path:e.path}):n({name:"Login"})})):n({name:"Login"})),n())}));var B=q,H=n(3907),$={namespaced:!0,state:{accessToken:null},getters:{isAuthenticated(e){return!!e.accessToken}},mutations:{setToken(e,t){console.log("Setting token:",t),e.accessToken=t},clearToken(e){e.accessToken=null,localStorage.removeItem("access_token")}},actions:{logout({commit:e}){e("clearToken")}}};const z=(0,H.MT)({modules:{auth:$},state:{},getters:{},mutations:{},actions:{}});var U=z,I={checkPermission(e,t,n){return F.Z.get("/api/check_permission/",{params:{auth:e,resource:t,action:n}}).then((e=>e.data.permission)).catch((e=>(console.error("权限检查失败:",e),!1)))}},Z=n(5603),D=(n(6767),n(1291)),M=n(6436),V=n(6300),J=n(2346),K=n(1251),Q=n(8145),R=n(9812);const Y={defaultSet:"mdi",aliases:K.j,sets:{mdi:K.t}},G=(0,D.Rd)({components:{...M,...J},date:{adapter:Q.C},locale:{locale:"zhHant",fallback:"zhHant",messages:{zhHant:R.Z}},directives:V,icons:Y,theme:{defaultTheme:"myCustomTheme",themes:{myCustomTheme:{dark:!1,colors:{primary:"#0984e3",secondary:"#FB8C00",pvgreen:"#00b894",breeding:"#0984e3"}}}}}),X=(0,o.ri)(L);X.use(B),X.use(U),X.use(G),X.config.productionTip=!1,X.config.devtools=!0,X.config.globalProperties.$http=Z.Z,X.config.globalProperties.$permissionCheck=I,X.mount("#app")},2513:function(e,t,n){var o={"./404NotFound.vue":[5672,672],"./Browse_Project_Progress.vue":[7219,219],"./Fillin_Project_Progress.vue":[1099,99],"./Home.vue":[5620,620],"./Login.vue":[3221,221],"./Test.vue":[8223,223]};function r(e){if(!n.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],r=t[0];return n.e(t[1]).then((function(){return n(r)}))}r.keys=function(){return Object.keys(o)},r.id=2513,e.exports=r}},t={};function n(o){var r=t[o];if(void 0!==r)return r.exports;var a=t[o]={exports:{}};return e[o].call(a.exports,a,a.exports,n),a.exports}n.m=e,function(){var e=[];n.O=function(t,o,r,a){if(!o){var i=1/0;for(l=0;l<e.length;l++){o=e[l][0],r=e[l][1],a=e[l][2];for(var s=!0,u=0;u<o.length;u++)(!1&a||i>=a)&&Object.keys(n.O).every((function(e){return n.O[e](o[u])}))?o.splice(u--,1):(s=!1,a<i&&(i=a));if(s){e.splice(l--,1);var c=r();void 0!==c&&(t=c)}}return t}a=a||0;for(var l=e.length;l>0&&e[l-1][2]>a;l--)e[l]=e[l-1];e[l]=[o,r,a]}}(),function(){n.d=function(e,t){for(var o in t)n.o(t,o)&&!n.o(e,o)&&Object.defineProperty(e,o,{enumerable:!0,get:t[o]})}}(),function(){n.f={},n.e=function(e){return Promise.all(Object.keys(n.f).reduce((function(t,o){return n.f[o](e,t),t}),[]))}}(),function(){n.u=function(e){return"static/js/"+e+"."+{99:"d3a5fbbd",219:"7daca3ed",221:"7d6a7864",223:"2488b70b",620:"98a2268c",672:"a95072c0"}[e]+".js"}}(),function(){n.miniCssF=function(e){return"static/css/"+e+"."+{99:"dede6d1b",219:"9673fb84",221:"d6009e8c",223:"8ca3cd78",620:"4abe30ab"}[e]+".css"}}(),function(){n.g=function(){if("object"===typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(e){if("object"===typeof window)return window}}()}(),function(){n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)}}(),function(){var e={},t="frontend:";n.l=function(o,r,a,i){if(e[o])e[o].push(r);else{var s,u;if(void 0!==a)for(var c=document.getElementsByTagName("script"),l=0;l<c.length;l++){var m=c[l];if(m.getAttribute("src")==o||m.getAttribute("data-webpack")==t+a){s=m;break}}s||(u=!0,s=document.createElement("script"),s.charset="utf-8",s.timeout=120,n.nc&&s.setAttribute("nonce",n.nc),s.setAttribute("data-webpack",t+a),s.src=o),e[o]=[r];var d=function(t,n){s.onerror=s.onload=null,clearTimeout(f);var r=e[o];if(delete e[o],s.parentNode&&s.parentNode.removeChild(s),r&&r.forEach((function(e){return e(n)})),t)return t(n)},f=setTimeout(d.bind(null,void 0,{type:"timeout",target:s}),12e4);s.onerror=d.bind(null,s.onerror),s.onload=d.bind(null,s.onload),u&&document.head.appendChild(s)}}}(),function(){n.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})}}(),function(){n.p="/"}(),function(){if("undefined"!==typeof document){var e=function(e,t,n,o,r){var a=document.createElement("link");a.rel="stylesheet",a.type="text/css";var i=function(n){if(a.onerror=a.onload=null,"load"===n.type)o();else{var i=n&&("load"===n.type?"missing":n.type),s=n&&n.target&&n.target.href||t,u=new Error("Loading CSS chunk "+e+" failed.\n("+s+")");u.code="CSS_CHUNK_LOAD_FAILED",u.type=i,u.request=s,a.parentNode&&a.parentNode.removeChild(a),r(u)}};return a.onerror=a.onload=i,a.href=t,n?n.parentNode.insertBefore(a,n.nextSibling):document.head.appendChild(a),a},t=function(e,t){for(var n=document.getElementsByTagName("link"),o=0;o<n.length;o++){var r=n[o],a=r.getAttribute("data-href")||r.getAttribute("href");if("stylesheet"===r.rel&&(a===e||a===t))return r}var i=document.getElementsByTagName("style");for(o=0;o<i.length;o++){r=i[o],a=r.getAttribute("data-href");if(a===e||a===t)return r}},o=function(o){return new Promise((function(r,a){var i=n.miniCssF(o),s=n.p+i;if(t(i,s))return r();e(o,s,null,r,a)}))},r={143:0};n.f.miniCss=function(e,t){var n={99:1,219:1,221:1,223:1,620:1};r[e]?t.push(r[e]):0!==r[e]&&n[e]&&t.push(r[e]=o(e).then((function(){r[e]=0}),(function(t){throw delete r[e],t})))}}}(),function(){var e={143:0};n.f.j=function(t,o){var r=n.o(e,t)?e[t]:void 0;if(0!==r)if(r)o.push(r[2]);else{var a=new Promise((function(n,o){r=e[t]=[n,o]}));o.push(r[2]=a);var i=n.p+n.u(t),s=new Error,u=function(o){if(n.o(e,t)&&(r=e[t],0!==r&&(e[t]=void 0),r)){var a=o&&("load"===o.type?"missing":o.type),i=o&&o.target&&o.target.src;s.message="Loading chunk "+t+" failed.\n("+a+": "+i+")",s.name="ChunkLoadError",s.type=a,s.request=i,r[1](s)}};n.l(i,u,"chunk-"+t,t)}},n.O.j=function(t){return 0===e[t]};var t=function(t,o){var r,a,i=o[0],s=o[1],u=o[2],c=0;if(i.some((function(t){return 0!==e[t]}))){for(r in s)n.o(s,r)&&(n.m[r]=s[r]);if(u)var l=u(n)}for(t&&t(o);c<i.length;c++)a=i[c],n.o(e,a)&&e[a]&&e[a][0](),e[a]=0;return n.O(l)},o=self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[];o.forEach(t.bind(null,0)),o.push=t.bind(null,o.push.bind(o))}();var o=n.O(void 0,[998],(function(){return n(7970)}));o=n.O(o)})();
//# sourceMappingURL=app.085a6e69.js.map