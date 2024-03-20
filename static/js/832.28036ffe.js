"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[832],{9022:function(e,t,o){var r=o(5121);const a=r.Z.create({baseURL:"/",headers:{"Content-Type":"application/json"}});a.interceptors.request.use((e=>{const t=localStorage.getItem("token");return t&&(e.headers.Authorization=`Bearer ${t}`),e}),(e=>(console.error("Request error:",e),Promise.reject(e)))),a.interceptors.response.use((e=>e),(e=>(e.response&&401===e.response.status&&(window.location.href="/login"),alert(`錯誤提醒: ${e.message},請截圖回報管理人員`),Promise.reject(e)))),t.Z=a},440:function(e,t,o){o.d(t,{ZQ:function(){return l},bl:function(){return c},dc:function(){return n},m0:function(){return s},z:function(){return a}});var r=o(9022);const a=()=>r.Z.get("/api/v1/meetingrecord/"),n=()=>r.Z.get("/api/v1/fileprogress/"),l=()=>r.Z.get("/api/v1/plans/"),c=()=>r.Z.get("/api/v1/projects/"),s=e=>r.Z.get(`/api/v1/project-loops-by-project/${e}/`)},3832:function(e,t,o){o.r(t),o.d(t,{default:function(){return V}});var r=o(6252),a=o(3577),n=o(9095),l=o(5215),c=o(7695),s=o(6334),i=o(7506),d=o(1669),u=o(9003),m=o(3379),p=o(7737),f=o(8069);const g=e=>((0,r.dD)("data-v-83ab667a"),e=e(),(0,r.Cn)(),e),j={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},_=g((()=>(0,r._)("span",{class:"font-weight-bold ml-2"},"填寫計畫進度：",-1))),P=g((()=>(0,r._)("span",{class:"ml-1 note-span"},"※在下方選擇一項計畫後，才會顯示計畫內容",-1))),w={class:"mb-3",style:{"padding-left":"40px",display:"flex","align-items":"center"}},h=g((()=>(0,r._)("span",{class:"font-weight-bold ml-2"},"選擇計畫：",-1))),b=g((()=>(0,r._)("p",null,"此計畫沒有其他專案項目。",-1)));function k(e,t,o,g,k,v){return(0,r.wg)(),(0,r.j4)(d.K,null,{default:(0,r.w5)((()=>[(0,r._)("div",j,[(0,r.Wm)(p.t,{color:"blue"},{default:(0,r.w5)((()=>[(0,r.Uk)("mdi-chevron-right-box")])),_:1}),_,P]),(0,r._)("div",w,[(0,r.Wm)(p.t,{color:"orange"},{default:(0,r.w5)((()=>[(0,r.Uk)("mdi-chevron-right-box")])),_:1}),h,(0,r.Wm)(f.rL,{label:"選擇欲瀏覽的計畫",variant:"underlined",class:"ml-3",items:k.plan,"item-title":"plan_name","item-value":"plan_id",modelValue:k.selectedPlan,"onUpdate:modelValue":t[0]||(t[0]=e=>k.selectedPlan=e),style:{"flex-grow":"1"}},null,8,["items","modelValue"])]),(0,r._)("div",null,[k.selectedPlan&&v.filteredProjects.length>0?((0,r.wg)(),(0,r.j4)(u.o,{key:0,class:"project-cards-row"},{default:(0,r.w5)((()=>[((0,r.wg)(!0),(0,r.iD)(r.HY,null,(0,r.Ko)(v.filteredProjects,(e=>((0,r.wg)(),(0,r.j4)(m.D,{key:e.project_id,cols:"12",sm:"6",md:"4"},{default:(0,r.w5)((()=>[(0,r.Wm)(l._,{color:v.getProjectCardInfo(e.project_name).color,class:"project-card",dark:""},{default:(0,r.w5)((()=>[(0,r.Wm)(c.E,{class:"d-flex font-weight-bold flex-column align-items-center justify-content-center card-title-custom"},{default:(0,r.w5)((()=>[(0,r.Wm)(p.t,{icon:v.getProjectCardInfo(e.project_name).icon,class:"icon-background mb-2",color:v.getProjectCardInfo(e.project_name).color},null,8,["icon","color"]),(0,r.Uk)(" "+(0,a.zw)(v.getProjectCardInfo(e.project_name).title),1)])),_:2},1024),(0,r.Wm)(i.J),(0,r.Wm)(s.h,{class:"justify-end"},{default:(0,r.w5)((()=>["案場"===e.project_name?((0,r.wg)(),(0,r.iD)(r.HY,{key:0},[(0,r.Wm)(n.T,{color:v.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>v.navigateToProject(v.getProjectCardInfo(e.project_name).routeName,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("紀錄PV進度")])),_:2},1032,["color","onClick"]),(0,r.Wm)(n.T,{color:v.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>v.navigateToProject(v.getProjectCardInfo(e.project_name).routeName1,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("紀錄養殖進度")])),_:2},1032,["color","onClick"])],64)):((0,r.wg)(),(0,r.j4)(n.T,{key:1,color:v.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>v.navigateToProject(v.getProjectCardInfo(e.project_name).routeName,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("紀錄進度")])),_:2},1032,["color","onClick"]))])),_:2},1024)])),_:2},1032,["color"])])),_:2},1024)))),128))])),_:1})):k.selectedPlan?((0,r.wg)(),(0,r.j4)(u.o,{key:1},{default:(0,r.w5)((()=>[b])),_:1})):(0,r.kq)("",!0)])])),_:1})}o(560);var v=o(440),C={data(){return{plan:[],project:[],selectedPlan:null,currentDialog:null}},computed:{filteredProjects(){return this.selectedPlan?this.project.filter((e=>e.plan_id===this.selectedPlan)):[]}},async created(){await this.fetchData()},methods:{navigateToProject(e,t){console.log("api response:",this.selectedPlan),this.$router.push({name:e,query:{Plan:this.selectedPlan,Project:t}})},async fetchData(){try{const e=await(0,v.ZQ)(),t=await(0,v.bl)();console.log("api response:",e.data),console.log("api response:",t.data),this.plan=e.data,this.project=t.data}catch(e){}},getProjectCardInfo(e){const t={"案場":{title:"案場工程進度",color:"#00b894",icon:"mdi-pier",routeName:"PV_Progress",routeName1:"Project_Breeding"},"22.8KV":{title:"22.8KV工程進度",color:"#a29bfe",icon:"mdi-axis-arrow",routeName:"Powerline_228KV_Details"},"電業申辦":{title:"電業申辦進度",color:"#FF6F00",icon:"mdi-flash-alert",routeName:"Electricity_Application_Process"},"161KV":{title:"161KV工程進度",color:"#ff7675",icon:"mdi-alpha-t-box-outline",routeName:"High-Voltage-161KV-Info"},"升壓站":{title:"升壓站工程進度",color:"#38ada9",icon:"mdi-sprinkler-variant",routeName:"Booster_Station_Progress"}};return t[e]||{}}}},y=o(3744);const I=(0,y.Z)(C,[["render",k],["__scopeId","data-v-83ab667a"]]);var V=I}}]);
//# sourceMappingURL=832.28036ffe.js.map