(function(){var e={5603:function(e,t,r){"use strict";var o=r(5121);const n=o.Z.create({baseURL:"/"});n.interceptors.request.use((e=>{const t=localStorage.getItem("access_token");return t&&(e.headers.Authorization=`Bearer ${t}`),e}),(e=>Promise.reject(e))),t.Z=n},4437:function(e,t,r){"use strict";var o=r(9963),n=r(6252),a=r(3577),i=r(2262),s=(r(560),r(1719),r(2139)),u=r(9095),l=r(5215),c=r(7695),d=r(5911),m=r(6334),p=r(9474),_=r(7506),g=r(9003),f=r(4007),h=r(7737),w=r(3378),v=r(5082),P=r(6736),y=r(3881);const b=e=>((0,n.dD)("data-v-30b55fc2"),e=e(),(0,n.Cn)(),e),k=b((()=>(0,n._)("div",{class:"extra-decor"},null,-1))),A={class:"font-weight-black text-black text-h6"},N={name:"Navigation",data:()=>({showDialog:!1,setting:[["通知設定","mdi-bell-ring","Notification_Settings"],["帳戶管理","mdi-account-circle","Account_Management"]],help:[["使用指南","mdi-book-open-page-variant","User_Guide"],["常見問題","mdi-help-circle","FAQ"],["聯繫支持","mdi-lifebuoy","Contact_Support"]]}),methods:{logout(){this.showDialog=!0},confirmLogout(){this.$store.dispatch("auth/logout"),this.$router.push({name:"Login"}),this.showDialog=!1}}};var j=Object.assign(N,{setup(e){const t=localStorage.getItem("user"),r=(0,i.iH)(t?JSON.parse(t):{firstName:"",lastName:"",groups:[]}),o=e=>{const t=Array.isArray(e)?e:[e];return t.some((e=>r.value.groups.includes(e)))},b=(0,n.Fl)((()=>{const e=[["瀏覽計畫進度","mdi-eye","Browse_Progress"]];return o(["admin"])&&e.unshift(["填寫計畫進度","mdi-pencil","Fillin_Progress"]),o(["admin","manager","power_user","user","test"])&&e.push(["瀏覽總體進度","mdi-view-dashboard","Browse_Master_Progress"]),e})),N=(0,n.Fl)((()=>{const e=[["瀏覽文件進度","mdi-file-eye-outline","View_File_Progress"]];return e})),j=(0,n.Fl)((()=>{const e=[["查詢紀錄","mdi-magnify","Search_Meeting_Record"]];return o("admin")&&e.unshift(["上傳記錄","mdi-upload","Upload_Meeting_Record"]),e})),S=(0,n.Fl)((()=>{const e=[["計畫列表","mdi-format-list-bulleted","Plan_List"]];return o("admin")&&e.unshift(["新增計畫","mdi-plus-box","Add_New_Plan"],["修改計畫","mdi-file-document-edit","Edit_Plan"]),e})),O=(0,n.Fl)((()=>{const e=[["總體計畫列表","mdi-view-list","Master_Plan_List"]];return o("admin")&&e.unshift(["新增計畫組合","mdi-playlist-plus","Add_Master_Plan"],["修改計畫組合","mdi-playlist-edit","Edit_Master_Plan"]),e}));return(e,t)=>((0,n.wg)(),(0,n.iD)("div",null,[(0,n.Wm)(y.C,{color:"grey-lighten-4",class:"px-6 py-8 v-sheet-custom"},{default:(0,n.w5)((()=>[k,(0,n.Wm)(g.o,{align:"center",style:{"column-gap":"0.5rem"}},{default:(0,n.w5)((()=>[(0,n.Wm)(s.V,{color:"grey-darken-2",size:"48"},{default:(0,n.w5)((()=>[(0,n.Wm)(h.t,{icon:"mdi-account"})])),_:1}),(0,n._)("h6",A,(0,a.zw)(r.value.firstName)+(0,a.zw)(r.value.lastName),1)])),_:1})])),_:1}),(0,n.Wm)(_.J),(0,n.Wm)(w.i,null,{default:(0,n.w5)((()=>[(0,n.Wm)(v.l,{"prepend-icon":"mdi-home",title:"首頁",to:{name:"home"},"active-class":"selected-item"}),(0,n.Wm)(P.N,{"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-progress-check"},e,{title:"進度管理"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(b.value,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{key:o,title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),128))])),_:1}),o(["admin","manager","power_user","test"])?((0,n.wg)(),(0,n.j4)(P.N,{key:0,"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-file-clock-outline"},e,{title:"文件管理"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(N.value,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{key:o,title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),128))])),_:1})):(0,n.kq)("",!0),o(["admin","manager","power_user","test"])?((0,n.wg)(),(0,n.j4)(P.N,{key:1,"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-file-document-outline"},e,{title:"會議記錄"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(j.value,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{key:o,title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),128))])),_:1})):(0,n.kq)("",!0),o(["admin","manager","power_user"])?((0,n.wg)(),(0,n.j4)(P.N,{key:2,"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-calendar-text"},e,{title:"計畫管理"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(S.value,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{key:o,title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),128))])),_:1})):(0,n.kq)("",!0),o(["admin","manager","power_user"])?((0,n.wg)(),(0,n.j4)(P.N,{key:3,"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-sitemap"},e,{title:"總體計劃管理"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(O.value,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),256))])),_:1})):(0,n.kq)("",!0),o(["admin","manager"])?((0,n.wg)(),(0,n.j4)(P.N,{key:4,"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-cog-outline"},e,{title:"系統設定"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(e.setting,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{key:o,title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),128))])),_:1})):(0,n.kq)("",!0),o(["admin"])?((0,n.wg)(),(0,n.j4)(P.N,{key:5,"no-action":"","sub-group":""},{activator:(0,n.w5)((({props:e})=>[(0,n.Wm)(v.l,(0,n.dG)({"prepend-icon":"mdi-help-circle-outline"},e,{title:"幫助與支持"}),null,16)])),default:(0,n.w5)((()=>[((0,n.wg)(!0),(0,n.iD)(n.HY,null,(0,n.Ko)(e.help,(([e,t,r],o)=>((0,n.wg)(),(0,n.j4)(v.l,{key:o,title:e,"prepend-icon":t,to:{name:r},"active-class":"selected-item"},null,8,["title","prepend-icon","to"])))),128))])),_:1})):(0,n.kq)("",!0),(0,n.Wm)(_.J),(0,n.Wm)(v.l,{"prepend-icon":"mdi-logout",title:"登出",onClick:e.logout},null,8,["onClick"])])),_:1}),(0,n.Wm)(p.B,{modelValue:e.showDialog,"onUpdate:modelValue":t[1]||(t[1]=t=>e.showDialog=t),persistent:"",width:"300"},{default:(0,n.w5)((()=>[(0,n.Wm)(l._,null,{default:(0,n.w5)((()=>[(0,n.Wm)(c.E,{class:"text-h5"},{default:(0,n.w5)((()=>[(0,n.Uk)("確認登出")])),_:1}),(0,n.Wm)(d.Z,null,{default:(0,n.w5)((()=>[(0,n.Uk)("即將登出，確定要登出嗎？")])),_:1}),(0,n.Wm)(m.h,null,{default:(0,n.w5)((()=>[(0,n.Wm)(f.C),(0,n.Wm)(u.T,{color:"blue darken-1",text:"",onClick:t[0]||(t[0]=t=>e.showDialog=!1)},{default:(0,n.w5)((()=>[(0,n.Uk)("取消")])),_:1}),(0,n.Wm)(u.T,{color:"blue darken-1",text:"",onClick:e.confirmLogout},{default:(0,n.w5)((()=>[(0,n.Uk)("確認")])),_:1},8,["onClick"])])),_:1})])),_:1})])),_:1},8,["modelValue"])]))}}),S=r(3744);const O=(0,S.Z)(j,[["__scopeId","data-v-30b55fc2"]]);var M=O,E=r(1457),q=r(2683),G=r(4520),V=r(4806),F=r(9289),D=r(3890);const L={name:"Navigation",components:{Navigation:M},created(){const e=localStorage.getItem("access_token");e&&this.$store.commit("auth/setToken",e)},computed:{isAuthenticated(){return this.$store.getters["auth/isAuthenticated"]}}};var B=Object.assign(L,{setup(e){const t=(0,i.iH)(!1),r=(0,i.iH)("工程進度系統");return(e,o)=>{const i=(0,n.up)("router-view");return(0,n.wg)(),(0,n.j4)(E.q,{id:"inspire"},{default:(0,n.w5)((()=>[e.isAuthenticated?((0,n.wg)(),(0,n.j4)(D.V,{key:0,modelValue:t.value,"onUpdate:modelValue":o[0]||(o[0]=e=>t.value=e),permanent:""},{default:(0,n.w5)((()=>[(0,n.Wm)(M)])),_:1},8,["modelValue"])):(0,n.kq)("",!0),(0,n.Wm)(q.L,{style:(0,a.j5)({backgroundImage:"linear-gradient(to left, #FFA726, #FFD54F)",color:"#5A5A5A"})},{default:(0,n.w5)((()=>[(0,n.Wm)(G.g,{onClick:o[1]||(o[1]=e=>t.value=!t.value)}),(0,n.Wm)(V.o,{class:"text-h5 font-weight-bold app-name-spacing"},{default:(0,n.w5)((()=>[(0,n.Uk)((0,a.zw)(r.value),1)])),_:1}),(0,n.Wm)(h.t,{class:"icon-behind-title"},{default:(0,n.w5)((()=>[(0,n.Uk)(" mdi-hammer-screwdriver ")])),_:1})])),_:1},8,["style"]),(0,n.Wm)(F.O,{style:{backgroundColor:"#f5f5f5"}},{default:(0,n.w5)((()=>[((0,n.wg)(),(0,n.j4)(n.Ob,null,[e.$route.meta.keepAlive?((0,n.wg)(),(0,n.j4)(i,{key:0})):(0,n.kq)("",!0)],1024)),e.$route.meta.keepAlive?(0,n.kq)("",!0):((0,n.wg)(),(0,n.j4)(i,{key:0}))])),_:1})])),_:1})}}});const C=B;var U=C,T=r(2201);function W(e){return()=>r(2513)(`./${e}.vue`)}function x(e){return()=>r(8205)(`./${e}.vue`)}function H(e){return()=>r(9913)(`./${e}.vue`)}function K(e){return()=>r(182)(`./${e}.vue`)}function I(e){return()=>r(374)(`./${e}.vue`)}function $(e){return()=>r(4971)(`./${e}.vue`)}const R=[{path:"/",name:"home",component:W("Home"),meta:{requiresAuth:!0}},{path:"/login",name:"Login",component:W("Login")},{path:"/No_Permission",name:"No_Permission",component:$("No_Permission")},{path:"/Fillin_Progress",name:"Fillin_Progress",component:W("Fillin_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Browse_Progress",name:"Browse_Progress",component:W("Browse_Progress"),meta:{requiresAuth:!0}},{path:"/View_File_Progress",name:"View_File_Progress",component:W("View_File_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin","manager","power_user","test"]}},{path:"/Browse_Master_Progress",name:"Browse_Master_Progress",component:W("Browse_Master_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin","manager","power_user","test"]}},{path:"/Upload_Meeting_Record",name:"Upload_Meeting_Record",component:W("Upload_Meeting_Record"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Search_Meeting_Record",name:"Search_Meeting_Record",component:W("Search_Meeting_Record"),meta:{requiresAuth:!0,allowedGroups:["admin","manager","power_user","test"]}},{path:"/Plan_List",name:"Plan_List",component:W("Plan_List"),meta:{requiresAuth:!0,allowedGroups:["admin","manager","power_user","test"]}},{path:"/Add_New_Plan",name:"Add_New_Plan",component:W("Add_New_Plan"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Edit_Plan",name:"Edit_Plan",component:W("Edit_Plan"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Master_Plan_List",name:"Master_Plan_List",component:W("Master_Plan_List"),meta:{requiresAuth:!0,allowedGroups:["admin","manager","power_user","test"]}},{path:"/Add_Master_Plan",name:"Add_Master_Plan",component:W("Add_Master_Plan"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Edit_Master_Plan",name:"Edit_Master_Plan",component:W("Edit_Master_Plan"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Notification_Settings",name:"Notification_Settings",component:W("Notification_Settings"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Account_Management",name:"Account_Management",component:W("Account_Management"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/User_Guide",name:"User_Guide",component:W("User_Guide"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/FAQ",name:"FAQ",component:W("FAQ"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Contact_Support",name:"Contact_Support",component:W("Contact_Support"),meta:{requiresAuth:!0,allowedGroups:["admin"]}},{path:"/Master_Progress",name:"Master_Progress",component:x("Master_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Project_Site_Overview",name:"Project_Site_Overview",component:H("Project_Site_Overview"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Management_Summary",name:"Management_Summary",component:H("Management_Summary"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/General_Loop_Photoelectric_Engineering",name:"General_Loop_Photoelectric_Engineering",component:H("General_Loop_Photoelectric_Engineering"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Loop_Photoelectric_Engineering",name:"Loop_Photoelectric_Engineering",component:H("Loop_Photoelectric_Engineering"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Project_PV",name:"Project_PV",component:H("Project_PV"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Project_PV",name:"Project_PV",component:H("Project_PV"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Project_Breeding",name:"Project_Breeding",component:H("Project_Breeding"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Powerline_228KV_Details",name:"Powerline_228KV_Details",component:H("Powerline_228KV_Details"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Electricity_Application_Process",name:"Electricity_Application_Process",component:H("Electricity_Application_Process"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/High-Voltage-161KV-Info",name:"High-Voltage-161KV-Info",component:H("High-Voltage-161KV-Info"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/Booster_Station_Progress",name:"Booster_Station_Progress",component:H("Booster_Station_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/File_Progress",name:"File_Progress",component:K("File_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","manager","test"]}},{path:"/PV_Progress",name:"PV_Progress",component:I("PV_Progress"),meta:{requiresAuth:!0,allowedGroups:["admin","power_user","user","test"]}},{path:"/:pathMatch(.*)*",name:"404NotFound",component:W("404NotFound")}],z=(0,T.p7)({history:(0,T.PO)("/"),routes:R});z.beforeEach((e=>{const t=localStorage.getItem("access_token"),r=localStorage.getItem("user"),o=r?JSON.parse(r):null,n=e.matched.some((e=>e.meta.requiresAuth));if(n&&!t)return{name:"Login",query:{redirect:e.fullPath}};if(n&&t&&o){const t=e.meta.allowedGroups||[],r=Array.isArray(o.groups)?o.groups:[o.group],n=0===t.length||r.some((e=>t.includes(e)));if(!n)return{name:"No_Permission"}}}));var Y=z,Z=r(3907),J={namespaced:!0,state:{accessToken:null},getters:{isAuthenticated(e){return!!e.accessToken}},mutations:{setToken(e,t){e.accessToken=t},clearToken(e){e.accessToken=null,localStorage.clear()}},actions:{login({commit:e},t){e("setToken",t),localStorage.setItem("access_token",t)},logout({commit:e}){e("clearToken")}}};function Q(){const e=localStorage.getItem("user");try{return e?JSON.parse(e):null}catch(t){return console.error("Error parsing user data from localStorage:",t),null}}const X=(0,Z.MT)({modules:{auth:J},state:{user:Q()||{username:null,firstName:null,lastName:null,email:null,isStaff:null,title:null,department:null,isActive:null,groups:[]}},getters:{getUser(e){return e.user}},mutations:{setUser(e,t){e.user={username:t.username||null,firstName:t.firstName||null,lastName:t.lastName||null,email:t.email||null,isStaff:t.isStaff||null,isActive:t.isActive||null,groups:t.groups||[]},localStorage.setItem("user",JSON.stringify(e.user))}},actions:{setUser({commit:e},t){e("setUser",t)}}});var ee=X,te=r(6153),re=r(5603),oe=(r(6767),r(1291)),ne=r(2929),ae=r(6300),ie=r(2346),se=r(1251),ue=r(8145),le=r(9812);const ce={defaultSet:"mdi",aliases:se.j,sets:{mdi:se.t}},de=(0,oe.Rd)({components:{...ne,...ie},date:{adapter:ue.C},locale:{locale:"zhHant",fallback:"zhHant",messages:{zhHant:le.Z}},directives:ae,icons:ce,theme:{defaultTheme:"myCustomTheme",themes:{myCustomTheme:{dark:!1,colors:{primary:"#0984e3",secondary:"#FB8C00",pvgreen:"#00b894",breeding:"#0984e3"}}}}}),me=(0,o.ri)(U);me.use(Y),me.use(ee),me.use(de),me.component("VueDatePicker",te.Z),me.config.productionTip=!1,me.config.devtools=!0,me.config.globalProperties.$http=re.Z,me.mount("#app")},8205:function(e,t,r){var o={"./Master_Progress.vue":[4259,541,393,110]};function n(e){if(!r.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],n=t[0];return Promise.all(t.slice(1).map(r.e)).then((function(){return r(n)}))}n.keys=function(){return Object.keys(o)},n.id=8205,e.exports=n},9913:function(e,t,r){var o={"./Booster_Station_Progress.vue":[7367,367],"./Electricity_Application_Process.vue":[3369,369],"./General_Loop_Photoelectric_Engineering.vue":[8501,541,606,818],"./High-Voltage-161KV-Info.vue":[1683,541,606,893],"./Loop_Photoelectric_Engineering.vue":[7148,541,713,35],"./Management_Summary.vue":[9590,541,393,329],"./Powerline_228KV_Details.vue":[448,541,606,857],"./Powerline_228KV_Details_copy.vue":[4746,541,606,599],"./Project_Breeding.vue":[3796,541,713,483],"./Project_PV.vue":[849,541,713,114],"./Project_Site_Overview.vue":[3930,930]};function n(e){if(!r.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],n=t[0];return Promise.all(t.slice(1).map(r.e)).then((function(){return r(n)}))}n.keys=function(){return Object.keys(o)},n.id=9913,e.exports=n},374:function(e,t,r){var o={"./PV_Progress.vue":[9683,683]};function n(e){if(!r.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],n=t[0];return r.e(t[1]).then((function(){return r(n)}))}n.keys=function(){return Object.keys(o)},n.id=374,e.exports=n},182:function(e,t,r){var o={"./File_Progress.vue":[1426,426]};function n(e){if(!r.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],n=t[0];return r.e(t[1]).then((function(){return r(n)}))}n.keys=function(){return Object.keys(o)},n.id=182,e.exports=n},4971:function(e,t,r){var o={"./Development.vue":[7963,963],"./No_Permission.vue":[1177,177]};function n(e){if(!r.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],n=t[0];return r.e(t[1]).then((function(){return r(n)}))}n.keys=function(){return Object.keys(o)},n.id=4971,e.exports=n},2513:function(e,t,r){var o={"./404NotFound.vue":[5672,672],"./Add_New_Plan.vue":[6331,331],"./Browse_Master_Progress.vue":[6245,245],"./Browse_Progress.vue":[5869,869],"./Browsemasterprogress/Master_Progress.vue":[4259,541,393,110],"./Browseprogress/Booster_Station_Progress.vue":[7367,367],"./Browseprogress/Electricity_Application_Process.vue":[3369,369],"./Browseprogress/General_Loop_Photoelectric_Engineering.vue":[8501,541,606,818],"./Browseprogress/High-Voltage-161KV-Info.vue":[1683,541,606,893],"./Browseprogress/Loop_Photoelectric_Engineering.vue":[7148,541,713,35],"./Browseprogress/Management_Summary.vue":[9590,541,393,329],"./Browseprogress/Powerline_228KV_Details.vue":[448,541,606,857],"./Browseprogress/Powerline_228KV_Details_copy.vue":[4746,541,606,599],"./Browseprogress/Project_Breeding.vue":[3796,541,713,483],"./Browseprogress/Project_PV.vue":[849,541,713,114],"./Browseprogress/Project_Site_Overview.vue":[3930,930],"./Edit_Plan.vue":[2018,18],"./Fillin_Progress.vue":[3832,832],"./Fillin_Project_Progress.vue":[1099,497,729],"./Home.vue":[2232,232],"./Login.vue":[8372,372],"./Master_Plan_List.vue":[4702,828],"./Plan_List.vue":[7170,170],"./Progress/PV_Progress.vue":[9683,683],"./Search_Meeting_Record.vue":[9023,23],"./Test.vue":[8223,497,841],"./Upload_Meeting_Record.vue":[8526,526],"./View_File_Progress.vue":[2260,260],"./View_File_Progress_copy.vue":[4455,455],"./Viewfileprogress/File_Progress.vue":[1426,426],"./tools/Development.vue":[7963,963],"./tools/No_Permission.vue":[1177,177]};function n(e){if(!r.o(o,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=o[e],n=t[0];return Promise.all(t.slice(1).map(r.e)).then((function(){return r(n)}))}n.keys=function(){return Object.keys(o)},n.id=2513,e.exports=n}},t={};function r(o){var n=t[o];if(void 0!==n)return n.exports;var a=t[o]={exports:{}};return e[o].call(a.exports,a,a.exports,r),a.exports}r.m=e,function(){var e=[];r.O=function(t,o,n,a){if(!o){var i=1/0;for(c=0;c<e.length;c++){o=e[c][0],n=e[c][1],a=e[c][2];for(var s=!0,u=0;u<o.length;u++)(!1&a||i>=a)&&Object.keys(r.O).every((function(e){return r.O[e](o[u])}))?o.splice(u--,1):(s=!1,a<i&&(i=a));if(s){e.splice(c--,1);var l=n();void 0!==l&&(t=l)}}return t}a=a||0;for(var c=e.length;c>0&&e[c-1][2]>a;c--)e[c]=e[c-1];e[c]=[o,n,a]}}(),function(){r.d=function(e,t){for(var o in t)r.o(t,o)&&!r.o(e,o)&&Object.defineProperty(e,o,{enumerable:!0,get:t[o]})}}(),function(){r.f={},r.e=function(e){return Promise.all(Object.keys(r.f).reduce((function(t,o){return r.f[o](e,t),t}),[]))}}(),function(){r.u=function(e){return"static/js/"+e+"."+{18:"886e6baf",23:"4232e4e5",35:"1abd79dc",110:"05d075cc",114:"faf7f5e0",170:"ad4d1488",177:"dbfd3829",232:"aaed7560",245:"f0b9d177",260:"9261df29",329:"994bd114",331:"c8e2369a",367:"bead2f82",369:"11346268",372:"fb97dfa2",393:"403c422f",426:"2e7c6919",455:"45752d53",483:"8e0d4c36",497:"a298fee1",526:"7dde3868",541:"e443713a",599:"241cf2e3",606:"f2dcee72",672:"f8a52bc7",683:"dc2dc5f0",713:"d96ea2fa",729:"1862368d",818:"97d0e691",828:"6aa90f9b",832:"cc14520a",841:"9cef5a0f",857:"ff712797",869:"3578a863",893:"e0a4be37",930:"11047fc7",963:"210d8b11"}[e]+".js"}}(),function(){r.miniCssF=function(e){return"static/css/"+e+"."+{18:"0d3fe6d2",23:"09574690",35:"60fbebb7",110:"605fba90",114:"171eed31",170:"0d3fe6d2",177:"67959fe6",232:"451272bd",245:"36229614",260:"3ee8752d",329:"79642c86",331:"0d3fe6d2",369:"38aeb2d1",372:"23c7d01b",426:"453f7443",455:"27ca9879",483:"04e2d7ae",526:"0d3fe6d2",599:"013c7e54",683:"f7fc10f2",729:"2fcce5fb",818:"e95b4f17",828:"0d3fe6d2",832:"72a53885",841:"96f2fd37",857:"8c663019",869:"2ed23989",893:"bd5b0781",930:"572cfd62",963:"0d3fe6d2"}[e]+".css"}}(),function(){r.g=function(){if("object"===typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(e){if("object"===typeof window)return window}}()}(),function(){r.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)}}(),function(){var e={},t="frontend:";r.l=function(o,n,a,i){if(e[o])e[o].push(n);else{var s,u;if(void 0!==a)for(var l=document.getElementsByTagName("script"),c=0;c<l.length;c++){var d=l[c];if(d.getAttribute("src")==o||d.getAttribute("data-webpack")==t+a){s=d;break}}s||(u=!0,s=document.createElement("script"),s.charset="utf-8",s.timeout=120,r.nc&&s.setAttribute("nonce",r.nc),s.setAttribute("data-webpack",t+a),s.src=o),e[o]=[n];var m=function(t,r){s.onerror=s.onload=null,clearTimeout(p);var n=e[o];if(delete e[o],s.parentNode&&s.parentNode.removeChild(s),n&&n.forEach((function(e){return e(r)})),t)return t(r)},p=setTimeout(m.bind(null,void 0,{type:"timeout",target:s}),12e4);s.onerror=m.bind(null,s.onerror),s.onload=m.bind(null,s.onload),u&&document.head.appendChild(s)}}}(),function(){r.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})}}(),function(){r.p="/"}(),function(){if("undefined"!==typeof document){var e=function(e,t,r,o,n){var a=document.createElement("link");a.rel="stylesheet",a.type="text/css";var i=function(r){if(a.onerror=a.onload=null,"load"===r.type)o();else{var i=r&&("load"===r.type?"missing":r.type),s=r&&r.target&&r.target.href||t,u=new Error("Loading CSS chunk "+e+" failed.\n("+s+")");u.code="CSS_CHUNK_LOAD_FAILED",u.type=i,u.request=s,a.parentNode&&a.parentNode.removeChild(a),n(u)}};return a.onerror=a.onload=i,a.href=t,r?r.parentNode.insertBefore(a,r.nextSibling):document.head.appendChild(a),a},t=function(e,t){for(var r=document.getElementsByTagName("link"),o=0;o<r.length;o++){var n=r[o],a=n.getAttribute("data-href")||n.getAttribute("href");if("stylesheet"===n.rel&&(a===e||a===t))return n}var i=document.getElementsByTagName("style");for(o=0;o<i.length;o++){n=i[o],a=n.getAttribute("data-href");if(a===e||a===t)return n}},o=function(o){return new Promise((function(n,a){var i=r.miniCssF(o),s=r.p+i;if(t(i,s))return n();e(o,s,null,n,a)}))},n={143:0};r.f.miniCss=function(e,t){var r={18:1,23:1,35:1,110:1,114:1,170:1,177:1,232:1,245:1,260:1,329:1,331:1,369:1,372:1,426:1,455:1,483:1,526:1,599:1,683:1,729:1,818:1,828:1,832:1,841:1,857:1,869:1,893:1,930:1,963:1};n[e]?t.push(n[e]):0!==n[e]&&r[e]&&t.push(n[e]=o(e).then((function(){n[e]=0}),(function(t){throw delete n[e],t})))}}}(),function(){var e={143:0};r.f.j=function(t,o){var n=r.o(e,t)?e[t]:void 0;if(0!==n)if(n)o.push(n[2]);else{var a=new Promise((function(r,o){n=e[t]=[r,o]}));o.push(n[2]=a);var i=r.p+r.u(t),s=new Error,u=function(o){if(r.o(e,t)&&(n=e[t],0!==n&&(e[t]=void 0),n)){var a=o&&("load"===o.type?"missing":o.type),i=o&&o.target&&o.target.src;s.message="Loading chunk "+t+" failed.\n("+a+": "+i+")",s.name="ChunkLoadError",s.type=a,s.request=i,n[1](s)}};r.l(i,u,"chunk-"+t,t)}},r.O.j=function(t){return 0===e[t]};var t=function(t,o){var n,a,i=o[0],s=o[1],u=o[2],l=0;if(i.some((function(t){return 0!==e[t]}))){for(n in s)r.o(s,n)&&(r.m[n]=s[n]);if(u)var c=u(r)}for(t&&t(o);l<i.length;l++)a=i[l],r.o(e,a)&&e[a]&&e[a][0](),e[a]=0;return r.O(c)},o=self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[];o.forEach(t.bind(null,0)),o.push=t.bind(null,o.push.bind(o))}();var o=r.O(void 0,[998],(function(){return r(4437)}));o=r.O(o)})();
//# sourceMappingURL=app.27068d60.js.c23108561113.map